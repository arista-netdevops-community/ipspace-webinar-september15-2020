# DC2_FABRIC

## Table of Contents

- [DC2_FABRIC](#dc2fabric)
  - [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Topology](#fabric-topology)
  - [Fabric IP Allocation](#fabric-ip-allocation)
    - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
    - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
    - [Overlay Loopback Interfaces (BGP EVPN Peering)](#overlay-loopback-interfaces-bgp-evpn-peering)
    - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
    - [VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-leafs-only)
    - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in Cloudvision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| DC2_FABRIC | l3leaf | DC2-BL1A | 192.168.200.155/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | l3leaf | DC2-BL1B | 192.168.200.156/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | l2leaf | DC2-L2LEAF1A | 192.168.200.157/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | l3leaf | DC2-LEAF1A | 192.168.200.153/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | l3leaf | DC2-LEAF1B | 192.168.200.154/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | spine | DC2-SPINE1 | 192.168.200.151/24 | vEOS-LAB | Provisioned |
| DC2_FABRIC | spine | DC2-SPINE2 | 192.168.200.152/24 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from Cloudvision.

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | DC2-BL1A | Ethernet1 | spine | DC2-SPINE1 | Ethernet3 |
| l3leaf | DC2-BL1A | Ethernet2 | spine | DC2-SPINE2 | Ethernet3 |
| l3leaf | DC2-BL1A | Ethernet3 | mlag_peer | DC2-BL1B | Ethernet3 |
| l3leaf | DC2-BL1A | Ethernet4 | mlag_peer | DC2-BL1B | Ethernet4 |
| l3leaf | DC2-BL1B | Ethernet1 | spine | DC2-SPINE1 | Ethernet4 |
| l3leaf | DC2-BL1B | Ethernet2 | spine | DC2-SPINE2 | Ethernet4 |
| l2leaf | DC2-L2LEAF1A | Ethernet1 | l3leaf | DC2-LEAF1A | Ethernet3 |
| l2leaf | DC2-L2LEAF1A | Ethernet2 | l3leaf | DC2-LEAF1B | Ethernet3 |
| l3leaf | DC2-LEAF1A | Ethernet1 | spine | DC2-SPINE1 | Ethernet1 |
| l3leaf | DC2-LEAF1A | Ethernet2 | spine | DC2-SPINE2 | Ethernet1 |
| l3leaf | DC2-LEAF1A | Ethernet13 | mlag_peer | DC2-LEAF1B | Ethernet13 |
| l3leaf | DC2-LEAF1A | Ethernet14 | mlag_peer | DC2-LEAF1B | Ethernet14 |
| l3leaf | DC2-LEAF1B | Ethernet1 | spine | DC2-SPINE1 | Ethernet2 |
| l3leaf | DC2-LEAF1B | Ethernet2 | spine | DC2-SPINE2 | Ethernet2 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.252.0/24 | 256 | 16 | 6.25 % |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| DC2-BL1A | Ethernet1 | 172.31.252.9/31 | DC2-SPINE1 | Ethernet3 | 172.31.252.8/31 |
| DC2-BL1A | Ethernet2 | 172.31.252.11/31 | DC2-SPINE2 | Ethernet3 | 172.31.252.10/31 |
| DC2-BL1B | Ethernet1 | 172.31.252.13/31 | DC2-SPINE1 | Ethernet4 | 172.31.252.12/31 |
| DC2-BL1B | Ethernet2 | 172.31.252.15/31 | DC2-SPINE2 | Ethernet4 | 172.31.252.14/31 |
| DC2-LEAF1A | Ethernet1 | 172.31.252.1/31 | DC2-SPINE1 | Ethernet1 | 172.31.252.0/31 |
| DC2-LEAF1A | Ethernet2 | 172.31.252.3/31 | DC2-SPINE2 | Ethernet1 | 172.31.252.2/31 |
| DC2-LEAF1B | Ethernet1 | 172.31.252.5/31 | DC2-SPINE1 | Ethernet2 | 172.31.252.4/31 |
| DC2-LEAF1B | Ethernet2 | 172.31.252.7/31 | DC2-SPINE2 | Ethernet2 | 172.31.252.6/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.253.0/24 | 256 | 6 | 2.35 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| DC2_FABRIC | DC2-BL1A | 192.168.253.5/32 |
| DC2_FABRIC | DC2-BL1B | 192.168.253.6/32 |
| DC2_FABRIC | DC2-LEAF1A | 192.168.253.3/32 |
| DC2_FABRIC | DC2-LEAF1B | 192.168.253.4/32 |
| DC2_FABRIC | DC2-SPINE1 | 192.168.253.1/32 |
| DC2_FABRIC | DC2-SPINE2 | 192.168.253.2/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 4 | 1.57 % |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| DC2_FABRIC | DC2-BL1A | 192.168.254.5/32 |
| DC2_FABRIC | DC2-BL1B | 192.168.254.5/32 |
| DC2_FABRIC | DC2-LEAF1A | 192.168.254.3/32 |
| DC2_FABRIC | DC2-LEAF1B | 192.168.254.3/32 |
