# Ramblin Rocket Club Website

This site is built with Zola.

## Managing Content

TODO

## Zola

Zola is a static site generator and has a lot of cool features, but this site is quite simple. The site is based on the [juice](https://github.com/huhu/juice) theme. The content of the pages is all in `content/`. Everything in `static/` will be served directly at the root of the folder. Zola automatically compiles css from the `sass/` directory.

Install Zola per the instructions [here](https://www.getzola.org/documentation/getting-started/installation/). 

Development: `zola serve`
Build: `zola build`

### Deployment

This site is deployed on Github Pages. It is built and deployed using Github Actions. The workflow is located in `.github/workflows/deploy.yml`.