#!/bin/bash

# Function to start Svelte development server
start_svelte() {
    echo "Starting Svelte development server..."
    cd app/views
    npm run dev
}

# Function to start Django app
start_django() {
    echo "Starting Django app..."
    cd app/server
    python3 manage.py runserver
}

# Function to run both servers
start_servers() {
    start_svelte &
    start_django &
    wait
}

# Main script
echo "Starting Svelte and Django servers..."
start_servers
