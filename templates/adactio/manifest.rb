# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!

file 'config.rb', :like => :file, :to => "config.rb"

# Stylesheet Import
file '../shared/sass/global-adactio.scss', :like => :stylesheet, :to => 'global.scss'

# Partials
file '../shared/sass/partials/_browsers.scss', :like => :stylesheet, :to => 'partials/_browsers.scss'
file '../shared/sass/partials/_colors.scss', :like => :stylesheet, :to => 'partials/_colors.scss'
file '../shared/sass/partials/_extendables.scss', :like => :stylesheet, :to => 'partials/_extendables.scss'
file '../shared/sass/partials/_functions.scss', :like => :stylesheet, :to => 'partials/_functions.scss'
file '../shared/sass/partials/_mixins.scss', :like => :stylesheet, :to => 'partials/_mixins.scss'
file '../shared/sass/partials/_variables-adactio.scss', :like => :stylesheet, :to => 'partials/_variables.scss'

# Variables
file '../shared/sass/partials/variables/theme/_overrides.scss', :like => :stylesheet, :to => 'partials/variables/_overrides.scss'
  
# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

# HTML Import
file "../shared/patterns/blockquote.html" , :like => :html, :to => "patterns/blockquote.html"
file "../shared/patterns/feedback-error.html" , :like => :html, :to => "patterns/feedback-error.html"
file "../shared/patterns/feedback.html" , :like => :html, :to => "patterns/feedback.html"
file "../shared/patterns/form-buttons.html" , :like => :html, :to => "patterns/form-buttons.html"
file "../shared/patterns/form-checkbox.html" , :like => :html, :to => "patterns/form-checkbox.html"
file "../shared/patterns/form-email.html" , :like => :html, :to => "patterns/form-email.html"
file "../shared/patterns/form-number.html" , :like => :html, :to => "patterns/form-number.html"
file "../shared/patterns/form-select.html" , :like => :html, :to => "patterns/form-select.html"
file "../shared/patterns/form-text.html" , :like => :html, :to => "patterns/form-text.html"
file "../shared/patterns/form-textarea.html" , :like => :html, :to => "patterns/form-textarea.html"
file "../shared/patterns/form-url.html" , :like => :html, :to => "patterns/form-url.html"
file "../shared/patterns/heading-1.html" , :like => :html, :to => "patterns/heading-1.html"
file "../shared/patterns/heading-2.html" , :like => :html, :to => "patterns/heading-2.html"
file "../shared/patterns/heading-3.html" , :like => :html, :to => "patterns/heading-3.html"
file "../shared/patterns/heading-4.html" , :like => :html, :to => "patterns/heading-4.html"
file "../shared/patterns/heading-5.html" , :like => :html, :to => "patterns/heading-5.html"
file "../shared/patterns/heading-6.html" , :like => :html, :to => "patterns/heading-6.html"
file "../shared/patterns/list-ordered.html" , :like => :html, :to => "patterns/list-ordered.html"
file "../shared/patterns/list-unordered.html" , :like => :html, :to => "patterns/list-unordered.html"
file "../shared/patterns/pagination-first.html" , :like => :html, :to => "patterns/pagination-first.html"
file "../shared/patterns/pagination-last.html" , :like => :html, :to => "patterns/pagination-last.html"
file "../shared/patterns/pagination.html" , :like => :html, :to => "patterns/pagination.html"
file "../shared/patterns/text.html" , :like => :html, :to => "patterns/text.html"

# General File Import
# file 'README.md', :to => "README.md"
file "../shared/php/index.php", :to => "index.php"

# Compass Extension Help
help %Q{
  The best place for help is to read the documentation in Github: https://github.com/alienresident/compass-pattern-primer
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to Compass Pattern Primer!
  Documentation: https://github.com/alienresident/compass-pattern-primer
  Contact: mark@alienresident.net
}