# alter ssh_config file to allow login without authentication and chage the private key file
file_line {'turn off password authentication':

ensure     => 'present',
path       => '/etc/ssh/ssh_config',
line       => '    PasswordAuthentication no',
}
file_line {'Delcare identity file':

ensure  => 'present',
path    => '/etc/ssh/ssh_config',
line    => '    IdentityFile ~/.ssh/school',
}
