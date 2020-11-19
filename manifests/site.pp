node default {
 
}

node 'puppet.writeclerks.com' {
  include role::master_server
  file {'/root/README':
   ensure  => file,
   content => $fqdn,
   }
}

node /^mine/ {
 include role::minecraft_server
}

node /^web/ {
 include role::app_server
}
 
node /^db/ {
 include role::db_server
}
