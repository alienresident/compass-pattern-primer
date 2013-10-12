# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!
file 'config.rb', :like => :file, :to => "config.rb" 

# Stylesheet Import
file '../shared/sass/global.scss', :like => :stylesheet, :media => 'screen, projection'
# Stylesheet Import
file '../shared/sass/pattern-primer.scss', :like => :stylesheet, :media => 'screen, projection'

# Partials
file '../shared/sass/partials/_browsers.scss', :like => :stylesheet, :to => 'partials/_browsers.scss'
file '../shared/sass/partials/_colors.scss', :like => :stylesheet, :to => 'partials/_colors.scss'
file '../shared/sass/partials/_extendables.scss', :like => :stylesheet, :to => 'partials/_extendables.scss'
file '../shared/sass/partials/_functions.scss', :like => :stylesheet, :to => 'partials/_functions.scss'
file '../shared/sass/partials/_mixins.scss', :like => :stylesheet, :to => 'partials/_mixins.scss'
file '../shared/sass/partials/_variables.scss', :like => :stylesheet, :to => 'partials/_variables.scss'

# Variables
file '../shared/sass/partials/variables/base/_page.scss', :like => :stylesheet, :to => 'partials/variables/base/_page.scss'
file '../shared/sass/partials/variables/modules/_header.scss', :like => :stylesheet, :to => 'partials/variables/modules/_header.scss'
file '../shared/sass/partials/variables/modules/_footer.scss', :like => :stylesheet, :to => 'partials/variables/modules/_footer.scss'
file '../shared/sass/partials/variables/layout/_breakpoints.scss', :like => :stylesheet, :to => 'partials/variables/layout/_breakpoints.scss'
file '../shared/sass/partials/variables/layout/_page.scss', :like => :stylesheet, :to => 'partials/variables/layout/_page.scss'
file '../shared/sass/partials/variables/state/_page.scss', :like => :stylesheet, :to => 'partials/variables/state/_page.scss'
file '../shared/sass/partials/variables/state/_header.scss', :like => :stylesheet, :to => 'partials/variables/state/_header.scss'
file '../shared/sass/partials/variables/state/_footer.scss', :like => :stylesheet, :to => 'partials/variables/state/_footer.scss'
file '../shared/sass/partials/variables/theme/_page.scss', :like => :stylesheet, :to => 'partials/variables/theme/_page.scss'
file '../shared/sass/partials/variables/theme/_overrides.scss', :like => :stylesheet, :to => 'partials/variables/theme/_overrides.scss'

# SMACSS
file '../shared/sass/base/_page.scss', :like => :stylesheet, :to => 'base/_page.scss'
file '../shared/sass/modules/_header.scss', :like => :stylesheet, :to => 'modules/_header.scss'
file '../shared/sass/modules/_footer.scss', :like => :stylesheet, :to => 'modules/_footer.scss'
file '../shared/sass/layout/_page.scss', :like => :stylesheet, :to => 'layout/_page.scss'
file '../shared/sass/state/_page.scss', :like => :stylesheet, :to => 'state/_page.scss'
file '../shared/sass/state/_header.scss', :like => :stylesheet, :to => 'state/_header.scss'
file '../shared/sass/state/_footer.scss', :like => :stylesheet, :to => 'state/_footer.scss'
file '../shared/sass/theme/_page.scss', :like => :stylesheet, :to => 'theme/_page.scss'  

# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

# HTML Import
file "../shared/patterns/blockquote.html" , :like => :html, :to => "patterns/blockquote.html"
file "../shared/patterns/colorguide.html" , :like => :html, :to => "patterns/colorguide.html"
file "../shared/patterns/feedback-error.html" , :like => :html, :to => "patterns/feedback-error.html"
file "../shared/patterns/feedback-warning.html" , :like => :html, :to => "patterns/feedback-warning.html"
file "../shared/patterns/feedback.html" , :like => :html, :to => "patterns/feedback.html"
file "../shared/patterns/form-buttons-active.html" , :like => :html, :to => "patterns/form-buttons-active.html"
file "../shared/patterns/form-buttons-all.html" , :like => :html, :to => "patterns/form-buttons-all.html"
file "../shared/patterns/form-buttons-cancel.html" , :like => :html, :to => "patterns/form-buttons-cancel.html"
file "../shared/patterns/form-buttons-disabled.html" , :like => :html, :to => "patterns/form-buttons-disabled.html"
file "../shared/patterns/form-buttons.html" , :like => :html, :to => "patterns/form-buttons.html"
file "../shared/patterns/form-checkbox.html" , :like => :html, :to => "patterns/form-checkbox.html"
file "../shared/patterns/form-email.html" , :like => :html, :to => "patterns/form-email.html"
file "../shared/patterns/form-number.html" , :like => :html, :to => "patterns/form-number.html"
file "../shared/patterns/form-select.html" , :like => :html, :to => "patterns/form-select.html"
file "../shared/patterns/form-text.html" , :like => :html, :to => "patterns/form-text.html"
file "../shared/patterns/form-textarea.html" , :like => :html, :to => "patterns/form-textarea.html"
file "../shared/patterns/form-url.html" , :like => :html, :to => "patterns/form-url.html"
file "../shared/patterns/headers.html" , :like => :html, :to => "patterns/headers.html"
file "../shared/patterns/heading-1-p.html" , :like => :html, :to => "patterns/heading-1-p.html"
file "../shared/patterns/heading-2-p.html" , :like => :html, :to => "patterns/heading-2-p.html"
file "../shared/patterns/heading-3-p.html" , :like => :html, :to => "patterns/heading-3-p.html"
file "../shared/patterns/heading-4-p.html" , :like => :html, :to => "patterns/heading-4-p.html"
file "../shared/patterns/heading-5-p.html" , :like => :html, :to => "patterns/heading-5-p.html"
file "../shared/patterns/heading-6-p.html" , :like => :html, :to => "patterns/heading-6-p.html"
file "../shared/patterns/list-ordered.html" , :like => :html, :to => "patterns/list-ordered.html"
file "../shared/patterns/list-unordered.html" , :like => :html, :to => "patterns/list-unordered.html"
file "../shared/patterns/pagination-first.html" , :like => :html, :to => "patterns/pagination-first.html"
file "../shared/patterns/pagination-last.html" , :like => :html, :to => "patterns/pagination-last.html"
file "../shared/patterns/pagination.html" , :like => :html, :to => "patterns/pagination.html"
file "../shared/patterns/text.html" , :like => :html, :to => "patterns/text.html"

# General File Import
# file 'README.md', :to => "README.md"
file "../shared/php/pattern-primer.php", :to => "pattern-primer.php"

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
  Documentation: https://github.com/alienresident/compass-pattern-primer
  Contact: mark@alienresident.net
}