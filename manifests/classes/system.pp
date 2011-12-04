class rvm::system($version='latest',$user) {    
   include rvm::dependencies

  exec { 'system-rvm':
    path    => '/usr/bin:/usr/sbin:/bin',
    command => "bash -c '/usr/bin/curl -s https://rvm.beginrescueend.com/install/rvm -o rvm-installer ; chmod +x rvm-installer ; ./rvm-installer'",
    creates => "/Users/${user}/.rvm",
    require => [
      Class['rvm::dependencies'],
    ],
  }

}
