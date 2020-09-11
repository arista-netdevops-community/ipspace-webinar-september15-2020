# DC1_FABRIC

## Table of Contents

- [DC1_FABRIC](#dc1fabric )
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

| Node | Management IP | Platform |
| ---- | ------------- | -------- |
| DC1-SPINE1 | 192.168.200.101/24 | vEOS-LAB |
| DC1-SPINE2 | 192.168.200.102/24 | vEOS-LAB |
| DC1-SPINE3 | 192.168.200.103/24 | vEOS-LAB |
| DC1-SPINE4 | 192.168.200.104/24 | vEOS-LAB |
| DC1-LEAF1A | 192.168.200.105/24 | vEOS-LAB |
| DC1-LEAF2A | 192.168.200.106/24 | vEOS-LAB |
| DC1-LEAF2B | 192.168.200.107/24 | vEOS-LAB |
| DC1-SVC3A | 192.168.200.108/24 | vEOS-LAB |
| DC1-SVC3B | 192.168.200.109/24 | vEOS-LAB |
| DC1-L2LEAF1A | 192.168.200.112/24 | vEOS-LAB |
| DC1-L2LEAF2A | 192.168.200.113/24 | vEOS-LAB |
| DC1-L2LEAF2B | 192.168.200.114/24 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | DC1-LEAF1A | Ethernet1 | DC1-SPINE1 | Ethernet1 |
| L3 Leaf | DC1-LEAF1A | Ethernet2 | DC1-SPINE2 | Ethernet1 |
| L3 Leaf | DC1-LEAF1A | Ethernet3 | DC1-SPINE3 | Ethernet1 |
| L3 Leaf | DC1-LEAF1A | Ethernet4 | DC1-SPINE4 | Ethernet1 |
| L3 Leaf | DC1-LEAF2A | Ethernet1 | DC1-SPINE1 | Ethernet2 |
| L3 Leaf | DC1-LEAF2A | Ethernet2 | DC1-SPINE2 | Ethernet2 |
| L3 Leaf | DC1-LEAF2A | Ethernet3 | DC1-SPINE3 | Ethernet2 |
| L3 Leaf | DC1-LEAF2A | Ethernet4 | DC1-SPINE4 | Ethernet2 |
| L3 Leaf | DC1-LEAF2B | Ethernet1 | DC1-SPINE1 | Ethernet3 |
| L3 Leaf | DC1-LEAF2B | Ethernet2 | DC1-SPINE2 | Ethernet3 |
| L3 Leaf | DC1-LEAF2B | Ethernet3 | DC1-SPINE3 | Ethernet3 |
| L3 Leaf | DC1-LEAF2B | Ethernet4 | DC1-SPINE4 | Ethernet3 |
| L3 Leaf | DC1-SVC3A | Ethernet1 | DC1-SPINE1 | Ethernet4 |
| L3 Leaf | DC1-SVC3A | Ethernet2 | DC1-SPINE2 | Ethernet4 |
| L3 Leaf | DC1-SVC3A | Ethernet3 | DC1-SPINE3 | Ethernet4 |
| L3 Leaf | DC1-SVC3A | Ethernet4 | DC1-SPINE4 | Ethernet4 |
| L3 Leaf | DC1-SVC3B | Ethernet1 | DC1-SPINE1 | Ethernet5 |
| L3 Leaf | DC1-SVC3B | Ethernet2 | DC1-SPINE2 | Ethernet5 |
| L3 Leaf | DC1-SVC3B | Ethernet3 | DC1-SPINE3 | Ethernet5 |
| L3 Leaf | DC1-SVC3B | Ethernet4 | DC1-SPINE4 | Ethernet5 |
| L2 Leaf | DC1-L2LEAF1A | Ethernet1 | DC1-LEAF2A | Ethernet7 |
| L2 Leaf | DC1-L2LEAF1A | Ethernet2 | DC1-LEAF2B | Ethernet7 |
| L2 Leaf | DC1-L2LEAF2A | Ethernet1 | DC1-SVC3A | Ethernet7 |
| L2 Leaf | DC1-L2LEAF2A | Ethernet2 | DC1-SVC3B | Ethernet7 |
| L2 Leaf | DC1-L2LEAF2B | Ethernet1 | DC1-SVC3A | Ethernet8 |
| L2 Leaf | DC1-L2LEAF2B | Ethernet2 | DC1-SVC3B | Ethernet8 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.251.0/24 | 256 | 40 | 15.63 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| DC1-LEAF1A | Ethernet1 | 172.31.251.1/31 | DC1-SPINE1 | Ethernet1 | 172.31.251.0/31 |
| DC1-LEAF1A | Ethernet2 | 172.31.251.3/31 | DC1-SPINE2 | Ethernet1 | 172.31.251.2/31 |
| DC1-LEAF1A | Ethernet3 | 172.31.251.5/31 | DC1-SPINE3 | Ethernet1 | 172.31.251.4/31 |
| DC1-LEAF1A | Ethernet4 | 172.31.251.7/31 | DC1-SPINE4 | Ethernet1 | 172.31.251.6/31 |
| DC1-LEAF2A | Ethernet1 | 172.31.251.9/31 | DC1-SPINE1 | Ethernet2 | 172.31.251.8/31 |
| DC1-LEAF2A | Ethernet2 | 172.31.251.11/31 | DC1-SPINE2 | Ethernet2 | 172.31.251.10/31 |
| DC1-LEAF2A | Ethernet3 | 172.31.251.13/31 | DC1-SPINE3 | Ethernet2 | 172.31.251.12/31 |
| DC1-LEAF2A | Ethernet4 | 172.31.251.15/31 | DC1-SPINE4 | Ethernet2 | 172.31.251.14/31 |
| DC1-LEAF2B | Ethernet1 | 172.31.251.17/31 | DC1-SPINE1 | Ethernet3 | 172.31.251.16/31 |
| DC1-LEAF2B | Ethernet2 | 172.31.251.19/31 | DC1-SPINE2 | Ethernet3 | 172.31.251.18/31 |
| DC1-LEAF2B | Ethernet3 | 172.31.251.21/31 | DC1-SPINE3 | Ethernet3 | 172.31.251.20/31 |
| DC1-LEAF2B | Ethernet4 | 172.31.251.23/31 | DC1-SPINE4 | Ethernet3 | 172.31.251.22/31 |
| DC1-SVC3A | Ethernet1 | 172.31.251.25/31 | DC1-SPINE1 | Ethernet4 | 172.31.251.24/31 |
| DC1-SVC3A | Ethernet2 | 172.31.251.27/31 | DC1-SPINE2 | Ethernet4 | 172.31.251.26/31 |
| DC1-SVC3A | Ethernet3 | 172.31.251.29/31 | DC1-SPINE3 | Ethernet4 | 172.31.251.28/31 |
| DC1-SVC3A | Ethernet4 | 172.31.251.31/31 | DC1-SPINE4 | Ethernet4 | 172.31.251.30/31 |
| DC1-SVC3B | Ethernet1 | 172.31.251.33/31 | DC1-SPINE1 | Ethernet5 | 172.31.251.32/31 |
| DC1-SVC3B | Ethernet2 | 172.31.251.35/31 | DC1-SPINE2 | Ethernet5 | 172.31.251.34/31 |
| DC1-SVC3B | Ethernet3 | 172.31.251.37/31 | DC1-SPINE3 | Ethernet5 | 172.31.251.36/31 |
| DC1-SVC3B | Ethernet4 | 172.31.251.39/31 | DC1-SPINE4 | Ethernet5 | 172.31.251.38/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.251.0/24 | 256 | 9 | 3.52 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| DC1-SPINE1 | 192.168.251.1/32 |
| DC1-SPINE2 | 192.168.251.2/32 |
| DC1-SPINE3 | 192.168.251.3/32 |
| DC1-SPINE4 | 192.168.251.4/32 |
| DC1-LEAF1A | 192.168.251.5/32 |
| DC1-LEAF2A | 192.168.251.6/32 |
| DC1-LEAF2B | 192.168.251.7/32 |
| DC1-SVC3A | 192.168.251.8/32 |
| DC1-SVC3B | 192.168.251.9/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.252.0/24 | 256 | 5 | 1.96 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| DC1-LEAF1A | 192.168.252.5/32 |
| DC1-LEAF2A | 192.168.252.6/32 |
| DC1-LEAF2B | 192.168.252.6/32 |
| DC1-SVC3A | 192.168.252.8/32 |
| DC1-SVC3B | 192.168.252.8/32 |
