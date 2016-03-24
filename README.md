# Sinatra Assets Seed

A very simple sinatra app with baked in assets pipeline.

## Why

Sinatra is great to provide small one time apps, but today you really need some way to deal with your front end assets.

After messing with lots of discontinued and old gems to handle my assets I've found:

- http://sparkmasterflex.com/singing-a-ruby-on-rails-ditty-with-sinatra/
- http://javivelasco.com/blog/badass-asset-pipeline/
- https://mutelight.org/asset-pipeline

And put together this.

## How

We have latest sprockets (without the entire rails dependencies), and can use gem assets (like bootstrap) or the awesome [Torba](https://github.com/torba-rb/torba) for GitHub releases, Zip Files, Tar.gz files and **NPM PACKAGES** (like jquery on the example).

## Todo

This would be a great Sinatra gem.
