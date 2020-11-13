node default {
 
}

node 'puppet.writeclerks.com' {
  include role::master_server
}
