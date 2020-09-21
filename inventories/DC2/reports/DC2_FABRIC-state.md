
# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed |
| ----------- | ------------------ | ------------------ |
| 187 | 148 | 39 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC2-BL1A |  26 | 15 | 11 | Interface State, LLDP Topology, MLAG, BGP |
| DC2-BL1B |  26 | 18 | 8 | Interface State, LLDP Topology, MLAG, BGP |
| DC2-L2LEAF1A |  7 | 7 | 0 | - |
| DC2-LEAF1A |  41 | 41 | 0 | - |
| DC2-LEAF1B |  41 | 33 | 8 | LLDP Topology, IP Reachability, BGP |
| DC2-SPINE1 |  23 | 15 | 8 | LLDP Topology, IP Reachability, BGP |
| DC2-SPINE2 |  23 | 19 | 4 | LLDP Topology, IP Reachability, BGP |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  7 | 7 | 0 |
| Interface State |  86 | 80 | 6 |
| LLDP Topology |  28 | 18 | 10 |
| MLAG |  4 | 2 | 2 |
| IP Reachability |  12 | 7 | 5 |
| BGP |  50 | 34 | 16 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 41 | DC2-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC2-BL1B_Po3 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 42 | DC2-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC2-BL1A_Po3 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 50 | DC2-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 52 | DC2-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 78 | DC2-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 79 | DC2-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 94 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 96 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: MLAG_PEER_DC2-BL1B_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 97 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: MLAG_PEER_DC2-BL1B_Ethernet4 | FAIL | remote: Interface Down - N/A |
| 100 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: MLAG_PEER_DC2-BL1A_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 101 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: MLAG_PEER_DC2-BL1A_Ethernet4 | FAIL | remote: Interface Down - N/A |
| 109 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet2 | FAIL | remote: DC2-SPINE2.avd-lab.local - "Ethernet2" |
| 110 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-SPINE2_Ethernet2 | FAIL | remote: DC2-SPINE1.avd-lab.local - "Ethernet2" |
| 114 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: P2P_LINK_TO_DC2-BL1A_Ethernet1 | FAIL | remote: Interface Down - N/A |
| 117 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-LEAF1B_Ethernet1 | FAIL | remote: DC2-LEAF1B.avd-lab.local - "Ethernet2" |
| 121 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-LEAF1B_Ethernet2 | FAIL | remote: DC2-LEAF1B.avd-lab.local - "Ethernet1" |
| 122 | DC2-BL1A | MLAG | MLAG State active & Status connected | MLAG | FAIL | state: active - negotiation_status: connecting |
| 123 | DC2-BL1B | MLAG | MLAG State active & Status connected | MLAG | FAIL | state: active - negotiation_status: connecting |
| 128 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet1 - Destination: DC2-SPINE1_Ethernet2 | FAIL | 100% packet loss |
| 129 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet2 - Destination: DC2-SPINE2_Ethernet2 | FAIL | 100% packet loss |
| 130 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet3 - Destination: DC2-BL1A_Ethernet1 | FAIL | 100% packet loss |
| 133 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet2 - Destination: DC2-LEAF1B_Ethernet1 | FAIL | 100% packet loss |
| 137 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet2 - Destination: DC2-LEAF1B_Ethernet2 | FAIL | 100% packet loss |
| 144 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.5 | FAIL | Session state "Active" |
| 147 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.8 | FAIL | Session state "Connect" |
| 148 | DC2-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.4 | FAIL | Session state "Active" |
| 155 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.4 | FAIL | Session state "Connect" |
| 156 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.6 | FAIL | Session state "Connect" |
| 158 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.9 | FAIL | Session state "Connect" |
| 161 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.5 | FAIL | Session state "Connect" |
| 165 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.7 | FAIL | Session state "Connect" |
| 166 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.5 | FAIL | Session state "Active" |
| 169 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.8 | FAIL | Session state "Connect" |
| 170 | DC2-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.4 | FAIL | Session state "Active" |
| 177 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.4 | FAIL | Session state "Connect" |
| 178 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.6 | FAIL | Session state "Connect" |
| 180 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.9 | FAIL | Session state "Connect" |
| 183 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.5 | FAIL | Session state "Connect" |
| 187 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.7 | FAIL | Session state "Connect" |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC2-BL1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 2 | DC2-BL1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 3 | DC2-L2LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 4 | DC2-LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 5 | DC2-LEAF1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 6 | DC2-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 7 | DC2-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 8 | DC2-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet3 | PASS |  |
| 9 | DC2-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - P2P_LINK_TO_DC1-BL1A_Ethernet10 | PASS |  |
| 10 | DC2-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet3 | PASS |  |
| 11 | DC2-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC2-BL1B_Ethernet3 | PASS |  |
| 12 | DC2-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC2-BL1B_Ethernet4 | PASS |  |
| 13 | DC2-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet4 | PASS |  |
| 14 | DC2-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - P2P_LINK_TO_DC1-BL1B_Ethernet10 | PASS |  |
| 15 | DC2-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet4 | PASS |  |
| 16 | DC2-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC2-BL1A_Ethernet3 | PASS |  |
| 17 | DC2-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC2-BL1A_Ethernet4 | PASS |  |
| 18 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC2-LEAF1A_Ethernet3 | PASS |  |
| 19 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC2-LEAF1B_Ethernet3 | PASS |  |
| 20 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - server-2_Eth1 | PASS |  |
| 21 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet1 | PASS |  |
| 22 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet1 | PASS |  |
| 23 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet13 - MLAG_PEER_DC2-LEAF1B_Ethernet13 | PASS |  |
| 24 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet14 - MLAG_PEER_DC2-LEAF1B_Ethernet14 | PASS |  |
| 25 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - DC2-L2LEAF1A_Ethernet1 | PASS |  |
| 26 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - server-2_Eth2 | PASS |  |
| 27 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet2 | PASS |  |
| 28 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet2 | PASS |  |
| 29 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet13 - MLAG_PEER_DC2-LEAF1A_Ethernet13 | PASS |  |
| 30 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet14 - MLAG_PEER_DC2-LEAF1A_Ethernet14 | PASS |  |
| 31 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - DC2-L2LEAF1A_Ethernet2 | PASS |  |
| 32 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - server-2_Eth3 | PASS |  |
| 33 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC2-BL1A_Ethernet1 | PASS |  |
| 34 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC2-BL1B_Ethernet1 | PASS |  |
| 35 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet1 | PASS |  |
| 36 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet1 | PASS |  |
| 37 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC2-BL1A_Ethernet2 | PASS |  |
| 38 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC2-BL1B_Ethernet2 | PASS |  |
| 39 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet2 | PASS |  |
| 40 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet2 | PASS |  |
| 41 | DC2-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC2-BL1B_Po3 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 42 | DC2-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC2-BL1A_Po3 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 43 | DC2-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC2-LEAF1A_Po3 | PASS |  |
| 44 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - DC2_L2LEAF1_Po1 | PASS |  |
| 45 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel13 - MLAG_PEER_DC2-LEAF1B_Po13 | PASS |  |
| 46 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - server-2_PortChanne1 | PASS |  |
| 47 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - DC2_L2LEAF1_Po1 | PASS |  |
| 48 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel13 - MLAG_PEER_DC2-LEAF1A_Po13 | PASS |  |
| 49 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - server-2_PortChanne1 | PASS |  |
| 50 | DC2-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 51 | DC2-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 52 | DC2-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 53 | DC2-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 54 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 55 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 56 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan230 - Tenant_A_APP_Zone_1 | PASS |  |
| 57 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan231 - Tenant_A_APP_Zone_2 | PASS |  |
| 58 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 59 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_A_OP_Zone_1 | PASS |  |
| 60 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_A_OP_Zone_2 | PASS |  |
| 61 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan212 - Tenant_A_OP_Zone_3 | PASS |  |
| 62 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 63 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan220 - Tenant_A_WEB_Zone_1 | PASS |  |
| 64 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan221 - Tenant_A_WEBZone_2 | PASS |  |
| 65 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 66 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 67 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 68 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan230 - Tenant_A_APP_Zone_1 | PASS |  |
| 69 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan231 - Tenant_A_APP_Zone_2 | PASS |  |
| 70 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 71 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_A_OP_Zone_1 | PASS |  |
| 72 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_A_OP_Zone_2 | PASS |  |
| 73 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan212 - Tenant_A_OP_Zone_3 | PASS |  |
| 74 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 75 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan220 - Tenant_A_WEB_Zone_1 | PASS |  |
| 76 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan221 - Tenant_A_WEBZone_2 | PASS |  |
| 77 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 78 | DC2-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 79 | DC2-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | FAIL | interface status: down - line protocol status: down |
| 80 | DC2-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 81 | DC2-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 82 | DC2-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 83 | DC2-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 84 | DC2-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 85 | DC2-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 86 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 87 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 88 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 89 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 90 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 91 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 92 | DC2-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 93 | DC2-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 94 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 95 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-SPINE2_Ethernet3 | PASS |  |
| 96 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: MLAG_PEER_DC2-BL1B_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 97 | DC2-BL1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: MLAG_PEER_DC2-BL1B_Ethernet4 | FAIL | remote: Interface Down - N/A |
| 98 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet4 | PASS |  |
| 99 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-SPINE2_Ethernet4 | PASS |  |
| 100 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: MLAG_PEER_DC2-BL1A_Ethernet3 | FAIL | remote: Interface Down - N/A |
| 101 | DC2-BL1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: MLAG_PEER_DC2-BL1A_Ethernet4 | FAIL | remote: Interface Down - N/A |
| 102 | DC2-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: DC2-LEAF1A_Ethernet3 | PASS |  |
| 103 | DC2-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: DC2-LEAF1B_Ethernet3 | PASS |  |
| 104 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet1 | PASS |  |
| 105 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-SPINE2_Ethernet1 | PASS |  |
| 106 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet13 - remote: MLAG_PEER_DC2-LEAF1B_Ethernet13 | PASS |  |
| 107 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet14 - remote: MLAG_PEER_DC2-LEAF1B_Ethernet14 | PASS |  |
| 108 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC2-L2LEAF1A_Ethernet1 | PASS |  |
| 109 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-SPINE1_Ethernet2 | FAIL | remote: DC2-SPINE2.avd-lab.local - "Ethernet2" |
| 110 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-SPINE2_Ethernet2 | FAIL | remote: DC2-SPINE1.avd-lab.local - "Ethernet2" |
| 111 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet13 - remote: MLAG_PEER_DC2-LEAF1A_Ethernet13 | PASS |  |
| 112 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet14 - remote: MLAG_PEER_DC2-LEAF1A_Ethernet14 | PASS |  |
| 113 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: DC2-L2LEAF1A_Ethernet2 | PASS |  |
| 114 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: P2P_LINK_TO_DC2-BL1A_Ethernet1 | FAIL | remote: Interface Down - N/A |
| 115 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: P2P_LINK_TO_DC2-BL1B_Ethernet1 | PASS |  |
| 116 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-LEAF1A_Ethernet1 | PASS |  |
| 117 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-LEAF1B_Ethernet1 | FAIL | remote: DC2-LEAF1B.avd-lab.local - "Ethernet2" |
| 118 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet3 - remote: P2P_LINK_TO_DC2-BL1A_Ethernet2 | PASS |  |
| 119 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet4 - remote: P2P_LINK_TO_DC2-BL1B_Ethernet2 | PASS |  |
| 120 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet1 - remote: P2P_LINK_TO_DC2-LEAF1A_Ethernet2 | PASS |  |
| 121 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | local: Ethernet2 - remote: P2P_LINK_TO_DC2-LEAF1B_Ethernet2 | FAIL | remote: DC2-LEAF1B.avd-lab.local - "Ethernet1" |
| 122 | DC2-BL1A | MLAG | MLAG State active & Status connected | MLAG | FAIL | state: active - negotiation_status: connecting |
| 123 | DC2-BL1B | MLAG | MLAG State active & Status connected | MLAG | FAIL | state: active - negotiation_status: connecting |
| 124 | DC2-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 125 | DC2-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 126 | DC2-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1A_Ethernet1 - Destination: DC2-SPINE1_Ethernet1 | PASS |  |
| 127 | DC2-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1A_Ethernet2 - Destination: DC2-SPINE2_Ethernet1 | PASS |  |
| 128 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet1 - Destination: DC2-SPINE1_Ethernet2 | FAIL | 100% packet loss |
| 129 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet2 - Destination: DC2-SPINE2_Ethernet2 | FAIL | 100% packet loss |
| 130 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet3 - Destination: DC2-BL1A_Ethernet1 | FAIL | 100% packet loss |
| 131 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet4 - Destination: DC2-BL1B_Ethernet1 | PASS |  |
| 132 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet1 - Destination: DC2-LEAF1A_Ethernet1 | PASS |  |
| 133 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet2 - Destination: DC2-LEAF1B_Ethernet1 | FAIL | 100% packet loss |
| 134 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet3 - Destination: DC2-BL1A_Ethernet2 | PASS |  |
| 135 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet4 - Destination: DC2-BL1B_Ethernet2 | PASS |  |
| 136 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet1 - Destination: DC2-LEAF1A_Ethernet2 | PASS |  |
| 137 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet2 - Destination: DC2-LEAF1B_Ethernet2 | FAIL | 100% packet loss |
| 138 | DC2-BL1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 139 | DC2-BL1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 140 | DC2-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 141 | DC2-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 142 | DC2-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 143 | DC2-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 144 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.5 | FAIL | Session state "Active" |
| 145 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.0.0 | PASS |  |
| 146 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.10 | PASS |  |
| 147 | DC2-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.8 | FAIL | Session state "Connect" |
| 148 | DC2-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.4 | FAIL | Session state "Active" |
| 149 | DC2-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.0.2 | PASS |  |
| 150 | DC2-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.12 | PASS |  |
| 151 | DC2-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.14 | PASS |  |
| 152 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.0 | PASS |  |
| 153 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.2 | PASS |  |
| 154 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.1 | PASS |  |
| 155 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.4 | FAIL | Session state "Connect" |
| 156 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.6 | FAIL | Session state "Connect" |
| 157 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.0 | PASS |  |
| 158 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.9 | FAIL | Session state "Connect" |
| 159 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.13 | PASS |  |
| 160 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.1 | PASS |  |
| 161 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.5 | FAIL | Session state "Connect" |
| 162 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.11 | PASS |  |
| 163 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.15 | PASS |  |
| 164 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.3 | PASS |  |
| 165 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.7 | FAIL | Session state "Connect" |
| 166 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.5 | FAIL | Session state "Active" |
| 167 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.0.0 | PASS |  |
| 168 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.10 | PASS |  |
| 169 | DC2-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.8 | FAIL | Session state "Connect" |
| 170 | DC2-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.4 | FAIL | Session state "Active" |
| 171 | DC2-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.0.2 | PASS |  |
| 172 | DC2-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.12 | PASS |  |
| 173 | DC2-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.14 | PASS |  |
| 174 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.0 | PASS |  |
| 175 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.2 | PASS |  |
| 176 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.1 | PASS |  |
| 177 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.4 | FAIL | Session state "Connect" |
| 178 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.6 | FAIL | Session state "Connect" |
| 179 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.0 | PASS |  |
| 180 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.9 | FAIL | Session state "Connect" |
| 181 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.13 | PASS |  |
| 182 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.1 | PASS |  |
| 183 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.5 | FAIL | Session state "Connect" |
| 184 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.11 | PASS |  |
| 185 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.15 | PASS |  |
| 186 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.3 | PASS |  |
| 187 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.7 | FAIL | Session state "Connect" |
