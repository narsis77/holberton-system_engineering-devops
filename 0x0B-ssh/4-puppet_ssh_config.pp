# Manifest to modify SSH config file
exec { 'echo':
  command => 'echo "    PasswordAuthentication no\n    IdentityFile ~/.ssh/holberton" >> /etc/ssh/ssh_config',
  path    => 'usr/bin:/bin',
  returns => [0,1],
}
