eos_dci
=========

Role to generate a __datacenter interconnect__ (DCI) configuration to stretch EVPN across 2 different L3LS fabric.

Requirements
------------

None

Role Variables
--------------

- Create a host_var file with following structure

```yaml
---
dci_ethernet_interfaces:
    Ethernet5:
      peer: DC1-BL01A
      peer_interface: Ethernet5
      peer_type: leaf
      description: P2P_LINK_TO_DDC1-BL01A_Ethernet5
      mtu: 1500
      type: routed
      ip_address: 172.255.0.0/31
dci_bgp:
  neighbors:
    172.32.255.4:
      peer_group: DCI-IPv4-UNDERLAY-PEERS
    172.32.255.4:
      peer_group: DCI-EVPN-OVERLAY-PEERS
  peer_groups:
      DCI-IPv4-UNDERLAY-PEERS:
        type: ipv4
        remote_as: 65002
        password: "AQQvKeimxJu+uGQ/yYvv9w=="
        maximum_routes: 12000
        send_community: true
      DCI-EVPN-OVERLAY-PEERS:
        type: evpn
        remote_as: 65002
        update_source: Loopback0
        bfd: true
        ebgp_multihop: 3
        password: "q+VNViP5i4rVjW1cxFv2wA=="
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

Data structure replicate data model from [arista.avd.eos_cli_config_gen](https://github.com/aristanetworks/ansible-avd/tree/devel/ansible_collections/arista/avd/roles/eos_cli_config_gen):

- [`dci_ethernet_interfaces`](https://github.com/aristanetworks/ansible-avd/tree/devel/ansible_collections/arista/avd/roles/eos_cli_config_gen#ethernet-interfaces)
- [`dci_bgp`](https://github.com/aristanetworks/ansible-avd/tree/devel/ansible_collections/arista/avd/roles/eos_cli_config_gen#router-bgp-configuration)


Dependencies
------------

This role must be used in addition to [arista.avd](https://galaxy.ansible.com/arista/avd) collection

Example Playbook
----------------

```yaml
---
- name: Build Switch configuration
  hosts: DC2_FABRIC
  connection: local
  gather_facts: false
  collections:
    - arista.avd
    - arista.cvp
  tasks:
    - name: build local folders
      tags: [build]
      import_role:
        name: build_output_folders
    - name: generate intented variables
      tags: [build]
      import_role:
        name: eos_l3ls_evpn
    - name: generate DCI device structured config
      tags: [build]
      import_role:
         name: eos_dci
    - name: generate device intended config and documention
      tags: [build]
      import_role:
        name: eos_cli_config_gen
    - name: deploy configuration to device
      tags: [deploy, never]
      import_role:
         name: arista.avd.eos_config_deploy_eapi
```

License
-------

Apache
