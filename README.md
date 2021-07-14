# Basics

This site is built with Zola and Tailwind CSS.

## Managing Content

TODO

## Site Development

Install Zola per the instructions [here](https://www.getzola.org/documentation/getting-started/installation/). Install the JS dependencies using `yarn install`. 

There are two yarn scripts to abstract away the details of using Tailwind with Zola.

- `yarn dev`: Runs the development server.
- `yarn build`: Builds everything in production mode. Outputs the site in `public/`

### Zola

Zola is a static site generator and has a lot of cool features, but this site is quite simple. It does not use any themes, all the html files are in `templates/`. The content of the pages is all in `content/`. Everything in `static/` will be served directly at the root of the folder.

`zola serve`

### Tailwind

TailwindCSS is used to manage all the CSS stylesheets, but as support is not built into Zola, it requires JS tooling. Once `yarn` is installed, simply do `yarn install` to aquire all the dependencies required to run Tailwind. This project leverages Tailwind's JIT mode to dynamically generate CSS classes instead of generating them upfront. 

This ensures that the production and development stylesheets are the same, but does come with the drawback of having to run a watcher in the background. The specific commands for stylesheet generation can be seen in `package.json`, under scripts.

### Deployment

This site is deployed using Cloudflare Pages. With the Github integration, the site is automatically built and deployed on every push. To setup as a fresh project, the build command should be `yarn build` and the build output directory should be `public`. The `ZOLA_VERSION` env var must be set for CF to install Zola. CF sets the node version based on the `.node-version` file in this repo.