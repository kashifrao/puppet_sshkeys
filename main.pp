

class  project::main
   {

   
 
# ---------------------------------------------------------------------------- 
# setting userxxx ssh key on every vm

 
  
#create directory for userxxx ssh keys  
   file { "/home/userxxx/":
    ensure => directory,
     owner  => 'userxxx',
    group  => 'master',
    mode   => '0700',
  }
  
#create directory for userxxx ssh keys  
   file { "/home/userxxx/.ssh":
    ensure => directory,
     owner  => 'userxxx',
    group  => 'master',
    mode   => '0755',
  }
  
   
 
 
# putting userxxx ssh keys   
ssh_authorized_key { 'userxxx@example.com':
  user => 'userxxx',
  type => 'ssh-rsa',
  ensure => 'present',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+WTou7/Z8GYbFkxxSSGlph3kvRXsb9PDZ+EHh0KsfWVcLScsZyfZ11PEH+i2uE8BRS9GprAwuXQX4P9crVzX4cz994YGTvgl5zJJHO+A0mM9YkcfXJT3F11jvTGpOZyOJYhyYnqM7gUyqzzCrkck4F/ZGdqpnAkzPJQ0/f..............',
}

  

# ----------------------------------------------------------------------------
# Add any additional settings *above* this comment block.
# ----------------------------------------------------------------------------

   
}
