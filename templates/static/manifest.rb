# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

no_configuration_file!

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