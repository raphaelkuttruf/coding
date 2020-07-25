cp .bash_aliases ~

if [[ -f "~/.ssh/id_rsa_github" ]]
then
echo "The configured SSK Key already exists."
else
echo "The configured SSK Key doesn't exist. Let's create one."
read -p "Your Email: " email
    ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/id_rsa_github
fi