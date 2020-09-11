# DC2-LEAF1A

## Management Interfaces

### Management Interfaces Summary

IPv4

| Management Interface | description | VRF | IP Address | Gateway |
| -------------------- | ----------- | --- | ---------- | ------- |
| Management1 | oob_management | MGMT | 192.168.200.153/24 | 192.168.200.1 |

IPv6

| Management Interface | description | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | --- | ------------ | ------------ |
| Management1 | oob_management | MGMT | ||

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 192.168.200.153/24
```

## Hardware Counters

No Hardware Counters defined

## Aliases
Aliases not defined

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- |
| gzip | 192.168.200.11:9910 | telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.200.11:9910 -cvcompression=gzip -ingestauth=key,telarista -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

## IP DHCP Relay

IP DHCP Relay not defined

## Internal VLAN allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## IP IGMP Snooping


## Logging

No logging settings defined

## Domain Lookup

DNS domain lookup not defined

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 192.168.200.5 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 192.168.200.5
```

## DNS Domain


### DNS domain: avd-lab.local

### DNS Domain Device Configuration

```eos
dns domain avd-lab.local
!
```

## NTP

### NTP Summary

Local Interface: Management1

VRF: MGMT


| Node | Primary |
| ---- | ------- |
| 0.north-america.pool.ntp.org | true |
| 1.north-america.pool.ntp.org | - |

### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 0.north-america.pool.ntp.org prefer
ntp server vrf MGMT 1.north-america.pool.ntp.org
```

## Router L2 VPN

Router L2 VPN not defined

## SFlow

No sFlow defined

## Spanning Tree

### Spanning Tree Summary

Mode: mstp

**MSTP Instance and Priority**:

| Instance | Priority |
| -------- | -------- |
| 0 | 4096 |

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4094
spanning-tree mst 0 priority 4096
```


TACACS Servers Not Configured


IP TACACS source interfaces not defined


AAA server groups not defined

## AAA Authentication

AAA authentication not defined

## AAA Authorization

AAA authorization not defined

## AAA Accounting

AAA accounting not defined

## Local Users

### Local Users Summary

| User | Privilege | role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| cvpadmin | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$Df86J4/SFMDE3/1K$Hef4KstdoxNDaami37cBquTWOTplC.miMPjXVgQxMe92.e5wxlnXOLlebgPj8Fz1KO0za/RCO7ZIs4Q6Eiq1g1
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 210 | Tenant_A_OP_Zone_1 | none  |
| 211 | Tenant_A_OP_Zone_2 | none  |
| 212 | Tenant_A_OP_Zone_3 | none  |
| 220 | Tenant_A_WEB_Zone_1 | none  |
| 221 | Tenant_A_WEBZone_2 | none  |
| 261 | Tenant_A_NFS | none  |
| 3009 | MLAG_iBGP_Tenant_A_OP_Zone | LEAF_PEER_L3  |
| 3010 | MLAG_iBGP_Tenant_A_WEB_Zone | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

### VLANs Device Configuration

