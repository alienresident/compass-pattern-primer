# Compass Pattern Primer
_This is the development repo for the compass extension and rubygem: [Compass Pattern Primer](https://rubygems.org/gems/compass-pattern-primer)._

## Create Style Guides in HTML and CSS with Sass & Compass

__Compass Pattern Primer__ is a system to quickly generate style guides for your web site or web app. It's a collection of starter UI patterns that can be styled for any website. The pattern primer uses a PHP document to pull in _patterns_ (HTML snippets) that can then be styled. It is based on [Pattern Primer](https://github.com/adactio/Pattern-Primer) by Adactio/Jeremy Keith.

#### Background
I originally faithfully ported [Pattern Primer](https://github.com/alienresident/Pattern-Primer) and Jeremy Keith's styles to Sass. Sass allows the styles to be quickly changed by overriding a few variables. 

For my own development work I needed to move beyond Jeremy's work. I created a Compass Gem so I could create a base scaffolding for each new project. I reworked the Pattern Primer to use Jonathan Snook's [SMACSS](http://smacss.com/) \(Scalable and Modular Architecture for CSS\) as an organizing principle. I separated the styled elements into base and modules. The initial default style is the styling from the original Pattern Primer. The intended way to override the original Adactio styling is to change the variables in `_config` file. I have also changed the default [reset](#reset) from Eric Meyer's to Formalize and Normalize.

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
There are a number of ways you can get started with Compass Pattern Primer. There are three ways (scaffolding options) your project can be set up. 
  
### Create a New Compass project

Use one of Compass Pattern Primer scaffolding options: 

##### SMACSS (PHP)

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer 
```   
This creates a SMACSS style scaffolding for your project. It includes an `index.php` and a patterns folder (HTML snippets). Within the patterns folder there are the default Adactio patterns as well as some additional patterns. All the `base` and `modules` files are imported into `global.scss` which will be the main CSS file. It also creates a `pattern-primer.scss` which imports `global.scss` and adds a color guide viewable in your `index.php`. The color guide adds a lot of CSS that has no business being in the production site but's very useful for the style guide.   

##### SMACSS with a Static HTML File

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer/static 
```   
This creates a SMACSS style scaffolding for your project. Instead of the `index.php` it includes `index.html` a static html page where you can preview the style guide. You edit the html to add your own patterns. All the `base` and `modules` files are imported into `global.scss` which will be the main CSS file. It also creates a `pattern-primer.scss` which imports `global.scss` and adds a color guide viewable in your `index.php`. The color guide adds a lot of CSS that has no business being in the production site but is useful for the style guide.

##### Adactio's Pattern Primer (PHP)

```bash
compass create <MyProject> -r compass-pattern-primer -u compass-pattern-primer/adactio 
```      
This adds an `index.php` and a patterns folder (HTML snippets) with only  Adactio's original patterns and CSS that's (fairly) faithful to his CSS.

### You can also:

#### Create a New Compass Project Requiring Compass Pattern Primer
 
```bash
compass create <MyProject> -r compass-pattern-primer 
```
This creates a new Compass project using the compass standard scaffolding and adds `require 'compass-pattern-primer'` to the `config.rb`. However you won't get the base styles or pattern primer viewing page added to your project. This approach is __NOT__ recommended unless you know what your doing.

#### Add Compass Pattern Primer to an Existing Project

Adding the following to `config.rb`   
```ruby
require 'compass-pattern-primer'
```   
Then import the Compass Pattern Primer partial by adding at the top of your working file

```scss
@import "compass-pattern-primer";
```   
However you won't get the base styles or pattern primer viewing page added to your project. This approach is __NOT__ recommended unless you know what your doing.   
**Note:** *You'll need to restart* `compass watch` *if it's running*  

## Features in Compass Pattern Primer

Compass Pattern Primer comes with a reset, base styles, and modules \(controls, feedback, options, pagination\). By using one of the scaffolding options listed above the base styles and modules will be added to your project. 

You can bring in the reset files, the mixins, functions and extendables into your project by adding `@import "compass-pattern-primer";` to the top of your file. You can also add the individual pieces by adding some (or all) of the following: 

### Reset
The Compass Pattern Primer Reset incorporates Normalize and Formalize libraries (using their compass gems) by default. If you just want to use one of these libraries.

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

If you don't want to use any resets simply don't import it. 

### Base
When you use one of the 3 scaffolding options Compass Pattern Primer Base Style will be added to your project. Folders containing the base styles will be added to your sass folder.

__SMACSS Scaffold__  
The styles will be in your `sass/base` folder   
```
sass/   
	base/   
		buttons/
		forms/
		links/
		page/
		search/
		typography/ 
 ```

   
__Adactio Scaffold__   
The styles will be in your `sass` folder

```bash
sass/
	buttons/
	forms/
	links/
	page/
	search/
	typography/ 
```

### Modules
Similarly the modules are in different folders depending on your scaffolding setup.

__SMACSS Scaffold__  
The styles will be in your `sass/modules` folder  

```bash   
sass/   
	modules/   
		controls/
		feedback/
		options/
		pagination/
 ```
    
__Adactio Scaffold__   
The styles will be in your `sass` folder

```bash
sass/
	controls/
	feedback/
	options/
	pagination/
```
Each base and module folder will have a `_basename.scss` and a `_basename_variables.scss` file. It may also have a `_basename_mixins.scss` and a `_basename_extendables.scss`

Here's an example from the buttons folder
```bash
_buttons.scss
_buttons_extendables.scss
_buttons_variables.scss
```   

`_basename.scss` contains CSS that will be outputted. It also imports `_basename_variables.scss`. It will also import `_basename_extendables.scss` or `_basename_mixins.scss` if they exist   
`_basename_variables.scss` contain all the default variables needed.
`_basename_extendables.scss` contains silent extendables styles that are only used in the context.  

### Changing the default styles
The Compass Pattern Primer is designed to allow nearly everything about the CSS to be overridden. Each base and module folder contains a sass file (`_basename_variables.scss`) with default variables that can be changed easily overridden.
 
#### Overriding Values using the `_config` file 
In the SMACSS style scaffolding you can override any of the  base or module variables in `_config.scss`. It contains some example variables that are commented out.

#### Extendables
Styles for the buttons, controls, options, and pagination contain silent extendables files . For example the extendables for buttons are in `buttons/buttons_extendables.scss`. This allows you to easily add a the button styles to another element.

In this example I am extending an `input` with the `id="reset"` to `%button-active` style.

```scss
input#reset {
	@extend %button-active;
}
```     
#### Colors 
Custom color guides can generated by altering the `$primary-color` variable in `partials/colors`. If you want to see this in action, the best option is to build a project using the SMACSS scaffolding. Color guides are created using [Color Schemer](https://github.com/Team-Sass/color-schemer) and can be viewed on the on the `index.php` (default) or `index.html` (static) page.

Color Schemer is feature rich and allows you to generate color schemes using color theory schemes: mono, complement, triad, tetrad, analogic, accented-analogic. See [Color Schemer](https://github.com/Team-Sass/color-schemer) for more info.

The colors also take advantage of `tint-stack` and `shade-stack` to generate 6 (by default but can be extended) tints (mixed with white) or shades (mixed with black) of your colors. Documentation for these functions can be found in [Toolkit](https://github.com/Team-Sass/toolkit).

```scss
$primary-color: #693 !default;
$grey-value: #333 !default;
```

```scss
$grey:     tint-stack($grey-value);
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

## Features that have been added

#### ~~Move styles from compass gem to scaffold~~ DONE (v. 0.4beta)
It made sense to move the base and module styles from the compass gem to the scaffolding. This added the styles to the project were they can be easily viewed and modified. Restructuring the SMACSS folders so that files pertaining to those styles were grouped together.   

Each base and module folder will have a `_basename.scss` and a `_basename_variables.scss` file. It may also have a `_basename_mixins.scss` and a `_basename_extendables.scss`

#### ~~More scaffolding options.~~ DONE (v. 0.3beta)
There was only one option to use my SMACSS scaffolding and a static HTML preview page. This worked for some use cases but didn't allow you to easily add patterns.

There are now 3 [install options](#create-a-new-compass-project-using-compass-pattern-primer-scaffolding) for Compass Pattern Primer.
	

#### ~~Use existing Compass Reset gems~~ DONE (v. 0.3beta)
I realized after the fact that all my reset's existed as compass gems. Doesn't seem like a good idea to duplicate code.  

These were added as dependencies:    
* [Meyer Reset](https://github.com/adamstac/meyer-reset)  
* [Compass Normalize](https://github.com/ksmandersen/compass-normalize)  
* [Compass Formalize](https://github.com/pengwynn/compass_formalize)    

I had to make some changes to [Compass Formalize](https://github.com/pengwynn/compass_formalize) to add `$legacy-support-for-ie6` and `$legacy-support-for-ie7` and they were accepted and pushed on in v. 0.0.5. I am now a committer on that project!

#### ~~Simplify the `bounding-box` mixin~~ DONE  (v 0.2.2)
In v. 0.1-0.2.1 the `bounding-box` mixin handles `margin`, `padding`, and `border` styles. I changed this to just `margin` and `padding` and create a new mixin to handle `border` and expanded it to support `outline` as the have similar CSS output
  
Refactored `bounding-box` mixin (v0.2.2). It's now 2 mixins: `border-outline` and `margin-padding`. They handle borders and outlines, and margins and paddings. With the refactoring I was able to remove all `$*-border-pos` variables. The position of borders is handled through `$*-border-width` which takes up to 4 arguments in the following  clockwise order TRBL \(Top Right Bottom Left \). Similarly `$*-border-style` and `$*-border-color` can take up to 4 arguments. Outline ignores all but the 1st argument and can take an offset argument. There's an error check mixin `border-outline-check` that displays warnings if you add too many arguments of try to offset the border. 


##### Requests? Feedback?
Contact [me](mailto:mark@alienresident.net) or simply file an [issue](https://github.com/alienresident/compass-pattern-primer/issues/new)! 

Thanks, Mark Reilly 
