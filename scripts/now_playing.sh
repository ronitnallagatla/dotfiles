#!/bin/bash

now_playing=$(playerctl metadata --format '   {{artist}} - {{title}}')

echo "$now_playing"
