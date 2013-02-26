module Easy
  module Bin

    class Gonna

      attr_accessor :agent

      def initialize (verbose=false)
        # Create a new mechanize object
        if verbose 
          @agent = Mechanize.new { |a| a.log = Logger.new(STDERR) }
        else
          @agent = Mechanize.new 
        end  

        agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        agent.user_agent_alias = 'Windows Mozilla'
        agent.keep_alive = 'enable'
      end
  
      def login(username, password)
        page = @agent.get('https://example.com/index.local')

        form = page.forms[0] # Select the first form
        form["login"] = username
        form["password"] = password
    
        # Submit the form
        page = form.submit 
      end
  
      def search(q)
        page = @agent.get("https://example.com/index.local?ID=#{agent.agent.cookie_jar.jar["example.com"]["/"]["ID"].value}")
    
        form = page.forms[0]
        form["q"] = q
    
        form.submit  
        page = agent.get("https://example.com/index.local?do=results&Page=100")
    
        parseit(page.body)
      end
  
      def show_session
        @agent.agent.cookie_jar.jar["example.com"]["/"]["SID"].value
      end

      private 

      def parseit(body)

        fragment = Nokogiri::HTML(body)

        fragment.xpath(".//a[@title='view']").each do |link|
         href = link.attribute("onclick")
         link.set_attribute("href", href.to_s.split("'")[1]) 
         link.remove_attribute("onclick")
        end
   
        [".//object",".//td[@class='col2 border']"].each do |dropxpath|
          fragment.xpath(dropxpath).each do |obj|
            obj.remove
          end
        end 

        return fragment

      end

    end

  end
end
