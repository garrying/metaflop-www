FROM ruby:2.5
RUN apt-get update && apt-get install fontforge -y \
    python-fontforge \
    texlive \
    texlive-metapost
RUN mkdir /metaflop
WORKDIR /metaflop
COPY Gemfile /metaflop/Gemfile
COPY Gemfile.lock /metaflop/Gemfile.lock
COPY ./bin/sfnt2woff/sfnt2woff /usr/bin/sfnt2woff
COPY ./bin/ttf2eot/ttf2eot /usr/bin/ttf2eot
RUN bundle install
COPY . /metaflop

EXPOSE 9292

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
