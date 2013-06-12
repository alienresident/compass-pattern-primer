_This is the development repo for the compass extension and rubygem: [Compass Pattern Primer](https://rubygems.org/gems/compass-pattern-primer)._

# Compass Pattern Primer
Compass Pattern Primer is a system to quickly generate style guides for your web site or web app. It is based on [Pattern Primer](https://github.com/adactio/Pattern-Primer) by Adactio/Jeremy Keith. It's a collection of starter UI patterns that can be styled for any website. The pattern primer used a PHP document to pull in HTML snippets that can be styled. 

I originally faithfully ported  [Pattern Primer](https://github.com/alienresident/Pattern-Primer) and Jeremy Keith's styles to Sass. Using Sass allows the styles to be quickly changing by overriding a few variables. 

For my own development work I wanted to move on from Jeremy's work. I reworked the Pattern Primer to use Jonathan Snook's [SMACSS](http://smacss.com/) \(Scalable and Modular Architecture for CSS\) as an organizing principle. I separated the partials into base and modules. The styling from the original Pattern Primer is the default style. The intended way to override the original Adactio styling is to change the variables in `partials/variables/theme/_overrides` following the SMACSS paradigm. I have also changed the default Reset from Eric Meyer's to Formalize and Normalize.

*This is a work in progress and any feedback is welcome.* 

## Installation
Compass Pattern Primer is a compass extension bundle as a Ruby gem.
   
```
	gem install compass-pattern-primer
```
You'll need to install [Sass](http://sass-lang.com/), [Compass](http://compass-style.org/), and [Toolkit](https://github.com/Team-Sass/toolkit) Ruby Gems too. Documentation for installing and using these gems is pretty extensive. 

## How to Use it
There are a number of ways you can get started with Compass Pattern Primer

#### Create a new Compass project requiring Compass Pattern Primer 
```
	compass create <MyProject> -r compass-pattern-primer 
```
This creates a new Compass project using the compass standard scaffolding and adds `require 'compass-pattern-primer'` to the `config.rb`.
  
#### Create a new Compass project using Compass Pattern Primer scaffolding \(SMACSS\)
```
	compass create <MyProject> -r compass-pattern-primer --using compass-pattern-primer 
```
This adds a SMACSS style scaffolding to your project and creates `pattern-primer.html` a static html page where you can preview the style guide. *See: **Features to be added** at the bottom of this document for planned alternative scaffolding.* 

#### Add Compass Pattern Primer to an existing project by adding the following to config.rb
```
    require 'compass-pattern-primer'
```
Then import the Compass Pattern Primer partial by adding at the top of your working file
```
	@import "compass-pattern-primer";
```
**Note:** *You'll need to restart* `compass watch` *if it's running*

## Features in Compass Pattern Primer

Compass Pattern Primer comes with a reset, base styles, and modules \(controls, feedback, options, pagination\). You can either bring everything into your project by adding `@import "compass-pattern-primer";` to the top of your file. You can also add the individual pieces by adding some (or all) of the following: 

```
	@import "compass-pattern-primer/reset"; 
	@import "compass-pattern-primer/base";
	@import "compass-pattern-primer/modules";
```
 
### Reset
The Compass Pattern Primer Reset incorporates Normalize and Formalize libraries by default. If you don not want to include these set them to false.

```
    $use_formalize_reset: false;
    $use_normalize_reset: false;
```

The Eric Meyer Reset is available as an option too but it's set to false by default. To change this add:
 
```
	$use_eric_meyer_reset: true;
```

Unless you use the SMACSS style scaffolding* legacy support for older IE (6 & 7) browsers in the Normalize and Formalize libraries is set to true by default. To change this add:

```
    $legacy-support-for-ie6: false;
    $legacy-support-for-ie7: false;
```

*In the SMACSS style scaffolding you can change what browsers you support in `partials/browsers`.

If you don't want to use the Compass Pattern Primer Reset simply don't import it. You can import just the base and modules.

```
	@import "compass-pattern-primer/base";
	@import "compass-pattern-primer/modules";
```	    

### Base
The Compass Pattern Primer Base contains partials for your base styles.
You can add them all:

```
	@import "compass-pattern-primer/base
```
Or selectively:

```
	@import "compass-pattern-primer/base/_page";
	@import "compass-pattern-primer/base/_typography";
	@import "compass-pattern-primer/base/_links";
	@import "compass-pattern-primer/base/_forms";
	@import "compass-pattern-primer/base/_search";
	@import "compass-pattern-primer/base/_buttons";    
```



### Overrides
The Compass Pattern Primer is designed to allow nearly everything to be overridden. Nearly every piece of the SCSS contains variables that can be changed.
 
In the SMACSS style scaffolding you can override any of the variables in `partials/variables/theme/_overrides`. It contains some example variables that are commented out.
 

## Features to be added
#### More scaffolding options.
At the moment there's only one option to use my SMACSS scaffolding and a static html preview page. This works for some use cases but doesn't allow you to easily add patterns. 

I intend to allow an option that includes the original patterns and `index.php` file from Jeremy Keith's [Pattern Primer](https://github.com/adactio/Pattern-Primer) repo. 

Another option could be to create a very basic scaffolding that doesn't use the SMACSS approach. So that you can use you own. 

**Requests?** let me [know](mailto:mark@alienresident.net)