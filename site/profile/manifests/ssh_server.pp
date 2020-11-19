class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@puppet.writeclerks.com':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPzpP1ydOhvxwfaIzj/NobdjeXCcgF/1dzAxG9pPOL+ekp7jgLTT2TKtObgIqXZzBNqaFSlfE+3Rvffq3fWsIf+aAe4LXm4z7Y1zQ0tuA1c7V/i8UEEn6VXwmEGSws7ittaculn6Ttt0yH30LbaatXh+vgqECpScOTfcNBSpCzmR5YKU9a4izgHyXbl+rKHbWxxlEM2ZDKbzmSmqAuXoVu2CHQhFnbq38rCcKjfHkwyOpyB+vFws0tLxFQFrMIM1z8US49wncEEilhkUuVPFMi+suHSzxvbqwvALA/md9BUnWdAHm+n2DaLpoFZuGOd8AzX0D+SNj0qCrlsEkUVSEXnPW23jcLw4hKhKrX6QIh0yGDJmUdVvLXoNbBeMizTjD6X9sn7r6exeMX8x1Gqycx9c1bkfKT0jpgKq5SXEUd/F243FLcNZMS99H4KlRA/B45KAhnMuzNnlqDP+qkmqLNIV2P5adO8FmWD6tahck6kS2e4fvxfPlIMy47oFrWoYk=',
        }
}
