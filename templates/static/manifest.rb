# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!
file 'config.rb', :like => :file, :to => "config.rb" 

# Stylesheet Import
file '../shared/sass/global.scss', :like => :stylesheet, :to => 'global.scss'
# Stylesheet Import
file '../shared/sass/pattern-primer-static.scss', :like => :stylesheet, :to => 'pattern-primer.scss'

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
file 'pattern-primer.html', :like => :html, :to => "index.html"

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
  
  You have chosen to install the static HTML version. You'll find a HTML file index.html in your project that includes the default patterns. Feel free to edit the HTML to include your own patterns.
  
  Documentation: https://github.com/alienresident/compass-pattern-primer
  Contact: mark@alienresident.net
}