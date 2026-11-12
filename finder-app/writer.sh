
#!/bin/bash

# Validate arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

writefile="$1"
writestr="$2"

# Create parent directories
writedir=$(dirname "$writefile")

if ! mkdir -p "$writedir"; then
    echo "Error: Could not create directory."
    exit 1
fi

# Write content to the file
if ! printf '%s\n' "$writestr" > "$writefile"; then
    echo "Error: Could not write to file."
    exit 1
fi

exit 0

