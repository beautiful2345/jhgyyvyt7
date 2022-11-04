#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6b6fc4a2-7392-4140-b0dc-3ffcbfa89dc0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

