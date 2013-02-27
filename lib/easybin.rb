#STDLIBS
require 'rubygems'

# Rubygems
require 'blankblank'

module Easy
  module Bin
    $:.unshift(File.dirname(__FILE__))
    
    XX="myconstant"
    
    require "easybin/main"
    require "easybin/version"
    require "easybin/gonna"
    
  end 
end
