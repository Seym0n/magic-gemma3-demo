#!/bin/bash

# Start Ollama server in the background
ollama serve &

# Wait for Ollama server to start
sleep 5

# Pull gemma3 model
ollama pull qwen3.5:0.8b

# Wait for the Ollama server to finish 
wait $!
