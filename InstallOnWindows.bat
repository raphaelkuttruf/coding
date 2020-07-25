copy .bashrc %HOMEPATH%\.bashrc
mkdir %HOMEPATH%\.ssh
copy config %HOMEPATH%\.ssh

if exist %HOMEPATH%\.ssh\trash_id_rsa_github (
    echo SSH Key file exists
) else (
    echo SSH Key file doesn't exist
    echo Let's create one.
    set /p email="Your Email: "
    echo %email%
)

sleep 10
exit