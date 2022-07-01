#!/bin/bash
if [ -z $CF_PAGES ]; then
    zola build
elif [ "$CF_PAGES_BRANCH" == "main" ]; then
    zola build --base-url rocketry.pages.dev
else
    zola build --base-url $CF_PAGES_URL
fi