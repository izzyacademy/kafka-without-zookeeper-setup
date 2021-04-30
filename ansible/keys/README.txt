
Once you are able to get into the docker container, this directory should be mounted at the absolute path /ansible-keys

This directory is used to store the generated RSA public and private keys you will be using to access 

the remote servers manually and via Ansible

Make sure you run the following commands to genrate the RSA keys and set the appropriate security permissions

# Generate the RSA Private Key and Public Key Pair
ssh-keygen -b 2048 -t rsa -N '' -f kraftdemo -C "kraftdemo"

# Change the Permissions
chmod -R 0600 kraftdemo*

