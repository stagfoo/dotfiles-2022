#!/bin/bash

npm version $1;
npm run build;
git push;
git push --tags;
npm publish;