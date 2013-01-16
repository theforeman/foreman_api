#!/bin/env ruby
# -*- coding: utf-8 -*-
require 'rubygems'
require 'json'
require 'thor'
require 'thor/group'
require 'fileutils'
require 'active_support/inflector'
require 'active_support/core_ext/hash/indifferent_access'
require 'foreman_api/base'
require 'net/http'
require 'uri'

module ForemanApi
  module Generator

    class Base < Thor::Group
      include Thor::Actions

      attr_reader :doc, :resource, :resource_key

      def initialize(doc, *args)
        super
        @doc = doc.first
      end

      def self.source_root
        File.expand_path("../template", __FILE__)
      end

      def self.start(foreman_url)
        foreman_url << ".json" unless foreman_url.end_with?(".json")
        response = Net::HTTP.get_response(URI.parse(foreman_url))
        unless response.code == "200"
          raise "Could not load data from #{foreman_url}"
        end
        doc = JSON.load(response.body).with_indifferent_access
        destination = File.expand_path("../../../..", __FILE__)
        super([doc[:docs]], :destination_root => destination)
      end

      def generate
        doc[:resources].each do |key, resource|
          @resource_key, @resource = key, resource
          template("resource.rb.tt", "lib/foreman_api/resources/#{resource_name}.rb")
        end
      end

      protected

      def camelizer(string)
        string = string.sub(/^[a-z\d]*/) { $&.capitalize }
        string.gsub(/(?:_|(\/))([a-z\d]*)/i) { "#{$2.capitalize}" }
      end

      # Resource related helper methods:

      def resource_name
        resource[:name].gsub(/\s/, "_").downcase.singularize
      end

      def api(method)
        method[:apis].first
      end

      def validation(method)
        stringify = lambda do |object|
          case object
            when Hash
              clone = object.dup
              object.keys.each { |key| clone[key.to_s] = stringify[clone.delete(key)] }
              clone
            when Array
              object.map { |value| stringify[value] }
            else
              object
          end
        end
        ForemanApi::Base.construct_validation_hash(stringify[method])
      end
    end

  end
end
