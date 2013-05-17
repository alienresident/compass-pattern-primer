# Description
description "Compass Pattern Primer is based on Adactio/Jeremy Keith's Pattern Primer. It provides a scaffolding to create a basic style guide for any website."

# Stylesheet Import
file 'screen.scss', :like => :stylesheet, :media => 'screen, projection'
file 'print.scss', :like => :stylesheet, :media => 'screen, projection'
file 'ie.scss', :like => :stylesheet, :media => 'screen, projection', :condition => "lt IE 9"


# Javascript Import
# file 'scripts.js', :like => :javascript, :to => 'scripts.js'

# html 'pattern-primer.html', :to => "pattern-primer.html"
# General File Import
# file 'README.md', :to => "README.md"

# Compass Extension Help
help %Q{
  Help for your Compass extension
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to my Compass Pattern Primer!
}