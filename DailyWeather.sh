#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Exit if required commands are not installed
if ! command_exists curl || ! command_exists jq; then
    echo "Error: Required command(s) not found. Please install 'curl' and 'jq'."
    exit 1
fi

#Parameters for API call
units='imperial'
lat=27.336435
lon=-82.530655
key="${WEATHER_API_KEY}"

#Construct URL with parameter strings
url="https://api.openweathermap.org/data/3.0/onecall?lat=${lat}&lon=${lon}&units=${units}&exclude=part&appid=${key}"

# Function to get weather data
get_weather_data() {
    local response=$(curl -s "$url")
    if [ -z "$response" ]; then
        echo "Error: No response from weather API."
        return 1
    fi

    local temp=$(echo $response | jq '.current.temp')
    local dailySum=$(echo $response | jq '.daily[0].summary')
    if [ -z "$temp" ] || [ -z "$dailySum" ]; then
        echo "Error: Unable to parse weather data."
        return 1
    fi

    echo "Hola SAFARI, today is $(date)"
    echo "$dailySum"
    echo "It's going to be $temp out today"
}

# Call the function
get_weather_data


