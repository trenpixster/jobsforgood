FROM ruby:2.3.3

RUN apt-get update \
    && apt-get install -y --force-yes nodejs \
    && rm -rf /var/lib/apt/lists/*
