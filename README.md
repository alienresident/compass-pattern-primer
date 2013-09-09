# Compass Pattern Primer
### Create Style Guides in HTML and CSS with Sass & Compass
_This is the development repo for the compass extension and rubygem: [Compass Pattern Primer](https://rubygems.org/gems/compass-pattern-primer)._

Compass Pattern Primer is a system to quickly generate style guides for your web site or web app. It is based on [Pattern Primer](https://github.com/adactio/Pattern-Primer) by Adactio/Jeremy Keith. It's a collection of starter UI patterns that can be styled for any website. The pattern primer used a PHP document to pull in HTML snippets that can be styled. 

I originally faithfully ported  [Pattern Primer](https://github.com/alienresident/Pattern-Primer) and Jeremy Keith's styles to Sass. Using Sass allows the styles to be quickly changing by overriding a few variables. 

For my own development work I wanted to move on from Jeremy's work. I reworked the Pattern Primer to use Jonathan Snook's [SMACSS](http://smacss.com/) \(Scalable and Modular Architecture for CSS\) as an organizing principle. I separated the partials into base and modules. The styling from the original Pattern Primer is the default style. The intended way to override the original Adactio styling is to change the variables in `partials/variables/theme/_overrides` following the SMACSS paradigm. I have also changed the default Reset from Eric Meyer's to Formalize and Normalize.

*This is a work in progress and any feedback is very welcome.* 

## Installation
Compass Pattern Primer is a compass extension bundled as a Ruby gem.
   
```bash
gem install compass-pattern-primer
```
You'll need to install [Sass](http://sass-lang.com/), [Compass](http://compass-style.org/), and [Toolkit](https://github.com/Team-Sass/toolkit) Ruby Gems too. Documentation for installing and using these gems is pretty extensive. 

## How to Use it
There are a number of ways you can get started with Compass Pattern Primer

#### Create a new Compass project requiring Compass Pattern Primer
 
```bash
compass create <MyProject> -r compass-pattern-primer 
```
This creates a new Compass project using the compass standard scaffolding and adds `require 'compass-pattern-primer'` to the `config.rb`.
  
#### Create a new Compass project using Compass Pattern Primer scaffolding \(SMACSS\)

```bash
compass create <MyProject> -r compass-pattern-primer --using compass-pattern-primer 
```
This adds a SMACSS style scaffolding to your project and creates `pattern-primer.html` a static html page where you can preview the style guide. *See: **Features to be added** at the bottom of this document for planned alternative scaffolding.* 

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
The Compass Pattern Primer Reset incorporates Normalize and Formalize libraries by default. If you don not want to include these set them to false.

```scss
$use_formalize_reset: false;
$use_normalize_reset: false;
```

The Eric Meyer Reset is available as an option too but it's set to false by default. To change this add:
 
```scss
$use_eric_meyer_reset: true;
```

Unless you use the SMACSS style scaffolding* legacy support for older IE (6 & 7) browsers in the Normalize and Formalize libraries is set to true by default. To change this add:

```scss
$legacy-support-for-ie6: false;
$legacy-support-for-ie7: false;
```

*In the SMACSS style scaffolding you can change what browsers you support in `partials/browsers`.

If you don't want to use the Compass Pattern Primer Reset simply don't import it. You can import just the base and modules.

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
Custom color guides can generated by altering the `$primary-color` variable in `partials/colors`. If you want to see this in action, the best option is to build a project using the SMACSS scaffolding. Color guides are created using [Color Schemer](https://github.com/Team-Sass/color-schemer) and can be viewed on the `pattern-primer.html` page.

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
#### More scaffolding options.
At the moment there's only one option to use my SMACSS scaffolding and a static html preview page. This works for some use cases but doesn't allow you to easily add patterns.

I intend to allow a scaffolding option that includes the original patterns and `index.php` file from Jeremy Keith's [Pattern Primer](https://github.com/adactio/Pattern-Primer) repo.

Another option could be to create a very basic scaffolding that doesn't use the SMACSS approach. So that you can use you own.

#### Use existing Compass Reset gems
I realized after the fact that all my reset's existed as compass gems. Doesn't seem like a good idea to duplicate code.
- [Meyer Reset](https://github.com/adamstac/meyer-reset)
- [Compass Normalize](https://github.com/ksmandersen/compass-normalize)
- [Compass Formalize](https://github.com/pengwynn/compass_formalize)


#### ~~Simplify `bounding-box` mixin~~ DONE
~~At the moment `bounding-box` mixin handles `margin`, `padding`, and `border` styles. I am going to change this to just `margin` and `padding` and create a new mixing to handle `border` and expanded it to support `outline` as the have similar CSS output.~~  
Refactored `bounding-box` mixin (v0.2.2). It's now 2 mixins: `border-outline` and `margin-padding`. They handle borders and outlines, and margins and paddings. With the refactoring I was able to remove all `$*-border-pos` variables. The position of borders is handled through `$*-border-width` which takes up to 4 arguments in the following  clockwise order TRBL \(Top Right Bottom Left \). Similarly `$*-border-style` and `$*-border-color` can take up to 4 arguments. Outline ignores all but the 1st argument and can take an offset argument. There's an error check mixin `border-outline-check` that displays warnings if you add too many arguments of try to offset the border. 


##### Requests? Feedback?
Contact [me](mailto:mark@alienresident.net) or simply file an [issue](https://github.com/alienresident/compass-pattern-primer/issues/new)!
