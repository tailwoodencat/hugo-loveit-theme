# template of hugo LoveIt theme

## theme

more use see [https://github.com/dillonzq/LoveIt](https://github.com/dillonzq/LoveIt)

## CI

github.io see: [https://tailwoodencat.github.io/hugo-loveit-theme/](https://tailwoodencat.github.io/hugo-loveit-theme/)

netlify see: [https://tailwoodencat-hugo-loveit-theme.netlify.app/](https://tailwoodencat-hugo-loveit-theme.netlify.app/)

## icon

- icon from [https://fontawesome.com/](https://fontawesome.com/)

```html
    {{- $bUrl := .URL | absLangURL -}}
    <link rel="icon" href="{{ $bUrl }}favicon.ico?v=2">
```

## usage

- install [make](https://www.gnu.org/software/make/)
- install [node.js](https://nodejs.org/)

```bash
### install hugo
## windows
# fix css/style.scss build error
scoop install hugo-extended
# with out Sass/SCSS
scoop install hugo
## macos
brew install hugo
## linux
sudo apt install hugo
sudo dnf install hugo
sudo pacman install hugo


# init to check once
make init

# local debug
make debug

# build
make build

# if tools error try make utils to install
make destination
```