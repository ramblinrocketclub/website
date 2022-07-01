#!/bin/bash
if [ -z $CF_PAGES ]; then
    zola build
elif [ "$CF_PAGES_BRANCH" == "main" ]; then
    echo "Building production deployment with url https://rocketry.pages.dev"
    zola build --base-url https://rocketry.pages.dev
else
    echo "Building preview deployment with url $CF_PAGES_URL"
    zola build --base-url $CF_PAGES_URL
fi