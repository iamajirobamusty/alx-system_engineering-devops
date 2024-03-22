# A script to create a file school in the directory tmp
file { '/tmp/school':

group   => 'www-data',
owner   => 'www-data',
content => 'I love puppet',
mode    => '0744'
}