```eos
!
vlan 210
   name Tenant_A_OP_Zone_1
!
vlan 211
   name Tenant_A_OP_Zone_2
!
vlan 212
   name Tenant_A_OP_Zone_3
!
vlan 220
   name Tenant_A_WEB_Zone_1
!
vlan 221
   name Tenant_A_WEBZone_2
!
vlan 261
   name Tenant_A_NFS
!
vlan 3009
   name MLAG_iBGP_Tenant_A_OP_Zone
   trunk group LEAF_PEER_L3
!
vlan 3010
   name MLAG_iBGP_Tenant_A_WEB_Zone
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT |  disabled |
| Tenant_A_OP_Zone |  enabled |
| Tenant_A_WEB_Zone |  enabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_OP_Zone
!
vrf instance Tenant_A_WEB_Zone
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (trunk) | Trunk Group | MLAG ID | EVPN ESI | VRF | IP Address | IPv6 Address |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | ------- | -------- | --- | ---------- | ------------ |
| Port-Channel3 | DC2_L2LEAF1_Po1 | 1500 | switched | trunk | 210-211,220-221 | - | 3 | - | - | - | - |
| Port-Channel4 | server-2_PortChanne1 | 1500 | switched | trunk | 220-221,230-231,260-261 | - | 4 | - | - | - | - |
| Port-Channel13 | MLAG_PEER_DC2-LEAF1B_Po13 | 1500 | switched | trunk | 2-4094 | LEAF_PEER_L3<br> MLAG | - | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel3
   description DC2_L2LEAF1_Po1
   switchport trunk allowed vlan 210-211,220-221
   switchport mode trunk
   mlag 3
!
interface Port-Channel4
   description server-2_PortChanne1
   switchport trunk allowed vlan 220-221,230-231,260-261
   switchport mode trunk
   mlag 4
!
interface Port-Channel13
   description MLAG_PEER_DC2-LEAF1B_Po13
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

## Ethernet Interfaces

### Ethernet Interfaces Summary

| Interface | Description | MTU | Type | Mode | Allowed VLANs (Trunk) | Trunk Group | VRF | IP Address | Channel-Group ID | Channel-Group Type |
| --------- | ----------- | --- | ---- | ---- | --------------------- | ----------- | --- | ---------- | ---------------- | ------------------ |
| Ethernet1 | P2P_LINK_TO_DC2-SPINE1_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.252.1/31 | - | - |
| Ethernet2 | P2P_LINK_TO_DC2-SPINE2_Ethernet1 | 1500 | routed | access | - | - | - | 172.31.252.3/31 | - | - |
| Ethernet3 | DC2-L2LEAF1A_Ethernet1 | *1500 | *switched | *trunk | *210-211,220-221 | - | - | - | 3 | active |
| Ethernet4 | server-2_Eth2 | *1500 | *switched | *trunk | *220-221,230-231,260-261 | - | - | - | 4 | active |
| Ethernet13 | MLAG_PEER_DC2-LEAF1B_Ethernet13 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 13 | active |
| Ethernet14 | MLAG_PEER_DC2-LEAF1B_Ethernet14 | *1500 | *switched | *trunk | *2-4094 | *LEAF_PEER_L3<br> *MLAG | - | - | 13 | active |

*Inherited from Port-Channel Interface

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC2-SPINE1_Ethernet1
   no switchport
   ip address 172.31.252.1/31
!
interface Ethernet2
   description P2P_LINK_TO_DC2-SPINE2_Ethernet1
   no switchport
   ip address 172.31.252.3/31
!
interface Ethernet3
   description DC2-L2LEAF1A_Ethernet1
   channel-group 3 mode active
!
interface Ethernet4
   description server-2_Eth2
   channel-group 4 mode active
!
interface Ethernet13
   description MLAG_PEER_DC2-LEAF1B_Ethernet13
   channel-group 13 mode active
!
interface Ethernet14
   description MLAG_PEER_DC2-LEAF1B_Ethernet14
   channel-group 13 mode active
```

## Loopback Interfaces

### Loopback Interfaces Summary

IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | 192.168.253.3/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | 192.168.254.3/32 |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | 10.255.2.3/32 |

IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | Global Routing Table | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | Global Routing Table | - |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | - |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   ip address 192.168.253.3/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   ip address 192.168.254.3/32
!
interface Loopback100
   description Tenant_A_OP_Zone_VTEP_DIAGNOSTICS
   vrf Tenant_A_OP_Zone
   ip address 10.255.2.3/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF | IP Address | IP Address Virtual | IP Router Virtual Address (vARP) |
| --------- | ----------- | --- | ---------- | ------------------ | -------------------------------- |
| Vlan210 | Tenant_A_OP_Zone_1 | Tenant_A_OP_Zone | - | 10.2.10.1/24 | - |
| Vlan211 | Tenant_A_OP_Zone_2 | Tenant_A_OP_Zone | - | 10.2.11.1/24 | - |
| Vlan212 | Tenant_A_OP_Zone_3 | Tenant_A_OP_Zone | - | - | 10.2.12.1 |
| Vlan220 | Tenant_A_WEB_Zone_1 | Tenant_A_WEB_Zone | - | 10.2.20.1/24 | - |
| Vlan221 | Tenant_A_WEBZone_2 | Tenant_A_WEB_Zone | - | 10.2.21.1/24 | - |
| Vlan3009 | MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | Tenant_A_OP_Zone | 10.255.253.0/31 | - | - |
| Vlan3010 | MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | Tenant_A_WEB_Zone | 10.255.253.0/31 | - | - |
| Vlan4093 | MLAG_PEER_L3_PEERING | Global Routing Table | 10.255.253.0/31 | - | - |
| Vlan4094 | MLAG_PEER | Global Routing Table | 10.255.254.0/31 | - | - |

