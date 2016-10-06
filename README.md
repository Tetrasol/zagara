# Zagara

Docker Swarm based Openstack Deployment

## Development

### Vagrant

To start application development install [Vagrant](https://www.vagrantup.com)

Vagrant will deploy three nodes:

- AnsibleMaster
- OpenStackController
- OpenStackCompute

`vagrant ssh AnsibleMaster`
`cd ~/workspace`
Run ansible dependecies: `ansible-galaxy install -r requirements.yml`

then you can run ansible playbooks:

Run a playbook: `ansible-playbook <task-path>`

