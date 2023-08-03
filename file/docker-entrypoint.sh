#!/bin/sh

echo "Starting Mongodb, setting admin password, and starting COP!"

/usr/bin/mongod --config /etc/mongod.conf  &
cd cop
node support.js $admin_pass
node app.js &

#ENTRYPOINT ["tail", "-f", "/dev/null"]
exec "$@"