### VLAN Interfaces Device Configuration

```eos
!
interface Vlan210
   description Tenant_A_OP_Zone_1
   vrf Tenant_A_OP_Zone
   ip address virtual 10.2.10.1/24
!
interface Vlan211
   description Tenant_A_OP_Zone_2
   vrf Tenant_A_OP_Zone
   ip address virtual 10.2.11.1/24
!
interface Vlan212
   description Tenant_A_OP_Zone_3
   vrf Tenant_A_OP_Zone
   ip virtual-router address 10.2.12.1
!
interface Vlan220
   description Tenant_A_WEB_Zone_1
   vrf Tenant_A_WEB_Zone
   ip address virtual 10.2.20.1/24
!
interface Vlan221
   description Tenant_A_WEBZone_2
   vrf Tenant_A_WEB_Zone
   ip address virtual 10.2.21.1/24
!
interface Vlan3009
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone
   vrf Tenant_A_OP_Zone
   ip address 10.255.253.0/31
!
interface Vlan3010
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone
   vrf Tenant_A_WEB_Zone
   ip address 10.255.253.0/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   ip address 10.255.253.0/31
!
interface Vlan4094
   description MLAG_PEER
   no autostate
   ip address 10.255.254.0/31
```

## VXLAN Interface

### VXLAN Interface Summary

**Source Interface:** Loopback1
**UDP port:** 4789

**VLAN to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| 210 | 20210 |
| 211 | 20211 |
| 212 | 20212 |
| 220 | 20220 |
| 221 | 20221 |
| 261 | 20261 |

**VRF to VNI Mappings:**

| VLAN | VNI |
| ---- | --- |
| Tenant_A_OP_Zone | 10 |
| Tenant_A_WEB_Zone | 11 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 210 vni 20210
   vxlan vlan 211 vni 20211
   vxlan vlan 212 vni 20212
   vxlan vlan 220 vni 20220
   vxlan vlan 221 vni 20221
   vxlan vlan 261 vni 20261
   vxlan vrf Tenant_A_OP_Zone vni 10
   vxlan vrf Tenant_A_WEB_Zone vni 11
```

## Virtual Router MAC Address & Virtual Source NAT

### Virtual Router MAC Address and Virtual Source NAT Summary

**Virtual Router MAC Address:** 00:dc:00:00:00:0b
### Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Tenant_A_OP_Zone | 10.255.2.3 |

### Virtual Router MAC Address Device and Virtual Source NAT Configuration

```eos
!
ip virtual-router mac-address 00:dc:00:00:00:0b
ip address virtual source-nat vrf Tenant_A_OP_Zone address 10.255.2.3
```

## IPv6 Extended Access-lists

IPv6 Extended Access-lists not defined

## IPv6 Standard Access-lists

IPv6 Standard Access-lists not defined

## Extended Access-lists

Extended Access-lists not defined

## Standard Access-lists

Standard Access-lists not defined

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Fowarding Address / Interface |
| --- | ------------------ | ----------------------------- |
| MGMT | 0.0.0.0/0 | 192.168.200.1 |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.200.1
```

## Event Handler

No Event Handler Defined

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| MGMT | False |
| Tenant_A_OP_Zone | True |
| Tenant_A_WEB_Zone | True |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_OP_Zone
ip routing vrf Tenant_A_WEB_Zone
```

## Prefix Lists

### Prefix Lists Summary

**PL-LOOPBACKS-EVPN-OVERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.253.0/24 eq 32 |
| 20 | permit 192.168.254.0/24 eq 32 |

**PL-P2P-UNDERLAY:**

| Sequence | Action |
| -------- | ------ |
| 10 | permit 172.31.252.0/24 le 31 |
| 20 | permit 10.255.253.0/24 le 31 |

### Prefix Lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.253.0/24 eq 32
   seq 20 permit 192.168.254.0/24 eq 32
!
ip prefix-list PL-P2P-UNDERLAY
   seq 10 permit 172.31.252.0/24 le 31
   seq 20 permit 10.255.253.0/24 le 31
```

