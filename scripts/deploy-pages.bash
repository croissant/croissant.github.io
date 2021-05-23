#!/bin/bash

echo "Hello Github Actions" > docs/index.html
git add docs
git commit -m "Actions Test."
git push origin main

