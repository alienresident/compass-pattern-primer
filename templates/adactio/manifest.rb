# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!
file 'config.rb', :like => :file, :to => "config.rb"

# Stylesheet Import
file '../shared/sass/global-adactio.scss', :like => :stylesheet, :to => 'global.scss'

# Partials
file '../shared/sass/partials/_browsers.scss', :like => :stylesheet, :to => 'partials/_browsers.scss'
file '../shared/sass/partials/_extendables.scss', :like => :stylesheet, :to => 'partials/_extendables.scss'
file '../shared/sass/partials/_functions.scss', :like => :stylesheet, :to => 'partials/_functions.scss'
file '../shared/sass/partials/_mixins.scss', :like => :stylesheet, :to => 'partials/_mixins.scss'

# Chunks
file '../shared/sass/base/buttons/_buttons.scss' , :like => :stylesheet, :to => 'buttons/_buttons.scss'
file '../shared/sass/base/buttons/_buttons_extendables.scss' , :like => :stylesheet, :to => 'buttons/_buttons_extendables.scss'
file '../shared/sass/base/buttons/_buttons_variables.scss' , :like => :stylesheet, :to => 'buttons/_buttons_variables.scss'
file '../shared/sass/base/colors/_color_variables.scss' , :like => :stylesheet, :to => 'colors/_color_variables.scss'
file '../shared/sass/base/colors/_colors.scss' , :like => :stylesheet, :to => 'colors/_colors.scss'
file '../shared/sass/base/forms/_forms.scss' , :like => :stylesheet, :to => 'forms/_forms.scss'
file '../shared/sass/base/forms/_forms_extendables.scss' , :like => :stylesheet, :to => 'forms/_forms_extendables.scss'
file '../shared/sass/base/forms/_forms_variables.scss' , :like => :stylesheet, :to => 'forms/_forms_variables.scss'
file '../shared/sass/base/links/_links.scss' , :like => :stylesheet, :to => 'links/_links.scss'
file '../shared/sass/base/links/_links_variables.scss' , :like => :stylesheet, :to => 'links/_links_variables.scss'
file '../shared/sass/base/page/_page.scss' , :like => :stylesheet, :to => 'page/_page.scss'
file '../shared/sass/base/page/_page_variables.scss' , :like => :stylesheet, :to => 'page/_page_variables.scss'
file '../shared/sass/base/search/_search.scss' , :like => :stylesheet, :to => 'search/_search.scss'
file '../shared/sass/base/search/_search_variables.scss' , :like => :stylesheet, :to => 'search/_search_variables.scss'
file '../shared/sass/base/typography/_typography.scss' , :like => :stylesheet, :to => 'typography/_typography.scss'
file '../shared/sass/base/typography/_typography_variables.scss' , :like => :stylesheet, :to => 'typography/_typography_variables.scss'
file '../shared/sass/modules/controls/_controls.scss' , :like => :stylesheet, :to => 'controls/_controls.scss'
file '../shared/sass/modules/controls/_controls_extendables.scss' , :like => :stylesheet, :to => 'controls/_controls_extendables.scss'
file '../shared/sass/modules/controls/_controls_variables.scss' , :like => :stylesheet, :to => 'controls/_controls_variables.scss'
file '../shared/sass/modules/feedback/_feedback.scss' , :like => :stylesheet, :to => 'feedback/_feedback.scss'
file '../shared/sass/modules/feedback/_feedback_extendables.scss' , :like => :stylesheet, :to => 'feedback/_feedback_extendables.scss'
file '../shared/sass/modules/feedback/_feedback_variables.scss' , :like => :stylesheet, :to => 'feedback/_feedback_variables.scss'
file '../shared/sass/modules/options/_options.scss' , :like => :stylesheet, :to => 'options/_options.scss'
file '../shared/sass/modules/options/_options_extendables.scss' , :like => :stylesheet, :to => 'options/_options_extendables.scss'
file '../shared/sass/modules/options/_options_variables.scss' , :like => :stylesheet, :to => 'options/_options_variables.scss'
file '../shared/sass/modules/pagination/_pagination.scss' , :like => :stylesheet, :to => 'pagination/_pagination.scss'
file '../shared/sass/modules/pagination/_pagination_extendables.scss' , :like => :stylesheet, :to => 'pagination/_pagination_extendables.scss'
file '../shared/sass/modules/pagination/_pagination_variables.scss' , :like => :stylesheet, :to => 'pagination/_pagination_variables.scss'
  
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
file "../shared/php/adactio-pattern-primer.php", :to => "index.php"

# Compass Extension Help
help %Q{
  The best place for help is to read the documentation in Github: https://github.com/alienresident/compass-pattern-primer
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to Compass Pattern Primer!
  
  You have chosen to install the Adactio version of Compass Pattern Primer. You'll find a PHP file index.php in your project. It pulls in HTML snippets (patterns) from the patterns folder. They include the original Adactio patterns. Feel free to add your own patterns here. The Adactio version is (fairly) faithful to Jeremy Keith's original CSS.
  
  Documentation: https://github.com/alienresident/compass-pattern-primer
  Contact: mark@alienresident.net
}