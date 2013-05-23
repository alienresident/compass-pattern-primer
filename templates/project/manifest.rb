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
file 'partials/base/_page.scss',  :like => :stylesheet, :to => 'partials/base/_page.scss'
file 'partials/modules/_header.scss',  :like => :stylesheet, :to => 'partials/modules/_header.scss'
file 'partials/modules/_footer.scss',  :like => :stylesheet, :to => 'partials/modules/_footer.scss'
file 'partials/layout/_breakpoints.scss',  :like => :stylesheet, :to => 'partials/layout/_breakpoints.scss'
file 'partials/layout/_page.scss',  :like => :stylesheet, :to => 'partials/layout/_page.scss'
file 'partials/state/_page.scss',  :like => :stylesheet, :to => 'partials/state/_page.scss'
file 'partials/state/_header.scss',  :like => :stylesheet, :to => 'partials/state/_header.scss'
file 'partials/state/_footer.scss',  :like => :stylesheet, :to => 'partials/state/_footer.scss'
file 'partials/theme/_page.scss',  :like => :stylesheet, :to => 'partials/theme/_page.scss'

# SMACSS
file 'base/_page.scss',  :like => :stylesheet, :to => 'base/_page.scss'
file 'modules/_header.scss',  :like => :stylesheet, :to => 'modules/_header.scss'
file 'modules/_footer.scss',  :like => :stylesheet, :to => 'modules/_footer.scss'
file 'layout/_page.scss',  :like => :stylesheet, :to => 'layout/_page.scss'
file 'state/_page.scss',  :like => :stylesheet, :to => 'state/_page.scss'
file 'state/_header.scss',  :like => :stylesheet, :to => 'state/_header.scss'
file 'state/_footer.scss',  :like => :stylesheet, :to => 'state/_footer.scss'
file 'theme/_page.scss',  :like => :stylesheet, :to => 'theme/_page.scss' 


# file 'ie.scss', :like => :stylesheet, :media => 'screen, projection', :condition => "lt IE 9"


# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

file 'pattern-primer.html',:like => :html, :to => "pattern-primer.html"
# General File Import
# file 'README.md', :to => "README.md"

# Compass Extension Help
help %Q{
  Help for your Compass extension
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to Compass Pattern Primer! 
  For documentation help contact: mark@alienresident.net 
}