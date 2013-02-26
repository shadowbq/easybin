require 'optparse'
require 'easybin'


module Easy
  module Bin
    class CLI

      def self.invoke
        self.new
      end
    
      def initialize  
        options = {}
      
        options[:example] = true
        options[:foobar] = true
      
        options[:raw] = Easy::Bin::Defaults::Raw
      
        opt_parser = OptionParser.new do |opt|
          opt.banner = "Usage: gonna [OPTIONS] \"search string\""
          opt.separator ""
        
          opt.on("-e","--[no-]example","Example do it","  Default: #{options[:example]}") do |value|
            options[:example] = value
          end
      
          opt.on("-x", "--xxx", "XXXXX") do 
            options[:x] = true
          end
        
          opt.separator "Options::"
        
          opt.on("-v", "--verbose", "Run verbosely") do 
            options[:verbose] = true
          end
        
          opt.on_tail("-h","--help","Display this screen") do
            puts opt_parser
            exit 0
          end

        end

        #Verify the options
        begin
          raise unless ARGV.size > 0
          opt_parser.parse!
  
        #If options fail display help
        #rescue Exception => e  
        #  puts e.message  
        #  puts e.backtrace.inspect  
        rescue 
          puts opt_parser
          exit
        end
    
        username = ARGV[0]
        password = ARGV[1]
      
        if options[:verbose]
          puts "++++++++++++++++++++++++++++++++++++++++++++++"
          puts "+ Easybin text here!"
          puts "++++++++++++++++++++++++++++++++++++++++++++++\n"
        end
      
        session = Easy::Bin::Gonna.new
        session.login(username, password)

        puts session.search("example.com")

      end
      
    end #Class
    
  end #module
end #module
