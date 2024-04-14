#!/bin/bash

# Function to install dependencies for SvelteKit
install_svelte_dependencies() {
    echo "Installing dependencies for SvelteKit..."
    cd app/views
    npm install
}

# Function to install dependencies for Django app
install_django_dependencies() {
    echo "Installing dependencies for Django app..."
    cd app/server
    pip3 install -r requirements.txt
}

# Function to install dependencies for both SvelteKit and Django apps
install_dependencies() {
    install_svelte_dependencies
    install_django_dependencies
}

# Main script
echo "Installing dependencies for SvelteKit and Django apps..."
install_dependencies
