#!/bin/env ruby
# -*- coding: utf-8 -*-
require 'rubygems'
require 'json'
require 'thor'
require 'thor/group'
require 'fileutils'
require 'active_support/inflector'
require 'active_support/core_ext/hash/indifferent_access'
require 'action_view'
require 'foreman_api/base'
require 'net/http'
require 'uri'
require 'pp'

module ForemanApi
  module Generator

    class Base < Thor::Group
      include Thor::Actions
      include ActionView::Helpers::SanitizeHelper

      attr_reader :doc, :resource, :resource_key

      def initialize(doc, *args)
        super
        @doc = doc.first
      end

      def self.source_root
        File.expand_path("../template", __FILE__)
      end

      def self.start(foreman_url)
        foreman_url = foreman_url.sub(/\.json\Z/,"")
        foreman_url << "/v#{ForemanApi::Base::API_VERSION}.json"
        response = Net::HTTP.get_response(URI.parse(foreman_url))
        unless response.code == "200"
          raise "Could not load data from #{foreman_url}"
        end
        body = response.body
        File.open(ForemanApi.doc_file, "w") { |f| f.write(body) }
        doc = JSON.load(body).with_indifferent_access
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

      def format_param_description(descr, prefix = ' ')
        unless descr.empty?
          prefix + strip_tags(descr).gsub(/\n/,' ').capitalize
        end
      end

      def all_params(method)
        all_params = method[:params].dup
        method[:apis].each do |api|
          ForemanApi::Base.params_in_path(api[:api_url]).each do |path_param|
            unless all_params.any? { |param| param['name'] == path_param }
              all_params << {'name' => path_param, 'expected_type' => 'object', 'description' => %[part of +#{api[:api_url]}+ path] }
            end
          end
        end
        return all_params
      end

      def prioritize_id(param)
        return "00" if param.upcase == 'ID'
        return "00#{param}" if param =~ /_id/i
        param
      end

    end
  end
end
