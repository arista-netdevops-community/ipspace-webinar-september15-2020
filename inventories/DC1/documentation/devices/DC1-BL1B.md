# DC1-BL1B
# Table of Contents
<!-- toc -->

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [MLAG](#mlag)
  - [MLAG Summary](#mlag-summary)
  - [MLAG Device Configuration](#mlag-device-configuration)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
  - [Route-maps](#route-maps)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Virtual Source NAT](#virtual-source-nat)
  - [Virtual Source NAT Summary](#virtual-source-nat-summary)
  - [Virtual Source NAT Configuration](#virtual-source-nat-configuration)
- [Quality Of Service](#quality-of-service)

<!-- toc -->
# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 192.168.200.111/24 | 192.168.200.1 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 192.168.200.111/24
```

## DNS Domain

### DNS domain: avd-lab.local

### DNS Domain Device Configuration

```eos
!
dns domain avd-lab.local
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 192.168.200.5 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 192.168.200.5
```

## NTP

### NTP Summary

- Local Interface: Management1

- VRF: MGMT

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

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---------- | ---------- |
| default | true |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |


### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
| ---- | --------- | ---- |
| admin | 15 | network-admin |
| cvpadmin | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 $6$Df86J4/SFMDE3/1K$Hef4KstdoxNDaami37cBquTWOTplC.miMPjXVgQxMe92.e5wxlnXOLlebgPj8Fz1KO0za/RCO7ZIs4Q6Eiq1g1
username cvpadmin privilege 15 role network-admin secret sha512 $6$rZKcbIZ7iWGAWTUM$TCgDn1KcavS0s.OV8lacMTUkxTByfzcGlFlYUWroxYuU7M/9bIodhRO7nXGzMweUxvbk8mJmQl8Bh44cRktUj.
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | Ingest gRPC URL | Ingest Authentication Key | Smash Excludes | Ingest Exclude | Ingest VRF |  NTP VRF | AAA Disabled |
| -------------- | --------------- | ------------------------- | -------------- | -------------- | ---------- | -------- | ------ |
| gzip | 192.168.200.11:9910 | telarista | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | MGMT | MGMT | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -ingestgrpcurl=192.168.200.11:9910 -cvcompression=gzip -ingestauth=key,telarista -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -ingestvrf=MGMT -taillogs
   no shutdown
```

# MLAG

## MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_BL1 | Vlan4094 | 10.255.252.10 | Port-Channel5 |

Dual primary detection is disabled.

## MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_BL1
   local-interface Vlan4094
   peer-address 10.255.252.10
   peer-link Port-Channel5
   reload-delay mlag 300
   reload-delay non-mlag 330
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **mstp**

### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 4096 |

### Global Spanning-Tree Settings

Spanning Tree disabled for VLANs: **4093-4094**

## Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4093-4094
spanning-tree mst 0 priority 4096
```

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 113 | Tenant_A_OP_Zone_WAN | none  |
| 3009 | MLAG_iBGP_Tenant_A_OP_Zone | LEAF_PEER_L3  |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3  |
| 4094 | MLAG_PEER | MLAG  |

## VLANs Device Configuration

```eos
!
vlan 113
   name Tenant_A_OP_Zone_WAN
!
vlan 3009
   name MLAG_iBGP_Tenant_A_OP_Zone
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

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet5 | MLAG_PEER_DC1-BL1A_Ethernet5 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 5 |
| Ethernet6 | MLAG_PEER_DC1-BL1A_Ethernet6 | *trunk | *2-4094 | *- | *['LEAF_PEER_L3', 'MLAG'] | 5 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_DC1-SPINE1_Ethernet7 | routed | - | 172.31.251.49/31 | default | 1500 | false | - | - |
| Ethernet2 | P2P_LINK_TO_DC1-SPINE2_Ethernet7 | routed | - | 172.31.251.51/31 | default | 1500 | false | - | - |
| Ethernet3 | P2P_LINK_TO_DC1-SPINE3_Ethernet7 | routed | - | 172.31.251.53/31 | default | 1500 | false | - | - |
| Ethernet4 | P2P_LINK_TO_DC1-SPINE4_Ethernet7 | routed | - | 172.31.251.55/31 | default | 1500 | false | - | - |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.49/31
!
interface Ethernet2
   description P2P_LINK_TO_DC1-SPINE2_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.51/31
!
interface Ethernet3
   description P2P_LINK_TO_DC1-SPINE3_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.53/31
!
interface Ethernet4
   description P2P_LINK_TO_DC1-SPINE4_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address 172.31.251.55/31
!
interface Ethernet5
   description MLAG_PEER_DC1-BL1A_Ethernet5
   no shutdown
   channel-group 5 mode active
!
interface Ethernet6
   description MLAG_PEER_DC1-BL1A_Ethernet6
   no shutdown
   channel-group 5 mode active
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel5 | MLAG_PEER_DC1-BL1A_Po5 | switched | trunk | 2-4094 | - | ['LEAF_PEER_L3', 'MLAG'] | - | - | - | - |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel5
   description MLAG_PEER_DC1-BL1A_Po5
   no shutdown
   switchport
   switchport trunk allowed vlan 2-4094
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 192.168.251.11/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 192.168.252.10/32 |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | 10.255.1.11/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |
| Loopback100 | Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | Tenant_A_OP_Zone | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 192.168.251.11/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 192.168.252.10/32
!
interface Loopback100
   description Tenant_A_OP_Zone_VTEP_DIAGNOSTICS
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address 10.255.1.11/32
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan113 |  Tenant_A_OP_Zone_WAN  |  Tenant_A_OP_Zone  |  -  |  false  |
| Vlan3009 |  MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone  |  Tenant_A_OP_Zone  |  1500  |  false  |
| Vlan4093 |  MLAG_PEER_L3_PEERING  |  default  |  1500  |  false  |
| Vlan4094 |  MLAG_PEER  |  default  |  1500  |  false  |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan113 |  Tenant_A_OP_Zone  |  10.1.13.2/24  |  -  |  -  |  -  |  -  |  -  |
| Vlan3009 |  Tenant_A_OP_Zone  |  10.255.251.11/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4093 |  default  |  10.255.251.11/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4094 |  default  |  10.255.252.11/31  |  -  |  -  |  -  |  -  |  -  |


### VLAN Interfaces Device Configuration

```eos
!
interface Vlan113
   description Tenant_A_OP_Zone_WAN
   no shutdown
   vrf Tenant_A_OP_Zone
   ip address 10.1.13.2/24
!
interface Vlan3009
   description MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone
   no shutdown
   mtu 1500
   vrf Tenant_A_OP_Zone
   ip address 10.255.251.11/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   no shutdown
   mtu 1500
   ip address 10.255.251.11/31
!
interface Vlan4094
   description MLAG_PEER
   no shutdown
   mtu 1500
   no autostate
   ip address 10.255.252.11/31
```

## VXLAN Interface

### VXLAN Interface Summary

#### Source Interface: Loopback1

#### UDP port: 4789

#### VLAN to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| 113 | 10113 |

#### VRF to VNI Mappings

| VLAN | VNI |
| ---- | --- |
| Tenant_A_OP_Zone | 10 |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 113 vni 10113
   vxlan vrf Tenant_A_OP_Zone vni 10
```

# Routing

## Virtual Router MAC Address

### Virtual Router MAC Address Summary

#### Virtual Router MAC Address: 00:dc:00:00:00:0a

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:dc:00:00:00:0a
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true|| MGMT | false |
| Tenant_A_OP_Zone | true |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf Tenant_A_OP_Zone
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false || MGMT | false |
| Tenant_A_OP_Zone | false |


## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT  | 0.0.0.0/0 |  192.168.200.1  |  -  |  1  |  -  |  -  |  - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.200.1
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65104|  192.168.251.11 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| Bfd | true |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote AS | 65100 |
| Send community | all |
| Maximum routes | 12000 |

#### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote AS | 65104 |
| Next-hop self | True |
| Send community | all |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS | VRF |
| -------- | --------- | --- |
| 10.255.251.10 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | default |
| 172.31.251.48 | Inherited from peer group IPv4-UNDERLAY-PEERS | default |
| 172.31.251.50 | Inherited from peer group IPv4-UNDERLAY-PEERS | default |
| 172.31.251.52 | Inherited from peer group IPv4-UNDERLAY-PEERS | default |
| 172.31.251.54 | Inherited from peer group IPv4-UNDERLAY-PEERS | default |
| 192.168.251.1 | 65100 | default |
| 192.168.251.2 | 65100 | default |
| 192.168.251.3 | 65100 | default |
| 192.168.251.4 | 65100 | default |
| 10.255.251.10 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Tenant_A_OP_Zone |

### Router BGP EVPN Address Family

#### Router BGP EVPN MAC-VRFs

##### VLAN aware bundles

| VLAN Aware Bundle | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute | VLANs |
| ----------------- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ | ----- |
| Tenant_A_OP_Zone | 192.168.251.11:10 | 10:10 | - | - | learned | 113 |

#### Router BGP EVPN VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| Tenant_A_OP_Zone | 192.168.251.11:10 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 65104
   router-id 192.168.251.11
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   maximum-paths 4 ecmp 4
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS password 7 q+VNViP5i4rVjW1cxFv2wA==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS remote-as 65100
   neighbor IPv4-UNDERLAY-PEERS password 7 AQQvKeimxJu+uGQ/yYvv9w==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65104
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER password 7 vnEaG8gMeQf3d3cN6PktXQ==
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 12000
   neighbor MLAG-IPv4-UNDERLAY-PEER route-map RM-MLAG-PEER-IN in
   neighbor 10.255.251.10 peer group MLAG-IPv4-UNDERLAY-PEER
   neighbor 10.255.251.10 description DC1-BL1A
   neighbor 172.31.251.48 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.48 description DC1-SPINE1_Ethernet7
   neighbor 172.31.251.50 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.50 description DC1-SPINE2_Ethernet7
   neighbor 172.31.251.52 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.52 description DC1-SPINE3_Ethernet7
   neighbor 172.31.251.54 peer group IPv4-UNDERLAY-PEERS
   neighbor 172.31.251.54 description DC1-SPINE4_Ethernet7
   neighbor 192.168.251.1 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.251.1 remote-as 65100
   neighbor 192.168.251.1 description DC1-SPINE1
   neighbor 192.168.251.2 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.251.2 remote-as 65100
   neighbor 192.168.251.2 description DC1-SPINE2
   neighbor 192.168.251.3 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.251.3 remote-as 65100
   neighbor 192.168.251.3 description DC1-SPINE3
   neighbor 192.168.251.4 peer group EVPN-OVERLAY-PEERS
   neighbor 192.168.251.4 remote-as 65100
   neighbor 192.168.251.4 description DC1-SPINE4
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan-aware-bundle Tenant_A_OP_Zone
      rd 192.168.251.11:10
      route-target both 10:10
      redistribute learned
      vlan 113
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf Tenant_A_OP_Zone
      rd 192.168.251.11:10
      route-target import evpn 10:10
      route-target export evpn 10:10
      router-id 192.168.251.11
      neighbor 10.255.251.10 peer group MLAG-IPv4-UNDERLAY-PEER
      redistribute connected
```

# BFD

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

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

IGMP snooping is globally enabled.


### IP IGMP Snooping Device Configuration

```eos
```

# Filters

## Prefix-lists

### Prefix-lists Summary

#### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 192.168.251.0/24 eq 32 |
| 20 | permit 192.168.252.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 192.168.251.0/24 eq 32
   seq 20 permit 192.168.252.0/24 eq 32
```

## Route-maps

### Route-maps Summary

#### RM-CONN-2-BGP

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

#### RM-MLAG-PEER-IN

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set origin incomplete |

### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
!
route-map RM-MLAG-PEER-IN permit 10
   description Make routes learned over MLAG Peer-link less preferred on spines to ensure optimal routing
   set origin incomplete
```

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |
| Tenant_A_OP_Zone | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance Tenant_A_OP_Zone
```

# Virtual Source NAT

## Virtual Source NAT Summary

| Source NAT VRF | Source NAT IP Address |
| -------------- | --------------------- |
| Tenant_A_OP_Zone | 10.255.1.11 |

## Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf Tenant_A_OP_Zone address 10.255.1.11
```

# Quality Of Service
