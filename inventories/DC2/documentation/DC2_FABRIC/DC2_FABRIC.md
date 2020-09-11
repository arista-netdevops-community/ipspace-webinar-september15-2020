# DC2_FABRIC

## Table of Contents

- [DC2_FABRIC](#dc2fabric )
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
| DC2-SPINE1 | 192.168.200.151/24 | vEOS-LAB |
| DC2-SPINE2 | 192.168.200.152/24 | vEOS-LAB |
| DC2-LEAF1A | 192.168.200.153/24 | vEOS-LAB |
| DC2-LEAF1B | 192.168.200.154/24 | vEOS-LAB |
| DC2-L2LEAF1A | 192.168.200.157/24 | vEOS-LAB |

## Fabric Topology

| Type | Leaf Node | Leaf Interface | Peer Node | Peer Interface |
| ---- | --------- | -------------- | --------- | -------------- |
| L3 Leaf | DC2-LEAF1A | Ethernet1 | DC2-SPINE1 | Ethernet1 |
| L3 Leaf | DC2-LEAF1A | Ethernet2 | DC2-SPINE2 | Ethernet1 |
| L3 Leaf | DC2-LEAF1B | Ethernet1 | DC2-SPINE1 | Ethernet2 |
| L3 Leaf | DC2-LEAF1B | Ethernet2 | DC2-SPINE2 | Ethernet2 |
| L2 Leaf | DC2-L2LEAF1A | Ethernet1 | DC2-LEAF1A | Ethernet3 |
| L2 Leaf | DC2-L2LEAF1A | Ethernet2 | DC2-LEAF1B | Ethernet3 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| P2P Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ----------- | ------------------- | ------------------ | ------------------ |
| 172.31.252.0/24 | 256 | 8 | 3.13 % |

### Point-To-Point Links Node Allocation

| Leaf Node | Leaf Interface | Leaf IP Address | Spine Node | Spine Interface | Spine IP Address |
| --------- | -------------- | --------------- | ---------- | --------------- | ---------------- |
| DC2-LEAF1A | Ethernet1 | 172.31.252.1/31 | DC2-SPINE1 | Ethernet1 | 172.31.252.0/31 |
| DC2-LEAF1A | Ethernet2 | 172.31.252.3/31 | DC2-SPINE2 | Ethernet1 | 172.31.252.2/31 |
| DC2-LEAF1B | Ethernet1 | 172.31.252.5/31 | DC2-SPINE1 | Ethernet2 | 172.31.252.4/31 |
| DC2-LEAF1B | Ethernet2 | 172.31.252.7/31 | DC2-SPINE2 | Ethernet2 | 172.31.252.6/31 |

### Overlay Loopback Interfaces (BGP EVPN Peering)

| Overlay Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------------ | ------------------- | ------------------ | ------------------ |
| 192.168.253.0/24 | 256 | 4 | 1.57 % |

### Loopback0 Interfaces Node Allocation

| Node | Loopback0 |
| ---- | --------- |
| DC2-SPINE1 | 192.168.253.1/32 |
| DC2-SPINE2 | 192.168.253.2/32 |
| DC2-LEAF1A | 192.168.253.3/32 |
| DC2-LEAF1B | 192.168.253.4/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (Leafs Only)

| VTEP Loopback Summary | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 192.168.254.0/24 | 256 | 2 | 0.79 % |

### VTEP Loopback Node allocation

| Node | Loopback1 |
| ---- | --------- |
| DC2-LEAF1A | 192.168.254.3/32 |
| DC2-LEAF1B | 192.168.254.3/32 |
