Notion CloudFlare Worker Deployment
====

[Cloudflare Workers](http://developers.cloudflare.com/workers/) allow you to write JavaScript which runs on all of Cloudflare's
160+ global data centers. This repo is an example of how to combine multiple files and dependencies to create a Worker using
the [Webpack](https://webpack.js.org/) build tool.

This worker simply modifies your Notion slug to a friendlier version

### Dependencies

- [yarn](https://yarnpkg.com/)
- [cURL](https://curl.haxx.se/) (for the deployment script)

### Instructions

**Assumes you have done pre-requisites below**

- `git clone https://github.com/austinellingwood/notion-cloudflare-worker.git`
- `cd notion-cloudflare-worker`
- `yarn`
- `yarn build`

To deploy the worker, make sure the `slugs.json` file is up to date and you have updated the variables in the `deploy.sh` file:

- `yarn deploy`

To update the slugs on your site:
- Navigate to your Notion site
- Find the slug by looking in your URL address bar
- Add an entry to the `slugs.json` file with the `key:value` pair of `slug:<page-id>`
  - `page-id` is going to be something like `48806c576d634cabb6acc5fdb2e1d352`, for example, for something like `https://treyharnden.com/Goal-board-48806c576d634cabb6acc5fdb2e1d352`, you would copy everything after the last `-`.
- After you have updated all the slugs in the json file, do not forget to re-run `yarn build`, or else you will still have all of your old slugs in the latest build
- run `yarn deploy`

### Developer Tools && Homebrew && Yarn Install

#### Install Developer Tools
- Open your terminal
- run `xcode-select --install`
    - may need to do `sudo xcode-select --install` and enter your password (**Note**: password will be hidden)
- That's it, once this finishes you're officially a developer

#### Install Homebrew
- Open a new terminal
- run `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- may take some time

### Install Yarn
- Open a new terminal
- run `brew install yarn`
- That's it, development is so easy, right?