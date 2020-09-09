![](https://img.shields.io/badge/Arista-EOS%20Automation-blue) ![GitHub](https://img.shields.io/github/license/aristanetworks/ansible-avd)

# Ansible Arista Validated Design

__Content used during ipSpace webinar

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Ansible Arista Validated Design](#ansible-arista-validated-design)
  - [Lab Topology](#lab-topology)
  - [Quick Start](#quick-start)
  - [Requirements](#requirements)
  - [Step by Step demo](#step-by-step-demo)

<!-- /code_chunk_output -->

Repository provides modules and roles to build an EVPN/VXLAN fabric using Ansible to build and deploy configuration to devices.

Devices configuration are based on [Arista EVPN Design Guide](https://www.arista.com/en/solutions/design-guides) and cover a generic Unified Cloud Network environment.

![arista-bgp-evpn-fabric](medias/evpn-deploy-cvp.gif)

## Lab Topology

The Lab topology consists of four spines, seven L3 leafs and and three L2 Leafs, deployed on vEOS-LAB.

![Lab Topology](medias/topology.gif)

## Quick Start

```shell
# Start a pre-configured shell using docker
$ make shell

# Install AVD and CVP collection
$ make install

# Edit Inventory file
$ vim inventories/DC{1|2}/inventory.yml

# Edit fabric variables
# Change values to point to your own information
$ vim inventories/DC{1|2}/group_vars/DC1_FABRIC.yml

# Run ansible playbooks

< TO BE DESIGNED >

```

## Requirements

- Docker to run pre-configured shell
- EOS Topology
- Cloudvision instance

## Step by Step demo

Work In Progress
