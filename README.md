# Compass Pattern Primer
### Create Style Guides in HTML and CSS with Sass & Compass
_This is the development repo for the compass extension and rubygem: [Compass Pattern Primer](https://rubygems.org/gems/compass-pattern-primer)._

Compass Pattern Primer is a system to quickly generate style guides for your web site or web app. It is based on [Pattern Primer](https://github.com/adactio/Pattern-Primer) by Adactio/Jeremy Keith. It's a collection of starter UI patterns that can be styled for any website. The pattern primer uses a PHP document to pull in patterns (HTML snippets) that can be styled. 

I originally faithfully ported [Pattern Primer](https://github.com/alienresident/Pattern-Primer) and Jeremy Keith's styles to Sass. Using Sass allows the styles to be quickly changing by overriding a few variables. 

For my own development work I needed to move beyond Jeremy's work. I reworked the Pattern Primer to use Jonathan Snook's [SMACSS](http://smacss.com/) \(Scalable and Modular Architecture for CSS\) as an organizing principle. I separated the partials into base and modules. The styling from the original Pattern Primer is the default style. The intended way to override the original Adactio styling is to change the variables in `partials/variables/theme/_overrides` following the SMACSS paradigm. I have also changed the default [reset](#reset) from Eric Meyer's to Formalize and Normalize.

*This is a work in progress and any feedback is very welcome.* 

## Installation
Compass Pattern Primer is a compass extension bundled as a Ruby gem.
   
```bash
gem install compass-pattern-primer
``` 
#### Dependencies  
You'll need to install [Sass](http://sass-lang.com/), [Compass](http://compass-style.org/), and [Toolkit](https://github.com/Team-Sass/toolkit) Ruby Gems too. Documentation for installing and using these gems is pretty extensive. 

Depending on what [scaffolding](#create-a-new-compass-project-using-compass-pattern-primer-scaffolding) or [reset](#reset) library you use. You may need to install  [compass normalize](https://github.com/ksmandersen/compass-normalize) and/or [compass formalize](https://github.com/pengwynn/compass_formalize) or the [meyer reset](https://github.com/adamstac/meyer-reset).

## How to Use it
There are a number of ways you can get started with Compass Pattern Primer

### Create a new Compass project requiring Compass Pattern Primer
 
```bash
compass create <MyProject> -r compass-pattern-primer 
```
This creates a new Compass project using the compass standard scaffolding and adds `require 'compass-pattern-primer'` to the `config.rb`.
  
### Create a new Compass project using Compass Pattern Primer scaffolding

##### SMACSS

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer 
```   
This creates a SMACSS style scaffolding for your project. It includes an `index.php` and a patterns folder (HTML snippets). Within the patterns folder there are the default Adactio patterns as well as some additional patterns. All the partials are imported into `global.scss` which will be your main css file. It also creates a `pattern-primer.scss` which imports `global.scss` and adds a color guide for your `index.php`. The color guide adds a lot of CSS that has no business being in the production site but's very useful for the style guide.   

##### Adactio's Pattern Primer

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer/adactio 
```   
This adds an `index.php` and a patterns folder (HTML snippets) with only  Adactio's original patterns and CSS that's (fairly) faithful to his CSS.

##### Static HTML File

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer/static 
```   
This creates a SMACSS style scaffolding for your project. Instead of the `index.php` it includes `pattern-primer.html` a static html page where you can preview the style guide. You edit the html to add your own patterns.

#### Add Compass Pattern Primer to an existing project by adding the following to config.rb

```ruby
require 'compass-pattern-primer'
```   
Then import the Compass Pattern Primer partial by adding at the top of your working file

```scss
@import "compass-pattern-primer";
```   
**Note:** *You'll need to restart* `compass watch` *if it's running*

## Features in Compass Pattern Primer

Compass Pattern Primer comes with a reset, base styles, and modules \(controls, feedback, options, pagination\). You can either bring everything into your project by adding `@import "compass-pattern-primer";` to the top of your file. You can also add the individual pieces by adding some (or all) of the following: 

```scss   
@import "compass-pattern-primer/reset";   
@import "compass-pattern-primer/base";   
@import "compass-pattern-primer/modules";   
```   

### Reset
The Compass Pattern Primer Reset incorporates Normalize and Formalize libraries (using their compass gems) by default.

__change__

```scss
@import "compass-pattern-primer/reset";  
```  
__to__   
```scss
@import "compass-pattern-primer/reset/libraries/_normalize";  
```  
__or__  
```scss
@import "compass-pattern-primer/reset/libraries/_formalize";  
```    

The Eric Meyer Reset is available as an option.  

__change__

```scss
@import "compass-pattern-primer/reset";
```  
__to__ 

```scss
@import "compass-pattern-primer/reset/libraries/_eric_meyer_reset";
```   

Unless you use the Compass Pattern Primer SMACSS scaffolding*, legacy support for older IE (6 & 7) browsers in the Normalize and Formalize libraries will be set to true. To change this add:

```scss
$legacy-support-for-ie6: false;  
$legacy-support-for-ie7: false;
```    

*In the Compass Pattern Primer SMACSS scaffolding you can change what browsers you support in `partials/browsers`.

If you don't want to use any resets simply don't import it. You can import just the base and modules.

```scss
@import "compass-pattern-primer/base";
@import "compass-pattern-primer/modules";
```

### Base
The Compass Pattern Primer Base contains partials for your base styles.
You can add them all:

```scss
@import "compass-pattern-primer/base";
```    
Or selectively, here's the full list you can select which parts:

```scss
@import "compass-pattern-primer/base/_page";
@import "compass-pattern-primer/base/_typography";
@import "compass-pattern-primer/base/_links";
@import "compass-pattern-primer/base/_forms";
@import "compass-pattern-primer/base/_search";
@import "compass-pattern-primer/base/_buttons";    
```

### Modules
Similarly the modules allow can be imported whole or selectively. 

```scss
@import "compass-pattern-primer/modules";
```   
Or   

```scss
@import "compass-pattern-primer/modules/_control";
@import "compass-pattern-primer/modules/_feedback";
@import "compass-pattern-primer/modules/_options";
@import "compass-pattern-primer/modules/_pagination";
```    
Styles for the modules can be changed using **overrides** and extended to other elements using **extendables**. 

### Changing the default styles
The Compass Pattern Primer is designed to allow nearly everything about the CSS to be overridden. The Sass contains variables that can be changed easily overridden.
 
#### Overrides 
In the SMACSS style scaffolding you can override any of the variables in `partials/variables/theme/_overrides`. It contains some example variables that are commented out.

#### Extendables
Styles for the buttons, controls, options, and pagination are silent extendables. The extendables are in `partials/extendables`. This allows you to easily add a the button styles to another element.

In this example I am extending an `input` with the `id="reset"` to `%button-active` style.

```scss
input#reset {
	@extend %button-active;
}
```     
#### Colors 
Custom color guides can generated by altering the `$primary-color` variable in `partials/colors`. If you want to see this in action, the best option is to build a project using the SMACSS scaffolding. Color guides are created using [Color Schemer](https://github.com/Team-Sass/color-schemer) and can be viewed on the on the `index.php` (default) or `pattern-primer.html` (static) page.

Color Schemer is feature rich and allows you to generate color schemes using color theory schemes: mono, complement, triad, tetrad, analogic, accented-analogic. See [Color Schemer](https://github.com/Team-Sass/color-schemer) for more info.

The colors also take advantage of `tint-stack` and `shade-stack` to generate 6 (by default but can be extended) tints (mixed with white) or shades (mixed with black) of your colors. Documentation for these functions can be found in [Toolkit](https://github.com/Team-Sass/toolkit).

```scss
$primary-color:  #57068c;
$black-value: #333;
```

```scss
$black:     tint-stack($black-value);
$primary:   tint-stack(cs-primary());
$secondary: tint-stack(cs-secondary());
$tertiary:  tint-stack(cs-tertiary());
$quadrary:  tint-stack(cs-quadrary())
```   

The advantage of this is you can design your site using `tint-stack` variables. You can then easily adjust your colors by simply altering the `$primary-color` variable.

```scss
$link-color: nth($primary, 1); 
$link-visited-link-color: nth($primary, 2);
```  

## Features to be added
#### ~~More scaffolding options.~~ DONE
~~At the moment there's only one option to use my SMACSS scaffolding and a static html preview page. This works for some use cases but doesn't allow you to easily add patterns.~~

~~I intend to allow a scaffolding option that includes the original patterns and `index.php` file from Jeremy Keith's [Pattern Primer](https://github.com/adactio/Pattern-Primer) repo.~~

~~Another option could be to create a very basic scaffolding that doesn't use the SMACSS approach. So that you can use you own.~~

There are now 3 [install options](#create-a-new-compass-project-using-compass-pattern-primer-scaffolding) for Compass Pattern Primer.
	

#### ~~Use existing Compass Reset gems~~ DONE
~~I realized after the fact that all my reset's existed as compass gems. Doesn't seem like a good idea to duplicate code.
- [Meyer Reset](https://github.com/adamstac/meyer-reset)
- [Compass Normalize](https://github.com/ksmandersen/compass-normalize)
- [Compass Formalize](https://github.com/pengwynn/compass_formalize)~~  
I had to make some changes to [Compass Formalize](https://github.com/pengwynn/compass_formalize) to add `$legacy-support-for-ie6` and `$legacy-support-for-ie7` and they were accepted and pushed on in v. 0.0.5. I am now a committer on that project!


#### ~~Simplify the `bounding-box` mixin~~ DONE
~~At the moment `bounding-box` mixin handles `margin`, `padding`, and `border` styles. I am going to change this to just `margin` and `padding` and create a new mixing to handle `border` and expanded it to support `outline` as the have similar CSS output.~~  
Refactored `bounding-box` mixin (v0.2.2). It's now 2 mixins: `border-outline` and `margin-padding`. They handle borders and outlines, and margins and paddings. With the refactoring I was able to remove all `$*-border-pos` variables. The position of borders is handled through `$*-border-width` which takes up to 4 arguments in the following  clockwise order TRBL \(Top Right Bottom Left \). Similarly `$*-border-style` and `$*-border-color` can take up to 4 arguments. Outline ignores all but the 1st argument and can take an offset argument. There's an error check mixin `border-outline-check` that displays warnings if you add too many arguments of try to offset the border. 


##### Requests? Feedback?
Contact [me](mailto:mark@alienresident.net) or simply file an [issue](https://github.com/alienresident/compass-pattern-primer/issues/new)! 

Thanks, Mark Reilly 
