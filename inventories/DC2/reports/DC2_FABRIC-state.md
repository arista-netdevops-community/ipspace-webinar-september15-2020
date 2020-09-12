
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
| 109 | 109 | 0 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC2-L2LEAF1A |  7 | 7 | 0 | - |
| DC2-LEAF1A |  38 | 38 | 0 | - |
| DC2-LEAF1B |  38 | 38 | 0 | - |
| DC2-SPINE1 |  13 | 13 | 0 | - |
| DC2-SPINE2 |  13 | 13 | 0 | - |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  5 | 5 | 0 |
| Interface State |  54 | 54 | 0 |
| LLDP Topology |  16 | 16 | 0 |
| MLAG |  2 | 2 | 0 |
| IP Reachability |  8 | 8 | 0 |
| BGP |  24 | 24 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC2-L2LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 2 | DC2-LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 3 | DC2-LEAF1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 4 | DC2-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 5 | DC2-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 6 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC2-LEAF1A_Ethernet3 | PASS |  |
| 7 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC2-LEAF1B_Ethernet3 | PASS |  |
| 8 | DC2-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - server-2_Eth1 | PASS |  |
| 9 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet1 | PASS |  |
| 10 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet1 | PASS |  |
| 11 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet13 - MLAG_PEER_DC2-LEAF1B_Ethernet13 | PASS |  |
| 12 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet14 - MLAG_PEER_DC2-LEAF1B_Ethernet14 | PASS |  |
| 13 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - DC2-L2LEAF1A_Ethernet1 | PASS |  |
| 14 | DC2-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - server-2_Eth2 | PASS |  |
| 15 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet2 | PASS |  |
| 16 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet2 | PASS |  |
| 17 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet13 - MLAG_PEER_DC2-LEAF1A_Ethernet13 | PASS |  |
| 18 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet14 - MLAG_PEER_DC2-LEAF1A_Ethernet14 | PASS |  |
| 19 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - DC2-L2LEAF1A_Ethernet2 | PASS |  |
| 20 | DC2-LEAF1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - server-2_Eth3 | PASS |  |
| 21 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet1 | PASS |  |
| 22 | DC2-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet1 | PASS |  |
| 23 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet2 | PASS |  |
| 24 | DC2-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet2 | PASS |  |
| 25 | DC2-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC2-LEAF1A_Po3 | PASS |  |
| 26 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - DC2_L2LEAF1_Po1 | PASS |  |
| 27 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel13 - MLAG_PEER_DC2-LEAF1B_Po13 | PASS |  |
| 28 | DC2-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - server-2_PortChanne1 | PASS |  |
| 29 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - DC2_L2LEAF1_Po1 | PASS |  |
| 30 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel13 - MLAG_PEER_DC2-LEAF1A_Po13 | PASS |  |
| 31 | DC2-LEAF1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel4 - server-2_PortChanne1 | PASS |  |
| 32 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 33 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 34 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_A_OP_Zone_1 | PASS |  |
| 35 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_A_OP_Zone_2 | PASS |  |
| 36 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan212 - Tenant_A_OP_Zone_3 | PASS |  |
| 37 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 38 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan220 - Tenant_A_WEB_Zone_1 | PASS |  |
| 39 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan221 - Tenant_A_WEBZone_2 | PASS |  |
| 40 | DC2-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 41 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 42 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 43 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan210 - Tenant_A_OP_Zone_1 | PASS |  |
| 44 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan211 - Tenant_A_OP_Zone_2 | PASS |  |
| 45 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan212 - Tenant_A_OP_Zone_3 | PASS |  |
| 46 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 47 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan220 - Tenant_A_WEB_Zone_1 | PASS |  |
| 48 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan221 - Tenant_A_WEBZone_2 | PASS |  |
| 49 | DC2-LEAF1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 50 | DC2-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 51 | DC2-LEAF1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 52 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 53 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 54 | DC2-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 55 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 56 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 57 | DC2-LEAF1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 58 | DC2-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 59 | DC2-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 60 | DC2-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC2-LEAF1A_Ethernet3 | PASS |  |
| 61 | DC2-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC2-LEAF1B_Ethernet3 | PASS |  |
| 62 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet1 | PASS |  |
| 63 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet1 | PASS |  |
| 64 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet13 - MLAG_PEER_DC2-LEAF1B_Ethernet13 | PASS |  |
| 65 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet14 - MLAG_PEER_DC2-LEAF1B_Ethernet14 | PASS |  |
| 66 | DC2-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - DC2-L2LEAF1A_Ethernet1 | PASS |  |
| 67 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC2-SPINE1_Ethernet2 | PASS |  |
| 68 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC2-SPINE2_Ethernet2 | PASS |  |
| 69 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet13 - MLAG_PEER_DC2-LEAF1A_Ethernet13 | PASS |  |
| 70 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet14 - MLAG_PEER_DC2-LEAF1A_Ethernet14 | PASS |  |
| 71 | DC2-LEAF1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - DC2-L2LEAF1A_Ethernet2 | PASS |  |
| 72 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet1 | PASS |  |
| 73 | DC2-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet1 | PASS |  |
| 74 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC2-LEAF1A_Ethernet2 | PASS |  |
| 75 | DC2-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC2-LEAF1B_Ethernet2 | PASS |  |
| 76 | DC2-LEAF1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 77 | DC2-LEAF1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 78 | DC2-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1A_Ethernet1 | Destination: DC2-SPINE1_Ethernet1 | PASS |  |
| 79 | DC2-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1A_Ethernet2 | Destination: DC2-SPINE2_Ethernet1 | PASS |  |
| 80 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet1 | Destination: DC2-SPINE1_Ethernet2 | PASS |  |
| 81 | DC2-LEAF1B | IP Reachability | ip reachability test p2p links | Source: DC2-LEAF1B_Ethernet2 | Destination: DC2-SPINE2_Ethernet2 | PASS |  |
| 82 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet1 | Destination: DC2-LEAF1A_Ethernet1 | PASS |  |
| 83 | DC2-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE1_Ethernet2 | Destination: DC2-LEAF1B_Ethernet1 | PASS |  |
| 84 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet1 | Destination: DC2-LEAF1A_Ethernet2 | PASS |  |
| 85 | DC2-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC2-SPINE2_Ethernet2 | Destination: DC2-LEAF1B_Ethernet2 | PASS |  |
| 86 | DC2-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 87 | DC2-LEAF1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 88 | DC2-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 89 | DC2-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 90 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.0 | PASS |  |
| 91 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.2 | PASS |  |
| 92 | DC2-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.1 | PASS |  |
| 93 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.4 | PASS |  |
| 94 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.6 | PASS |  |
| 95 | DC2-LEAF1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.253.0 | PASS |  |
| 96 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.1 | PASS |  |
| 97 | DC2-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.5 | PASS |  |
| 98 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.3 | PASS |  |
| 99 | DC2-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.252.7 | PASS |  |
| 100 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.0 | PASS |  |
| 101 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.2 | PASS |  |
| 102 | DC2-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.1 | PASS |  |
| 103 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.4 | PASS |  |
| 104 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.6 | PASS |  |
| 105 | DC2-LEAF1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.253.0 | PASS |  |
| 106 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.1 | PASS |  |
| 107 | DC2-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.5 | PASS |  |
| 108 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.3 | PASS |  |
| 109 | DC2-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.252.7 | PASS |  |
