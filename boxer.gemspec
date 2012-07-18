require File.expand_path("../lib/boxer/version", __FILE__)

ENABLE_C_EXTENSION = false

Gem::Specification.new do |s|
	s.name        = "boxer"
	s.version     = Boxer::VERSION
	s.date        = '2012-07-17'
	s.platform    = Gem::Platform::RUBY
	s.authors     = ["Raven"]
	s.email       = 'AvantFlux.Raven@gmail.com'
	s.homepage    = 'https://github.com/RavensKrag'
	
	s.summary     = "OpenGL widget library for games based on the CSS box model."
	s.description = <<EOS
	Many subtle but powerful differences between this library and the CSS box model
	are due to the fact that HTML is designed around the layout of text, while this
	library is designed for positioning relative to images.
EOS
	
	s.required_rubygems_version = ">= 1.3.6"
	
	# lol - required for validation
	#~ s.rubyforge_project         = "newgem"
	
	# If you have other dependencies, add them here
	 s.add_dependency "chipmunk", "~> 5.3.4.5"
	
	if ENABLE_C_EXTENSION
		s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
		s.extensions = ['ext/automaton/extconf.rb']
	else
		s.files = Dir["{lib}/**/*.rb", "bin/*", "{ext}/**/*.{c,h,rb}", "LICENSE", "*.md"]
	end
	puts s.files
	
	s.require_path = 'lib'
	
	# If you need an executable, add it here
	# s.executables = ["newgem"]
end