## IPv6 Prefix Lists

IPv6 Prefix lists not defined

## IPv6 Routing

### IPv6 Routing Summary

| VRF | IPv6 Routing Enabled |
| --- | -------------------- |
| MGMT | False |
| Tenant_A_OP_Zone | False |
| Tenant_A_WEB_Zone | False |

### IPv6 Routing Device Configuration

```eos
```

## MLAG

### MLAG Summary

| domain-id | local-interface | peer-address | peer-link |
| --------- | --------------- | ------------ | --------- |
| DC2_LEAF1 | Vlan4094 | 10.255.254.1 | Port-Channel13 |

Dual primary detection is enabled. The detection delay is 5 seconds.

### MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC2_LEAF1
   local-interface Vlan4094
   peer-address 10.255.254.1
   peer-address heartbeat 192.168.200.154 vrf MGMT
   peer-link Port-Channel13
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 300
   reload-delay non-mlag 330
```

## Community Lists

Community Lists not defined

## Route Maps

### Route Maps Summary

**RM-CONN-2-BGP:**

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

### Route Maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## Peer Filters

No Peer Filters defined

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

### Router BFD Multihop Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65201|  192.168.253.3 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 2 ecmp 2 |

### Router BGP Peer Groups

**EVPN-OVERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| remote_as | 65200 |
| source | Loopback0 |
| bfd | true |
| ebgp multihop | 3 |
| send community | true |
| maximum routes | 0 (no limit) |

**IPv4-UNDERLAY-PEERS**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65200 |
| send community | true |
| maximum routes | 12000 |

**MLAG-IPv4-UNDERLAY-PEER**:

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| remote_as | 65201 |
| next-hop self | true |
| send community | true |
| maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS |
| -------- | ---------
| 10.255.253.1 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER |
| 172.31.252.0 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 172.31.252.2 | Inherited from peer group IPv4-UNDERLAY-PEERS |
| 192.168.253.1 | Inherited from peer group EVPN-OVERLAY-PEERS |
| 192.168.253.2 | Inherited from peer group EVPN-OVERLAY-PEERS |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

**VLAN aware bundles:**

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_NFS | 192.168.253.3:20261 |  20261:20261  |  |  | learned | 261 |
| Tenant_A_OP_Zone | 192.168.253.3:10 |  10:10  |  |  | learned | 210-212 |
| Tenant_A_WEB_Zone | 192.168.253.3:11 |  11:11  |  |  | learned | 220-221 |


#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_OP_Zone | 192.168.253.3:10 | connected  |
| Tenant_A_WEB_Zone | 192.168.253.3:11 | connected  |

### Router BGP Device Configuration

```eos
!
router bgp 65201
   router-id 192.168.253.3
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   maximum-paths 2 ecmp 2
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS remote-as 65200
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65200
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65201
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor 10.255.253.1 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 172.31.252.0 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.252.2 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.253.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.253.2 peer group EVPN-OVERLAY-PEERS
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle Tenant_A_NFS
      rd 192.168.253.3:20261
      route-target both 20261:20261
      redistribute learned
      vlan 261
   !
   vlan-aware-bundle Tenant_A_OP_Zone
      rd 192.168.253.3:10
      route-target both 10:10
      redistribute learned
      vlan 210-212
   !
   vlan-aware-bundle Tenant_A_WEB_Zone
      rd 192.168.253.3:11
      route-target both 11:11
      redistribute learned
      vlan 220-221
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      no neighbor IPv4-UNDERLAY-PEERS activate
      no neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf Tenant_A_OP_Zone
      rd 192.168.253.3:10
      route-target import evpn 10:10
      route-target export evpn 10:10
      router-id 192.168.253.3
      neighbor 10.255.253.1 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
   !
   vrf Tenant_A_WEB_Zone
      rd 192.168.253.3:11
      route-target import evpn 11:11
      route-target export evpn 11:11
      router-id 192.168.253.3
      neighbor 10.255.253.1 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
```

## Router Multicast

Routing multicast not defined

## Router PIM Sparse Mode

Router PIM sparse mode not defined

## VM Tracer Sessions

No VM tracer session defined

## Management Security

Management Security not defined

## Platform

No Platform parameters defined

## Router ISIS

Router ISIS not defined
