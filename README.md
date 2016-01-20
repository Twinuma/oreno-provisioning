# oreno-provisioning

## Gentting Start
- [Vagrant](https://www.vagrantup.com/)
- [Ansible](http://docs.ansible.com/ansible/intro_installation.html)

## GitHub
[Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)

## Commands
### Start up Vagrant
```
cd {root_directory}/provisioning
vagrant up
```

### ssh config
```
vagrant ssh-config --host 192.168.33.10 >> ~/.ssh/config
```

### Execute playbook
```
ansible-playbook -i hosts api.yml
```

