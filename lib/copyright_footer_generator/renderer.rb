module CopyrightFooterGenerator
  class Renderer
		def self.copyright name,msg
			#puts "#{name} and #{msg}"
			"&copy; #{ Time.now.year } | <b>#{name}</b> #{msg}".html_safe
		end
	end
end