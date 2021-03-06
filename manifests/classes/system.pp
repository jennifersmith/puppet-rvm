class rvm::system($version='latest',$homedir) {    
   include rvm::dependencies

  exec { 'system-rvm':
    path    => '/usr/bin:/usr/sbin:/bin',
    command => "bash -c '/usr/bin/curl -L https://get.rvm.io -o rvm-installer ; chmod +x rvm-installer ; ./rvm-installer'",
    creates => "${homedir}/.rvm",
    require => [
      Class['rvm::dependencies'],
    ],
  }

}
