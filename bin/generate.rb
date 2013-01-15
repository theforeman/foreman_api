#!/usr/bin/env ruby

require 'optparse'
$:.unshift(File.expand_path("../../lib", __FILE__))

options = {:foreman_apidoc_url => "http://localhost:3000/apidoc"}

OptionParser.new do |opts|
  opts.banner = <<BANNER
Script for generating API bindings for Foreman API from Apipie docs.
BANNER
  opts.on("-u", "--url FOREMAN_APIDOC_URL", "By default #{options[:foreman_apidoc_url]}") do |val|
    options[:foreman_apidoc_url] = val
  end

  opts.on("-h", "--help") do
    puts opts
    exit
  end
end.parse!

require 'foreman_api/generator/base.rb'

options[:foreman_apidoc_url].sub!(/\Z\//,"")

ForemanApi::Generator::Base.start(options[:foreman_apidoc_url])
