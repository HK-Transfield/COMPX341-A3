#!/bin/bash

# Harmon Transfield
# 1317381


handle_git {
    echo "Commiting changes and pushing repository to Github"
    git add .
    git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    git push
    echo "Changes successfully pushed to Github"
}

install_and_build_app {
    echo "(0) Find correct directory"
    cd assets/

    echo "(1) Install modules"
    npm install

    echo "(2) Build (compiling the application)"
    npm run build
}

start_app {
    echo "(3) Start (run the application)"
    npm run start
}

handle_error {
    echo "An error was encountered while building!"
    exit
}

(install_and_build_app && handle_git && start_app) || handle_error
