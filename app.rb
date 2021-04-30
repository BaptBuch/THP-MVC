$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
require 'gossip'
require 'router'
require 'view'
require 'bundler'
Bundler.require

Router.new.perform