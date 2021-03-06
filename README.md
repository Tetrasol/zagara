# Zagara

Docker Swarm based Openstack Deployment

## Development

### Ansible

[Vagrant Ansible Docs](https://www.vagrantup.com/docs/provisioning/ansible.html)
[Ansible Docs](http://docs.ansible.com/)
[Valdhaus.co - Ansible Mac OSX](https://valdhaus.co/writings/ansible-mac-osx/)
[Ansible Galaxy](https://galaxy.ansible.com)
[Ansible for DevOps Github](https://github.com/geerlingguy/ansible-for-devops)
[Mitaka] (http://docs.openstack.org/mitaka/install-guide-ubuntu/)

### Docker

### Vagrant

To start application development install [Vagrant](https://www.vagrantup.com)

Vagrant will deploy three nodes:

* AnsibleMaster
* OpenStackController
* OpenStackCompute

`vagrant ssh AnsibleMaster`

`cd ~/workspace`

Run ansible dependecies:
`ansible-galaxy install -r requirements.yml`

then you can run ansible playbooks:

Run a playbook: `ansible-playbook <task-path>`

