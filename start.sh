#! /bin/sh

/app/takin add-token $1 440
/app/takin start

tail -f /dev/null
