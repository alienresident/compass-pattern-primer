_This is the development repo for the compass extension and rubygem: [Compass Pattern Primer](https://rubygems.org/gems/compass-pattern-primer)._

# Compass Pattern Primer
Compass Pattern Primer is a system to quickly generate style guides for your web site or web app. It is based on [Pattern Primer](https://github.com/adactio/Pattern-Primer) by Adactio/Jeremy Keith. It's a collection of starter UI patterns that can be styled for any website. The pattern primer used a PHP document to pull in HTML snippets that can be styled. 

I originally faithfully ported  [Pattern Primer](https://github.com/alienresident/Pattern-Primer) and Jeremy Keith's styles to Sass. Using Sass allows the styles to be quickly changing by overriding a few variables. 

For my own development work I wanted to move on from Jeremy's work. I reworked the Pattern Primer to use Jonathan Snook's [SMACSS](http://smacss.com/) \(Scalable and Modular Architecture for CSS\) as an organizing principle. I separated the partials into base and modules. The stying from the original Pattern Primer is the default style. The intended way to override the original Adactio styling is to change the variables in partials/variables/theme/_overrides. This follows the SMACSS paradigm.

This is a work in progress and any feedback is welcome. 

## Installation
Compass Pattern Primer is a compass extension bundle as a Ruby gem.
   
```
	sudo gem install compass-pattern-primer
```
You'll need to install [Sass](http://sass-lang.com/), [Compass](http://compass-style.org/), and [Toolkit](https://github.com/Team-Sass/toolkit) Ruby Gems too. Documentation for installing and using these gems is pretty extensive. 

## How to Use it
There are a number of ways you can get started with Compass Pattern Primer

#### Create a new compass project requiring Compass Pattern Primer 
```
	compass create <MyProject> -r compass-pattern-primer 
```
This creates a new compass project using the compass standard scaffolding and adds `require 'compass-pattern-primer'` to the `config.rb`.
  
#### Create a new compass project using Compass Pattern Primer scaffolding \(SMACSS\)
```
	compass create <MyProject> -r compass-pattern-primer --using compass-pattern-primer 
```
This adds the SMACSS scaffolding to your project and creates `pattern-primer.html` a static html page where you can preview the style guide. *See: **Features to be added** at the bottom of this document for planned alternative scaffolding.* 

#### Add Compass Pattern Primer to an existing project by adding the following to config.rb
```
    require 'compass-pattern-primer'
```
#### Import the Compass Pattern Primer partial at the top of your working file
```
	@import "compass-pattern-primer";
```
## Features in Compass Pattern Primer
**TK**

## Features to be added
#### More scaffolding options.
At the moment there's only one option to use my SMACSS scaffolding and a static html preview page. This works for some use cases but doesn't allow you to easily add patterns. 

I intend to allow an option that includes the original patterns and `index.php` file from Jeremy Keith's [Pattern Primer](https://github.com/adactio/Pattern-Primer) repo. 

Another option could be to create a very basic scaffolding that doesn't use the SMACSS approach. So that you can use you own. 

**Requests?** let me [know](mailto:mark@alienresident.net)