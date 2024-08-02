#!/bin/sh

PASSWORD=${INPUT_PASSWORD};
KEY=${INPUT_KEY};

if [ -z "$KEY" ] && [ -z "$PASSWORD" ]; then
#     echo "🔑 Please provide at least a key or a password...";
#     exit 0;
	echo "🔑 Without key file or password...";
	source /without_key_or_pass.sh;
	exit 0;
fi

if [[ -n "$KEY" ]]; then
    echo "🔑 Using key file...";
    source /with_key.sh;
else
    echo "🔑 Using password...";
    source /with_pass.sh;
fi