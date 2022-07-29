#!/bin/bash

ZOLA=$(command -v zola)
ZOLA_VERSION=0.14.0

if ! [ -x "$ZOLA" ]; then
    if [ -z $CI ]; then
        echo 'Error: zola is not installed.' >&2
        exit 1
    else
        wget -q "https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
        tar -xf *.tar.gz
        chmod +x zola
        ZOLA="./zola"
    fi
fi

if [ -z $CF_PAGES ]; then
    $ZOLA build
elif [ "$CF_PAGES_BRANCH" == "main" ]; then
    echo "Building production deployment with url https://rocketry.pages.dev"
    $ZOLA build --base-url https://rocketry.pages.dev
else
    echo "Building preview deployment with url $CF_PAGES_URL"
    $ZOLA build --base-url $CF_PAGES_URL
fi