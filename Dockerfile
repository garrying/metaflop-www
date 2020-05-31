FROM ruby:2.5
RUN apt-get update && apt-get install fontforge -y \
    python-fontforge \
    texlive-metapost
RUN mkdir /metaflop
WORKDIR /metaflop
COPY Gemfile /metaflop/Gemfile
COPY Gemfile.lock /metaflop/Gemfile.lock
RUN bundle install
COPY . /metaflop

EXPOSE 9292

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
