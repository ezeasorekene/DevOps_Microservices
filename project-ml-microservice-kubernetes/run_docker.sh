#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t ezeasorekene/alxproject:4.1 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it -p 8000:80 ezeasorekene/alxproject:4.1
