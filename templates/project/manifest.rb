# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!
file 'config.rb', :like => :file, :to => "config.rb" 

# Stylesheet Import
file '../shared/sass/global.scss', :like => :stylesheet, :to => 'global.scss'
# Stylesheet Import
file '../shared/sass/pattern-primer.scss', :like => :stylesheet, :to => 'pattern-primer.scss'

# Partials
file '../shared/sass/partials/_browsers.scss', :like => :stylesheet, :to => 'partials/_browsers.scss'
file '../shared/sass/partials/_extendables.scss', :like => :stylesheet, :to => 'partials/_extendables.scss'
file '../shared/sass/partials/_functions.scss', :like => :stylesheet, :to => 'partials/_functions.scss'
file '../shared/sass/partials/_mixins.scss', :like => :stylesheet, :to => 'partials/_mixins.scss'
file '../shared/sass/partials/_colors.scss', :like => :stylesheet, :to => 'partials/_colors.scss'
file '../shared/sass/_config.scss', :like => :stylesheet, :to => '_config.scss'


# SMACSS
file '../shared/sass/base/buttons/_buttons.scss' , :like => :stylesheet, :to => 'base/buttons/_buttons.scss'
file '../shared/sass/base/buttons/_buttons_extendables.scss' , :like => :stylesheet, :to => 'base/buttons/_buttons_extendables.scss'
file '../shared/sass/base/buttons/_buttons_variables.scss' , :like => :stylesheet, :to => 'base/buttons/_buttons_variables.scss'
file '../shared/sass/base/forms/_forms.scss' , :like => :stylesheet, :to => 'base/forms/_forms.scss'
file '../shared/sass/base/forms/_forms_extendables.scss' , :like => :stylesheet, :to => 'base/forms/_forms_extendables.scss'
file '../shared/sass/base/forms/_forms_variables.scss' , :like => :stylesheet, :to => 'base/forms/_forms_variables.scss'
file '../shared/sass/base/links/_links.scss' , :like => :stylesheet, :to => 'base/links/_links.scss'
file '../shared/sass/base/links/_links_variables.scss' , :like => :stylesheet, :to => 'base/links/_links_variables.scss'
file '../shared/sass/base/page/_page.scss' , :like => :stylesheet, :to => 'base/page/_page.scss'
file '../shared/sass/base/page/_page_variables.scss' , :like => :stylesheet, :to => 'base/page/_page_variables.scss'
file '../shared/sass/base/search/_search.scss' , :like => :stylesheet, :to => 'base/search/_search.scss'
file '../shared/sass/base/search/_search_variables.scss' , :like => :stylesheet, :to => 'base/search/_search_variables.scss'
file '../shared/sass/base/typography/_typography.scss' , :like => :stylesheet, :to => 'base/typography/_typography.scss'
file '../shared/sass/base/typography/_typography_variables.scss' , :like => :stylesheet, :to => 'base/typography/_typography_variables.scss'
file '../shared/sass/modules/controls/_controls.scss' , :like => :stylesheet, :to => 'modules/controls/_controls.scss'
file '../shared/sass/modules/controls/_controls_extendables.scss' , :like => :stylesheet, :to => 'modules/controls/_controls_extendables.scss'
file '../shared/sass/modules/controls/_controls_variables.scss' , :like => :stylesheet, :to => 'modules/controls/_controls_variables.scss'
file '../shared/sass/modules/feedback/_feedback.scss' , :like => :stylesheet, :to => 'modules/feedback/_feedback.scss'
file '../shared/sass/modules/feedback/_feedback_extendables.scss' , :like => :stylesheet, :to => 'modules/feedback/_feedback_extendables.scss'
file '../shared/sass/modules/feedback/_feedback_variables.scss' , :like => :stylesheet, :to => 'modules/feedback/_feedback_variables.scss'
file '../shared/sass/modules/options/_options.scss' , :like => :stylesheet, :to => 'modules/options/_options.scss'
file '../shared/sass/modules/options/_options_extendables.scss' , :like => :stylesheet, :to => 'modules/options/_options_extendables.scss'
file '../shared/sass/modules/options/_options_variables.scss' , :like => :stylesheet, :to => 'modules/options/_options_variables.scss'
file '../shared/sass/modules/pagination/_pagination.scss' , :like => :stylesheet, :to => 'modules/pagination/_pagination.scss'
file '../shared/sass/modules/pagination/_pagination_extendables.scss' , :like => :stylesheet, :to => 'modules/pagination/_pagination_extendables.scss'
file '../shared/sass/modules/pagination/_pagination_variables.scss' , :like => :stylesheet, :to => 'modules/pagination/_pagination_variables.scss'
file '../shared/sass/layout/page/_page.scss', :like => :stylesheet, :to => 'layout/page/_page.scss'
file '../shared/sass/state/header/_header.scss', :like => :stylesheet, :to => 'state/header/_header.scss'
file '../shared/sass/theme/page/_page.scss', :like => :stylesheet, :to => 'theme/page/_page.scss'  

# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

# HTML Import
file "../shared/patterns/blockquote.html" , :like => :html, :to => "patterns/01_blockquote.html"
file "../shared/patterns/colorguide.html" , :like => :html, :to => "patterns/04_colorguide.html"
file "../shared/patterns/feedback-error-new.html" , :like => :html, :to => "patterns/03_feedback-error.html"
file "../shared/patterns/feedback-warning.html" , :like => :html, :to => "patterns/03_feedback-warning.html"
file "../shared/patterns/feedback-new.html" , :like => :html, :to => "patterns/03_feedback.html"
file "../shared/patterns/form-buttons-active.html" , :like => :html, :to => "patterns/02_form-buttons-active.html"
file "../shared/patterns/form-buttons-all.html" , :like => :html, :to => "patterns/02_form-buttons-all.html"
file "../shared/patterns/form-buttons-cancel.html" , :like => :html, :to => "patterns/02_form-buttons-cancel.html"
file "../shared/patterns/form-buttons-disabled.html" , :like => :html, :to => "patterns/02_form-buttons-disabled.html"
file "../shared/patterns/form-buttons-new.html" , :like => :html, :to => "patterns/02_form-buttons.html"
file "../shared/patterns/form-checkbox.html" , :like => :html, :to => "patterns/02_form-checkbox.html"
file "../shared/patterns/form-email.html" , :like => :html, :to => "patterns/02_form-email.html"
file "../shared/patterns/form-number.html" , :like => :html, :to => "patterns/02_form-number.html"
file "../shared/patterns/form-select.html" , :like => :html, :to => "patterns/02_form-select.html"
file "../shared/patterns/form-text.html" , :like => :html, :to => "patterns/02_form-text.html"
file "../shared/patterns/form-textarea.html" , :like => :html, :to => "patterns/02_form-textarea.html"
file "../shared/patterns/form-url.html" , :like => :html, :to => "patterns/02_form-url.html"
file "../shared/patterns/headers.html" , :like => :html, :to => "patterns/01_headers.html"
file "../shared/patterns/heading-1-p.html" , :like => :html, :to => "patterns/01_heading-1-p.html"
file "../shared/patterns/heading-2-p.html" , :like => :html, :to => "patterns/01_heading-2-p.html"
file "../shared/patterns/heading-3-p.html" , :like => :html, :to => "patterns/01_heading-3-p.html"
file "../shared/patterns/heading-4-p.html" , :like => :html, :to => "patterns/01_heading-4-p.html"
file "../shared/patterns/heading-5-p.html" , :like => :html, :to => "patterns/01_heading-5-p.html"
file "../shared/patterns/heading-6-p.html" , :like => :html, :to => "patterns/01_heading-6-p.html"
file "../shared/patterns/list-ordered.html" , :like => :html, :to => "patterns/01_list-ordered.html"
file "../shared/patterns/list-unordered.html" , :like => :html, :to => "patterns/01_list-unordered.html"
file "../shared/patterns/pagination-first.html" , :like => :html, :to => "patterns/03_pagination-first.html"
file "../shared/patterns/pagination-last.html" , :like => :html, :to => "patterns/03_pagination-last.html"
file "../shared/patterns/pagination.html" , :like => :html, :to => "patterns/03_pagination.html"
file "../shared/patterns/text-new.html" , :like => :html, :to => "patterns/01_text.html"

# General File Import
# file 'README.md', :to => "README.md"
file "../shared/php/pattern-primer.php", :to => "index.php"

# General File Import
# file 'README.md', :to => "README.md"

# Compass Extension Help
help %Q{
  The best place for help is to read the documentation in Github: https://github.com/alienresident/compass-pattern-primer
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to Compass Pattern Primer!
  
  You have chosen to install the default version of Compass Pattern Primer. You'll find a PHP file index.php in your project. It pulls in HTML snippets (patterns) from the patterns folder. They include the original Adactio patterns and new patterns. Feel free to add your own patterns here. The project version goes beyond Jeremy Keith's original CSS and uses a SMACSS organizing principle.
  
  Documentation: https://github.com/alienresident/compass-pattern-primer
  Contact: mark@alienresident.net
}