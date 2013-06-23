# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

# Stylesheet Import
file 'global.scss', :like => :stylesheet, :media => 'screen, projection'

# Partials
file 'partials/_browsers.scss',  :like => :stylesheet, :to => 'partials/_browsers.scss'
file 'partials/_colors.scss',  :like => :stylesheet, :to => 'partials/_colors.scss'
file 'partials/_extendables.scss',  :like => :stylesheet, :to => 'partials/_extendables.scss'
file 'partials/_functions.scss',  :like => :stylesheet, :to => 'partials/_functions.scss'
file 'partials/_mixins.scss',  :like => :stylesheet, :to => 'partials/_mixins.scss'
file 'partials/_variables.scss',  :like => :stylesheet, :to => 'partials/_variables.scss'

# Variables
file 'partials/variables/base/_page.scss',  :like => :stylesheet, :to => 'partials/variables/base/_page.scss'
file 'partials/variables/modules/_header.scss',  :like => :stylesheet, :to => 'partials/variables/modules/_header.scss'
file 'partials/variables/modules/_footer.scss',  :like => :stylesheet, :to => 'partials/variables/modules/_footer.scss'
file 'partials/variables/layout/_breakpoints.scss',  :like => :stylesheet, :to => 'partials/variables/layout/_breakpoints.scss'
file 'partials/variables/layout/_page.scss',  :like => :stylesheet, :to => 'partials/variables/layout/_page.scss'
file 'partials/variables/state/_page.scss',  :like => :stylesheet, :to => 'partials/variables/state/_page.scss'
file 'partials/variables/state/_header.scss',  :like => :stylesheet, :to => 'partials/variables/state/_header.scss'
file 'partials/variables/state/_footer.scss',  :like => :stylesheet, :to => 'partials/variables/state/_footer.scss'
file 'partials/variables/theme/_page.scss',  :like => :stylesheet, :to => 'partials/variables/theme/_page.scss'
file 'partials/variables/theme/_overrides.scss',  :like => :stylesheet, :to => 'partials/variables/theme/_overrides.scss'

# SMACSS
file 'base/_page.scss',  :like => :stylesheet, :to => 'base/_page.scss'
file 'modules/_header.scss',  :like => :stylesheet, :to => 'modules/_header.scss'
file 'modules/_footer.scss',  :like => :stylesheet, :to => 'modules/_footer.scss'
file 'layout/_page.scss',  :like => :stylesheet, :to => 'layout/_page.scss'
file 'state/_page.scss',  :like => :stylesheet, :to => 'state/_page.scss'
file 'state/_header.scss',  :like => :stylesheet, :to => 'state/_header.scss'
file 'state/_footer.scss',  :like => :stylesheet, :to => 'state/_footer.scss'
file 'theme/_page.scss',  :like => :stylesheet, :to => 'theme/_page.scss' 

# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

# HTML Import
file 'pattern-primer.html', :like => :html, :to => "pattern-primer.html"

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