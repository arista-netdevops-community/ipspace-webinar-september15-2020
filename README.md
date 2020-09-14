![](https://img.shields.io/badge/Arista-EOS%20Automation-blue) ![GitHub](https://img.shields.io/github/license/aristanetworks/ansible-avd)

# ipSpace Webinar with Ansible Arista Validated Design

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [ipSpace Webinar with Ansible Arista Validated Design](#ipspace-webinar-with-ansible-arista-validated-design)
  - [Lab Topology](#lab-topology)
  - [Quick Start](#quick-start)
  - [Requirements](#requirements)
  - [Step by Step demo](#step-by-step-demo)
    - [Provision border-leaf devices](#provision-border-leaf-devices)
      - [DC1 Inventory file](#dc1-inventory-file)
      - [DC2 Inventory file](#dc2-inventory-file)
      - [DC1 Fabric in group_vars](#dc1-fabric-in-group_vars)
      - [DC2 Fabric in group_vars](#dc2-fabric-in-group_vars)
      - [Run playbooks](#run-playbooks)
    - [Apply DCI configuration to border-leaf devices](#apply-dci-configuration-to-border-leaf-devices)
      - [Configure DCI on DC1](#configure-dci-on-dc1)
      - [Insert role for DCI in DC2](#insert-role-for-dci-in-dc2)
    - [Validate EOS device states](#validate-eos-device-states)
    - [Configure a new set of L2 and L3 services](#configure-a-new-set-of-l2-and-l3-services)
  - [License](#license)

<!-- /code_chunk_output -->

This repository provides an example on how to build an EVPN/VXLAN fabric using Ansible Collection For Arista Validated Designs (arista.avd)- to build and deploy configuration to devices.

Devices configuration are based on [Arista EVPN Design Guide](https://www.arista.com/en/solutions/design-guides) and cover a generic Unified Cloud Network environment.

![arista-bgp-evpn-fabric](medias/evpn-deploy-cvp.gif)

## Lab Topology

The Lab topology consists of two L3 leaf and spine EVPN fabrics, DC1 and DC2, deployed on vEOS-LAB.

![Lab Topology](medias/topology.gif)

## Quick Start

Below is the manual process to install collection and repository

```shell
# Clone current repository
$ git clone https://github.com/arista-netdevops-community/ipspace-webinar-september15-2020.git
$ cd ipspace-webinar-september15-2020

# Start a pre-configured shell using docker
$ docker build -t arista_ansible .
$ docker run -it --rm arista_ansible

# Edit Inventory file
$ vim inventories/DC{1|2}/inventory.yml

# Edit fabric variables
# Change values to point to your own information
$ vim inventories/DC{1|2}/group_vars/DC1_FABRIC.yml

# Run ansible playbooks

# Build EOS configuration for both DCs:
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags build -i inventories/DC2/inventory.yml

# Deploy configuration to both DCs:
# Tasks on CV must be executed manually
$ ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-eapi.yml --tags provision -i inventories/DC2/inventory.yml

# Validate EOS state
$ ansible-playbook playbooks/dc1-fabric-validate-state.yml -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-validate-state.yml -i inventories/DC2/inventory.yml
```

## Requirements

- Docker to run [pre-configured shell](https://www.avd.sh/docs/installation/setup-environement/)
- EOS Topology:
  - 2 different fabrics running with standard AVD configuration
  - All topologies registered in a single Cloudvision instance
  - Border Leaves registered in CVP and still in ZTP mode (part of undefined container)
- A single Cloudvision instance up and running

## Step by Step demo

This section will go through step-by-step commands used during the webinar. It does not cover initial fabric provisioning.

### Provision border-leaf devices

Edit inventories to uncomment border-leaf devices

#### DC1 Inventory file

Edit [inventory.yml](inventories/dc1/../DC1/inventory.yml)

```yaml
all:
  children:
    AVD_LAB:
      children:
        DC1_FABRIC:
          children:
[...]
                DC1_BL1:
                  hosts:
                    DC1-BL1A:
                      ansible_host: 192.168.200.110
                    DC1-BL1B:
                      ansible_host: 192.168.200.111
```

#### DC2 Inventory file

Edit [inventory.yml](inventories/dc1/../DC2/inventory.yml)

```yaml
all:
  children:
    AVD_LAB:
      children:
        DC2_FABRIC:
          children:
[...]
                DC2_BL1:
                  hosts:
                    DC2-BL1A:
                      ansible_host: 192.168.200.155
                    DC2-BL1B:
                      ansible_host: 192.168.200.156
```

Then, we must uncomment group_vars related to Border Leaf devices

#### DC1 Fabric in group_vars

Edit [DC1_FABRIC.yml](inventories/dc1/../DC1/group_vars/DC1_FABRIC.yml)

```yaml
l3leaf:
[...]
    DC1_BL1:
      bgp_as: 65104
      filter:
        tenants: [ all ]
        tags: [ wan ]
      nodes:
        DC1-BL1A:
          id: 6
          mgmt_ip: 192.168.200.110/24
          spine_interfaces: [ Ethernet6, Ethernet6, Ethernet6, Ethernet6 ]
        DC1-BL1B:
          id: 7
          mgmt_ip: 192.168.200.111/24
          spine_interfaces: [ Ethernet7, Ethernet7, Ethernet7, Ethernet7 ]
```

#### DC2 Fabric in group_vars

Edit [DC2_FABRIC.yml](inventories/dc1/../DC2/group_vars/DC2_FABRIC.yml)

```yaml
l3leaf:
[...]
    DC2_BL1:
      bgp_as: 65202
      filter:
        tenants: [ all ]
        tags: [ wan ]
      nodes:
        DC2-BL1A:
          id: 3
          mgmt_ip: 192.168.200.155/24
          spine_interfaces: [ Ethernet3, Ethernet3 ]
        DC2-BL1B:
          id: 4
          mgmt_ip: 192.168.200.156/24
          spine_interfaces: [ Ethernet4, Ethernet4 ]
```

#### Run playbooks

- Generate EOS configuration and documentation

_Playbook_: [dc{1|2}-fabric-deploy-cvp.yml](playbooks/dc1-fabric-deploy-cvp.yml)

```shell
# Shortcut command
$ make dc-build

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags build -i inventories/DC2/inventory.yml
```

- Provision changes on Cloudvision

_Playbook_: [dc{1|2}-fabric-deploy-cvp.yml](playbooks/dc1-fabric-deploy-cvp.yml)

```shell
# Shortcut command
$ make dc-deploy-cvp

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags provision -i inventories/DC2/inventory.yml
```

### Apply DCI configuration to border-leaf devices

Now our border leaves have been included in their respective fabric but DCI configuration is not applied yet. This section will show you how to do that.

Because AVD provides 2 different approaches, we will detail both of them:

- Upload configlets and configure AVD to attach them to devices (use-case for DC1)
- Insert an intermediate role to generate DCI configuration (use-case for DC2)

#### Configure DCI on DC1

Configlets are stored in [inventories/dc1/configlets/](inventories/dc1/configlets/) folder.

Pre-defined configlets have been pre-staged with the required configuration:

- DCI_DC1-BL1A.conf
- DCI_DC1-BL1A.conf

Update border leaf configuration in AVD, to bind the configlets to the device.

Edit [DC1_FABRIC.yml](inventories/dc1/../DC1/group_vars/DC1_FABRIC.yml)

```yaml
cv_configlets:
  devices:
    DC1-BL1A:
      - DC1-CUSTOM_DCI_DC1-BL1A
    DC1-BL1B:
      - DC1-CUSTOM_DCI_DC1-BL1B
```

- Provision changes on Cloudvision

_Playbook_: [dc1-fabric-deploy-cvp.yml](playbooks/dc1-fabric-deploy-cvp.yml)

```shell
# Shortcut command
$ make dc1-deploy-cvp

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/DC1/inventory.yml
```

#### Insert role for DCI in DC2

- Configure [`host_vars`](inventories/DC2/host_vars/DC2-BL1A.yml) for border leaves on DC2

```yaml
---
dci_ethernet_interfaces:
    Ethernet10:
      peer: DC1-BL1A
      peer_interface: Ethernet10
      peer_type: leaf
      description: P2P_LINK_TO_DC1-BL1A_Ethernet10
      mtu: 1500
      type: routed
      ip_address: 172.31.0.1/31
dci_bgp:
  neighbors:
    172.31.0.0:
      peer_group: DCI-IPv4-UNDERLAY-PEERS
    192.168.251.10:
      peer_group: DCI-EVPN-OVERLAY-PEERS
  peer_groups:
      DCI-IPv4-UNDERLAY-PEERS:
        type: ipv4
        remote_as: 65104
        # password: "AQQvKeimxJu+uGQ/yYvv9w=="
        maximum_routes: 12000
        send_community: true
      DCI-EVPN-OVERLAY-PEERS:
        type: evpn
        remote_as: 65104
        update_source: Loopback0
        bfd: true
        ebgp_multihop: 3
        # password: "q+VNViP5i4rVjW1cxFv2wA=="
        send_community: true
        maximum_routes: 0
  address_family_evpn:
    peer_groups:
      DCI-EVPN-OVERLAY-PEERS:
        activate: true
  address_family_ipv4:
    peer_groups:
      DCI-IPv4-UNDERLAY-PEERS:
        activate: true
```

> Do the same things for DC2-BL1B

- Check playbook runs [`eos_dci`](roles/eos_dci/README.md) role

_Playbook_: [dc2-fabric-deploy-cvp.yml](playbooks/dc2-fabric-deploy-cvp.yml)

```yaml
---
- name: Build Switch configuration
  hosts: DC2_FABRIC
  connection: local
  gather_facts: no

  tasks:

    - name: include global_vars
      tags: [build, provision]
      include_vars: "{{ item }}"
      with_items:
        - "../global_vars/AVD_LAB.yml"
        - "../global_vars/EOS.yml"

    - name: generate intented variables
      tags: [build]
      import_role:
         name: arista.avd.eos_l3ls_evpn

    - name: generate intented DCI variables
      tags: [build, provision]
      import_role:
         name: eos_dci

    - name: generate device intended config and documention
      tags: [build]
      import_role:
         name: arista.avd.eos_cli_config_gen
```

```shell
# Shortcut command
$ make dc2-build
$ make dc2-deploy-cvp

# Ansible command
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags build -i inventories/DC2/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags provision -i inventories/DC2/inventory.yml
```

### Validate EOS device states

In this section, we will check our EOS devices that are configured based on __structured-config__ generated with the build phase.

_Playbook_: [dc{1|2}-fabric-validate-state.yml](playbooks/dc1-fabric-validate-state.yml)

```shell
# Shortcut command
$ make dc-validate-state

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-validate-state.yml -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-validate-state.yml -i inventories/DC2/inventory.yml
```

### Configure a new set of L2 and L3 services

In this section, we are going to deploy services across both fabric

- Update configuration in DC1

Edit file [DC1_TENANT_NETWORKS.yml](inventories/DC1/group_vars/DC1_TENANTS_NETWORKS.yml) and uncomment configuration for `Tenant_A_APP_Zone` and vlan `160`:

```yaml
# DC1 Tenants Networks
# Documentation of Tenant specific information - Vlans/VRFs
tenants:
# Tenant A Specific Information - VRFs / VLANs
  Tenant_A:
    mac_vrf_vni_base: 10000
    vrfs:
      Tenant_A_APP_Zone:
        vrf_vni: 12
        svis:
          130:
            name: Tenant_A_APP_Zone_1
            tags: [ app, erp1 ]
            enabled: true
            ip_address_virtual: 10.1.30.1/24
          131:
            name: Tenant_A_APP_Zone_2
            tags: [ app ]
            enabled: true
            ip_address_virtual: 10.1.31.1/24

    l2vlans:
      160:
        name: Tenant_A_VMOTION
        tags: [ vmotion ]
```

- Update configuration in DC2

Edit file [DC2_TENANT_NETWORKS.yml](inventories/DC2/group_vars/DC2_TENANTS_NETWORKS.yml) and uncomment configuration for `Tenant_A_APP_Zone` and vlan `160`:

```yaml
# DC1 Tenants Networks
# Documentation of Tenant specific information - Vlans/VRFs
tenants:
# Tenant A Specific Information - VRFs / VLANs
  Tenant_A:
    mac_vrf_vni_base: 10000
    vrfs:
      Tenant_A_APP_Zone:
        vrf_vni: 12
        svis:
          230:
            name: Tenant_A_APP_Zone_1
            tags: [ app, erp1 ]
            enabled: true
            ip_address_virtual: 10.2.30.1/24
          231:
            name: Tenant_A_APP_Zone_2
            tags: [ app ]
            enabled: true
            ip_address_virtual: 10.2.31.1/24

    l2vlans:
      260:
        name: Tenant_A_VMOTION
        tags: [ vmotion ]
```

- Generate EOS configuration and documentation

_Playbook_: [dc{1|2}-fabric-deploy-cvp.yml](playbooks/dc1-fabric-deploy-cvp.yml)

```shell
# Shortcut command
$ make dc-build

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags build -i inventories/DC2/inventory.yml
```

- Provision changes on Cloudvision

_Playbook_: [dc{1|2}-fabric-deploy-cvp.yml](playbooks/dc1-fabric-deploy-cvp.yml)

```shell
# Shortcut command
$ make dc-deploy-cvp

# Ansible command
$ ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/DC1/inventory.yml
$ ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags provision -i inventories/DC2/inventory.yml
```

## License

Project is published under [Apache License](License).
