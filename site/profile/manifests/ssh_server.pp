class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service {'sshd':
                ensure => 'running',
                ensure => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm'
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDOe8l6snFEeTBZnETFKuiUKrn4JVvoaxnBKeGhS2IC89jrBKYvjxsvGUISQFCBSVZxW+CMqH1Gwyn/bFE02KK8gsmcshM9kMKDcOqtVwfE9Pn5ZTcztLZqzNoRbfFCGoJIoxVjx4Np8NigDlJJkgMfRBiqlBvlCwBQYY699z9H5tov4iCReuAO/9ZLKNLbKJGaOVCCeKFp2Y4DOz3R9vIiGEHY4XVxl8A/z6PyiKrHHOoXi0HfIofW1+fbeEa2BZWeEJX+BajrRjcYQsgPLrKUx1FcPRkHINuihN1bnctSLCn8uXvRbRAoINSFCgNE4XT5xTT2s/CA9jwTqyt0pMJb',
        }
}
