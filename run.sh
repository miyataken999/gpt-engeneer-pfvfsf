#!/bin/bash

# Install dependencies
npm install --save @google/clasp

# Run the script
npx clasp login
npx clasp create --type standalone --title "Create Events from Google Sheet"
npx clasp push -f Code.gs config.js test.gs
npx clasp run createEventsFromSheet
npx clasp run testCreateEventsFromSheet
