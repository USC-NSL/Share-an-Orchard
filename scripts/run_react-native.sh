#!/bin/bash

# Run the ReactJS web server.

# Get the path to THIS script (in the scripts dir), and go to the parent dir.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..
cd $DIR/react-native

# For local testing
export REACT_APP_FLASK_URL=http://localhost:19006/


# For running react locally, but using the gcloud hosted flask
#export REACT_APP_FLASK_URL=https://sciflask-dot-openag-v1.appspot.com

# for testing web app locally
expo start:web & firefox http://localhost:19006/
