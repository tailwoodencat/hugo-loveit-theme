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