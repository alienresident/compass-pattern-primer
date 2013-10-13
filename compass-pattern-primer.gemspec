# Replace extension with the name of your extension's .rb file
require './lib/compass-pattern-primer'

Gem::Specification.new do |s|
  # Release Specific Information
  #  Replace Extension with the name you used in your extension.rb
  #   in the mdodule with version and date.
  s.version = Compass_Pattern_Primer::VERSION
  s.date = Compass_Pattern_Primer::DATE

  # Gem Details
  # Replace "extension" with the name of your extension
  s.name = "compass-pattern-primer"
  s.rubyforge_project = "compass-pattern-primer"
  # Description of your extension
  s.description = %q{A Compass extension to help create style guides}
  # A summary of your Compass extension. Should be different than Description
  s.summary = %q{An easy to use system to build a website's styleguide. It's based off of Jeremy Keith's Pattern Primer.}
  # The names of the author(s) of the extension.
  # If more than one author, comma separate inside of the brackets
  s.authors = ["Mark Reilly"]
  # The email address(es) of the author(s)
  # If more than one author, comma separate inside of the brackets
  s.email = ["mark@alienresident.net"]
  # URL of the extension
  s.homepage = "https://rubygems.org/gems/compass-pattern-primer"

  # Gem Files
  # These are the files to be included in your Compass extension.
  # Uncomment those that you use.

  # README file
  s.files = ["README.md"]

  # CHANGELOG
  s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("sass",      [">=3.2.9"])
  s.add_dependency("compass",   [">= 0.12.2"])
  s.add_dependency("toolkit",   [">= 1.3.5"])
  s.add_dependency("compass_formalize",   [">= 0.0.5"])
  s.add_dependency("compass-normalize",   [">= 1.4.3"])
  s.add_dependency("meyer-reset",   [">= 2.0.0"])
  s.licenses = ['MIT', 'GPL-3']
end
