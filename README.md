# Metaflop
[![Build Status](https://travis-ci.com/garrying/metaflop-www.svg?branch=master)](https://travis-ci.com/garrying/metaflop-www)

[Metaflop](http://www.metaflop.com) is an easy to use free and open source web application for modulating your own fonts. Metaflop uses [METAFONT](https://en.wikipedia.org/wiki/Metafont), which allows you to easily customize a font within the given parameters and generate a large range of font families with very little effort.

This is a forked version based on [metaflop/metaflop-www](https://github.com/metaflop/metaflop-www) by Alexis Reigel and Marco Müller. The main update in this version is the tooling, and database, are in Docker containers. The goal is to provide a reproducible environment for Modulator.

## Installation
- Install [Docker Compose](https://docs.docker.com/compose/install/)
- Clone the repository: `git clone git@github.com:garrying/metaflop-www.git && cd metaflop-www`
- Create a `db.yml` from the sample: `cp ./config/db.yml.sample ./config/db.yml`
- Run Docker Compose: `docker-compose up`
- After the containers are built and running, visit `http://127.0.0.1:9292`

## License

The source code of this project and the METAFONTs are licensed under the [GNU General Public License v3.0 (GPL)](http://www.gnu.org/copyleft/gpl.html). This means you can use and extend the source code, as long as you distribute the source code freely under the same license. This license also allows for commercial use.
