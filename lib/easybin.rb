#STDLIBS
require 'rubygems'

# Rubygems
require 'example'

module Easy
  module Bin
    $:.unshift(File.dirname(__FILE__))
    
    XX="myconstant"
    
    require "easybin/version"
    require "easybin/gonna"
  end 
end
