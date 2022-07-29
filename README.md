# Ramblin Rocket Club Website

This site is built with Zola. Content can be edited directly on Github as a pull request and will automagically be checked to ensure everything is correct.

## Managing Content

Content on the home page lives in `content/_index.md`.

Content for each subteam is located in `content/teams`. Other pages are also in `content/`

Links for the homepage, such as the Slack invite link and Mailing List are defined in `config.toml` and can be update from there.

Images should be placed within `static/teams`. They can then be embedded into the website using a shortcode as such: `{{ image(path="teams/hab/High Altitude Balloon Launch March 2019.jpg", desc="Photo taken by HAB during the Mach 2019 Launch")}}`

## Zola

Zola is a static site generator and has a lot of cool features, but this site is quite simple. The site is based on the [juice](https://github.com/huhu/juice) theme. The content of the pages is all in `content/`. Everything in `static/` will be served directly at the root of the folder. Zola automatically compiles css from the `sass/` directory.

Install Zola per the instructions [here](https://www.getzola.org/documentation/getting-started/installation/). 

Development: `zola serve`

Build: `zola build`

### Deployment

Deployment is a bit complex. Details are on the internal wiki.

**Do not edit CI/CD, Google site verification, Github environments, `_headers`, or `.htaccess` without understanding how it works**
