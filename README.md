# template of hugo LoveIt theme

more use see https://github.com/dillonzq/LoveIt

github.io see: [https://tailwoodencat.github.io/hugo-loveit-theme/](https://tailwoodencat.github.io/hugo-loveit-theme/)

netlify see: [https://tailwoodencat-hugo-loveit-theme.netlify.app/](https://tailwoodencat-hugo-loveit-theme.netlify.app/)


## icon

```html
    {{- $bUrl := .URL | absLangURL -}}
    <link rel="icon" href="{{ $bUrl }}favicon.ico?v=2">
```