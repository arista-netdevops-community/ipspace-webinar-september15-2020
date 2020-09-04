
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
| 524 | 515 | 9 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| DC1-BL1A |  40 | 40 | 0 | - |
| DC1-BL1B |  40 | 40 | 0 | - |
| DC1-L2LEAF1A |  6 | 6 | 0 | - |
| DC1-L2LEAF2A |  13 | 13 | 0 | - |
| DC1-L2LEAF2B |  13 | 13 | 0 | - |
| DC1-LEAF1A |  34 | 33 | 1 | Interface State |
| DC1-LEAF2A |  56 | 54 | 2 | Interface State |
| DC1-LEAF2B |  56 | 54 | 2 | Interface State |
| DC1-SPINE1 |  38 | 38 | 0 | - |
| DC1-SPINE2 |  38 | 38 | 0 | - |
| DC1-SPINE3 |  38 | 38 | 0 | - |
| DC1-SPINE4 |  38 | 38 | 0 | - |
| DC1-SVC3A |  57 | 55 | 2 | Interface State |
| DC1-SVC3B |  57 | 55 | 2 | Interface State |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  14 | 14 | 0 |
| Interface State |  227 | 218 | 9 |
| LLDP Topology |  84 | 84 | 0 |
| MLAG |  8 | 8 | 0 |
| IP Reachability |  56 | 56 | 0 |
| BGP |  135 | 135 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 118 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 121 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 122 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 125 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 126 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 129 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 130 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 133 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 134 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | DC1-BL1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 2 | DC1-BL1B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 3 | DC1-L2LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 4 | DC1-L2LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 5 | DC1-L2LEAF2B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 6 | DC1-LEAF1A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 7 | DC1-LEAF2A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 8 | DC1-LEAF2B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 9 | DC1-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 10 | DC1-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 11 | DC1-SPINE3 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 12 | DC1-SPINE4 | NTP | Synchronised with NTP server | NTP | PASS |  |
| 13 | DC1-SVC3A | NTP | Synchronised with NTP server | NTP | PASS |  |
| 14 | DC1-SVC3B | NTP | Synchronised with NTP server | NTP | PASS |  |
| 15 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 16 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 17 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet6 | PASS |  |
| 18 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet6 | PASS |  |
| 19 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-BL1B_Ethernet5 | PASS |  |
| 20 | DC1-BL1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-BL1B_Ethernet6 | PASS |  |
| 21 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 22 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 23 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet7 | PASS |  |
| 24 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet7 | PASS |  |
| 25 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-BL1A_Ethernet5 | PASS |  |
| 26 | DC1-BL1B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-BL1A_Ethernet6 | PASS |  |
| 27 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-LEAF2A_Ethernet7 | PASS |  |
| 28 | DC1-L2LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-LEAF2B_Ethernet7 | PASS |  |
| 29 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-SVC3A_Ethernet7 | PASS |  |
| 30 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-SVC3B_Ethernet7 | PASS |  |
| 31 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-L2LEAF2B_Ethernet3 | PASS |  |
| 32 | DC1-L2LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-L2LEAF2B_Ethernet4 | PASS |  |
| 33 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - DC1-SVC3A_Ethernet8 | PASS |  |
| 34 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - DC1-SVC3B_Ethernet8 | PASS |  |
| 35 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - MLAG_PEER_DC1-L2LEAF2A_Ethernet3 | PASS |  |
| 36 | DC1-L2LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - MLAG_PEER_DC1-L2LEAF2A_Ethernet4 | PASS |  |
| 37 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 38 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 39 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet1 | PASS |  |
| 40 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet1 | PASS |  |
| 41 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - server01_Eth1 | PASS |  |
| 42 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - server01_Eth4 | PASS |  |
| 43 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - server01_Eth5 | PASS |  |
| 44 | DC1-LEAF1A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - server02_Eth1 | PASS |  |
| 45 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 46 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 47 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet2 | PASS |  |
| 48 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet2 | PASS |  |
| 49 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-LEAF2B_Ethernet5 | PASS |  |
| 50 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-LEAF2B_Ethernet6 | PASS |  |
| 51 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 52 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server01_Eth2 | PASS |  |
| 53 | DC1-LEAF2A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server02_Eth2 | PASS |  |
| 54 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 55 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 56 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet3 | PASS |  |
| 57 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet3 | PASS |  |
| 58 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-LEAF2A_Ethernet5 | PASS |  |
| 59 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-LEAF2A_Ethernet6 | PASS |  |
| 60 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 61 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server01_Eth3 | PASS |  |
| 62 | DC1-LEAF2B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server02_Eth3 | PASS |  |
| 63 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 64 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 65 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 66 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 67 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 68 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet1 | PASS |  |
| 69 | DC1-SPINE1 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet1 | PASS |  |
| 70 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 71 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 72 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 73 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 74 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 75 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet2 | PASS |  |
| 76 | DC1-SPINE2 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet2 | PASS |  |
| 77 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet3 | PASS |  |
| 78 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet3 | PASS |  |
| 79 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet3 | PASS |  |
| 80 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet3 | PASS |  |
| 81 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet3 | PASS |  |
| 82 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet3 | PASS |  |
| 83 | DC1-SPINE3 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet3 | PASS |  |
| 84 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet4 | PASS |  |
| 85 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet4 | PASS |  |
| 86 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet4 | PASS |  |
| 87 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet4 | PASS |  |
| 88 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet4 | PASS |  |
| 89 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet4 | PASS |  |
| 90 | DC1-SPINE4 | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet4 | PASS |  |
| 91 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 92 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 93 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet4 | PASS |  |
| 94 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet4 | PASS |  |
| 95 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-SVC3B_Ethernet5 | PASS |  |
| 96 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-SVC3B_Ethernet6 | PASS |  |
| 97 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 98 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - DC1-L2LEAF2B_Ethernet1 | PASS |  |
| 99 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server03_Eth1 | PASS |  |
| 100 | DC1-SVC3A | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server04_Eth1 | PASS |  |
| 101 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 102 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 103 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet5 | PASS |  |
| 104 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet5 | PASS |  |
| 105 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet5 - MLAG_PEER_DC1-SVC3A_Ethernet5 | PASS |  |
| 106 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet6 - MLAG_PEER_DC1-SVC3A_Ethernet6 | PASS |  |
| 107 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet7 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 108 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet8 - DC1-L2LEAF2B_Ethernet2 | PASS |  |
| 109 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet10 - server03_Eth2 | PASS |  |
| 110 | DC1-SVC3B | Interface State | Ethernet Interface Status & Line Protocol == "up" | Ethernet11 - server04_Eth2 | PASS |  |
| 111 | DC1-BL1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-BL1B_Po5 | PASS |  |
| 112 | DC1-BL1B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-BL1A_Po5 | PASS |  |
| 113 | DC1-L2LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-LEAF2A_Po7 | PASS |  |
| 114 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-SVC3A_Po7 | PASS |  |
| 115 | DC1-L2LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-L2LEAF2B_Po3 | PASS |  |
| 116 | DC1-L2LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel1 - DC1-SVC3B_Po7 | PASS |  |
| 117 | DC1-L2LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel3 - MLAG_PEER_DC1-L2LEAF2A_Po3 | PASS |  |
| 118 | DC1-LEAF1A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 119 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF1_Po1 | PASS |  |
| 120 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-LEAF2B_Po5 | PASS |  |
| 121 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 122 | DC1-LEAF2A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 123 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF1_Po1 | PASS |  |
| 124 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-LEAF2A_Po5 | PASS |  |
| 125 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server01_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 126 | DC1-LEAF2B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server02_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 127 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF2_Po1 | PASS |  |
| 128 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-SVC3B_Po5 | PASS |  |
| 129 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 130 | DC1-SVC3A | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 131 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel7 - DC1_L2LEAF2_Po1 | PASS |  |
| 132 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel5 - MLAG_PEER_DC1-SVC3A_Po5 | PASS |  |
| 133 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel10 - server03_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 134 | DC1-SVC3B | Interface State | Port-Channel Interface Status & Line Protocol == "up" | Port-Channel11 - server04_PortChanne1 | FAIL | interface status: down - line protocol status: lowerLayerDown |
| 135 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 136 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 137 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - Tenant_A_OP_Zone_WAN | PASS |  |
| 138 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 139 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan150 - Tenant_A_WAN_Zone_1 | PASS |  |
| 140 | DC1-BL1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3013 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WAN_Zone | PASS |  |
| 141 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 142 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 143 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan113 - Tenant_A_OP_Zone_WAN | PASS |  |
| 144 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 145 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan150 - Tenant_A_WAN_Zone_1 | PASS |  |
| 146 | DC1-BL1B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3013 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WAN_Zone | PASS |  |
| 147 | DC1-L2LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 148 | DC1-L2LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 149 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 150 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 151 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 152 | DC1-LEAF1A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 153 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 154 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 155 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 156 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 157 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 158 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 159 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 160 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 161 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 162 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 163 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - Tenant_A_OP_Zone_3 | PASS |  |
| 164 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 165 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 166 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 167 | DC1-LEAF2A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 168 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 169 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 170 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 171 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 172 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 173 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 174 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 175 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 176 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 177 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 178 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan112 - Tenant_A_OP_Zone_3 | PASS |  |
| 179 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 180 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 181 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 182 | DC1-LEAF2B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 183 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 184 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 185 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 186 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 187 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 188 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 189 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 190 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 191 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 192 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 193 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 194 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 195 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 196 | DC1-SVC3A | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 197 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS |  |
| 198 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS |  |
| 199 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan130 - Tenant_A_APP_Zone_1 | PASS |  |
| 200 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan131 - Tenant_A_APP_Zone_2 | PASS |  |
| 201 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3011 - MLAG_PEER_L3_iBGP: vrf Tenant_A_APP_Zone | PASS |  |
| 202 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan140 - Tenant_A_DB_BZone_1 | PASS |  |
| 203 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan141 - Tenant_A_DB_Zone_2 | PASS |  |
| 204 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3012 - MLAG_PEER_L3_iBGP: vrf Tenant_A_DB_Zone | PASS |  |
| 205 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan110 - Tenant_A_OP_Zone_1 | PASS |  |
| 206 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan111 - Tenant_A_OP_Zone_2 | PASS |  |
| 207 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3009 - MLAG_PEER_L3_iBGP: vrf Tenant_A_OP_Zone | PASS |  |
| 208 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan120 - Tenant_A_WEB_Zone_1 | PASS |  |
| 209 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan121 - Tenant_A_WEBZone_2 | PASS |  |
| 210 | DC1-SVC3B | Interface State | Vlan Interface Status & Line Protocol == "up" | Vlan3010 - MLAG_PEER_L3_iBGP: vrf Tenant_A_WEB_Zone | PASS |  |
| 211 | DC1-BL1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 212 | DC1-BL1B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 213 | DC1-LEAF1A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 214 | DC1-LEAF2A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 215 | DC1-LEAF2B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 216 | DC1-SVC3A | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 217 | DC1-SVC3B | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS |  |
| 218 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 219 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 220 | DC1-BL1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 221 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 222 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 223 | DC1-BL1B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 224 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 225 | DC1-LEAF1A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 226 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 227 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 228 | DC1-LEAF2A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 229 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 230 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 231 | DC1-LEAF2B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 232 | DC1-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 233 | DC1-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 234 | DC1-SPINE3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 235 | DC1-SPINE4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 236 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 237 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 238 | DC1-SVC3A | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 239 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS |  |
| 240 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS |  |
| 241 | DC1-SVC3B | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback100 - Tenant_A_OP_Zone_VTEP_DIAGNOSTICS | PASS |  |
| 242 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet6 | PASS |  |
| 243 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet6 | PASS |  |
| 244 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet6 | PASS |  |
| 245 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet6 | PASS |  |
| 246 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-BL1B_Ethernet5 | PASS |  |
| 247 | DC1-BL1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-BL1B_Ethernet6 | PASS |  |
| 248 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet7 | PASS |  |
| 249 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet7 | PASS |  |
| 250 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet7 | PASS |  |
| 251 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet7 | PASS |  |
| 252 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-BL1A_Ethernet5 | PASS |  |
| 253 | DC1-BL1B | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-BL1A_Ethernet6 | PASS |  |
| 254 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-LEAF2A_Ethernet7 | PASS |  |
| 255 | DC1-L2LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-LEAF2B_Ethernet7 | PASS |  |
| 256 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-SVC3A_Ethernet7 | PASS |  |
| 257 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-SVC3B_Ethernet7 | PASS |  |
| 258 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-L2LEAF2B_Ethernet3 | PASS |  |
| 259 | DC1-L2LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-L2LEAF2B_Ethernet4 | PASS |  |
| 260 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - DC1-SVC3A_Ethernet8 | PASS |  |
| 261 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - DC1-SVC3B_Ethernet8 | PASS |  |
| 262 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - MLAG_PEER_DC1-L2LEAF2A_Ethernet3 | PASS |  |
| 263 | DC1-L2LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - MLAG_PEER_DC1-L2LEAF2A_Ethernet4 | PASS |  |
| 264 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet1 | PASS |  |
| 265 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet1 | PASS |  |
| 266 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet1 | PASS |  |
| 267 | DC1-LEAF1A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet1 | PASS |  |
| 268 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet2 | PASS |  |
| 269 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet2 | PASS |  |
| 270 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet2 | PASS |  |
| 271 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet2 | PASS |  |
| 272 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-LEAF2B_Ethernet5 | PASS |  |
| 273 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-LEAF2B_Ethernet6 | PASS |  |
| 274 | DC1-LEAF2A | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - DC1-L2LEAF1A_Ethernet1 | PASS |  |
| 275 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet3 | PASS |  |
| 276 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet3 | PASS |  |
| 277 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet3 | PASS |  |
| 278 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet3 | PASS |  |
| 279 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-LEAF2A_Ethernet5 | PASS |  |
| 280 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-LEAF2A_Ethernet6 | PASS |  |
| 281 | DC1-LEAF2B | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - DC1-L2LEAF1A_Ethernet2 | PASS |  |
| 282 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet1 | PASS |  |
| 283 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet1 | PASS |  |
| 284 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet1 | PASS |  |
| 285 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet1 | PASS |  |
| 286 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet1 | PASS |  |
| 287 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet1 | PASS |  |
| 288 | DC1-SPINE1 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet1 | PASS |  |
| 289 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet2 | PASS |  |
| 290 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet2 | PASS |  |
| 291 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet2 | PASS |  |
| 292 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet2 | PASS |  |
| 293 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet2 | PASS |  |
| 294 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet2 | PASS |  |
| 295 | DC1-SPINE2 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet2 | PASS |  |
| 296 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet3 | PASS |  |
| 297 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet3 | PASS |  |
| 298 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet3 | PASS |  |
| 299 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet3 | PASS |  |
| 300 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet3 | PASS |  |
| 301 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet3 | PASS |  |
| 302 | DC1-SPINE3 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet3 | PASS |  |
| 303 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - P2P_LINK_TO_DC1-BL1A_Ethernet4 | PASS |  |
| 304 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - P2P_LINK_TO_DC1-BL1B_Ethernet4 | PASS |  |
| 305 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-LEAF1A_Ethernet4 | PASS |  |
| 306 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-LEAF2A_Ethernet4 | PASS |  |
| 307 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-LEAF2B_Ethernet4 | PASS |  |
| 308 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SVC3A_Ethernet4 | PASS |  |
| 309 | DC1-SPINE4 | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - P2P_LINK_TO_DC1-SVC3B_Ethernet4 | PASS |  |
| 310 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet4 | PASS |  |
| 311 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet4 | PASS |  |
| 312 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet4 | PASS |  |
| 313 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet4 | PASS |  |
| 314 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-SVC3B_Ethernet5 | PASS |  |
| 315 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-SVC3B_Ethernet6 | PASS |  |
| 316 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - DC1-L2LEAF2A_Ethernet1 | PASS |  |
| 317 | DC1-SVC3A | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - DC1-L2LEAF2B_Ethernet1 | PASS |  |
| 318 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet1 - P2P_LINK_TO_DC1-SPINE1_Ethernet5 | PASS |  |
| 319 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet2 - P2P_LINK_TO_DC1-SPINE2_Ethernet5 | PASS |  |
| 320 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet3 - P2P_LINK_TO_DC1-SPINE3_Ethernet5 | PASS |  |
| 321 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet4 - P2P_LINK_TO_DC1-SPINE4_Ethernet5 | PASS |  |
| 322 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet5 - MLAG_PEER_DC1-SVC3A_Ethernet5 | PASS |  |
| 323 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet6 - MLAG_PEER_DC1-SVC3A_Ethernet6 | PASS |  |
| 324 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet7 - DC1-L2LEAF2A_Ethernet2 | PASS |  |
| 325 | DC1-SVC3B | LLDP Topology | lldp topology - validate peer and interface | Ethernet8 - DC1-L2LEAF2B_Ethernet2 | PASS |  |
| 326 | DC1-BL1A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 327 | DC1-BL1B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 328 | DC1-L2LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 329 | DC1-L2LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 330 | DC1-LEAF2A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 331 | DC1-LEAF2B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 332 | DC1-SVC3A | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 333 | DC1-SVC3B | MLAG | MLAG State active & Status connected | MLAG | PASS |  |
| 334 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet1 | Destination: DC1-SPINE1_Ethernet6 | PASS |  |
| 335 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet2 | Destination: DC1-SPINE2_Ethernet6 | PASS |  |
| 336 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet3 | Destination: DC1-SPINE3_Ethernet6 | PASS |  |
| 337 | DC1-BL1A | IP Reachability | ip reachability test p2p links | Source: DC1-BL1A_Ethernet4 | Destination: DC1-SPINE4_Ethernet6 | PASS |  |
| 338 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet1 | Destination: DC1-SPINE1_Ethernet7 | PASS |  |
| 339 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet2 | Destination: DC1-SPINE2_Ethernet7 | PASS |  |
| 340 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet3 | Destination: DC1-SPINE3_Ethernet7 | PASS |  |
| 341 | DC1-BL1B | IP Reachability | ip reachability test p2p links | Source: DC1-BL1B_Ethernet4 | Destination: DC1-SPINE4_Ethernet7 | PASS |  |
| 342 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet1 | Destination: DC1-SPINE1_Ethernet1 | PASS |  |
| 343 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet2 | Destination: DC1-SPINE2_Ethernet1 | PASS |  |
| 344 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet3 | Destination: DC1-SPINE3_Ethernet1 | PASS |  |
| 345 | DC1-LEAF1A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF1A_Ethernet4 | Destination: DC1-SPINE4_Ethernet1 | PASS |  |
| 346 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet1 | Destination: DC1-SPINE1_Ethernet2 | PASS |  |
| 347 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet2 | Destination: DC1-SPINE2_Ethernet2 | PASS |  |
| 348 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet3 | Destination: DC1-SPINE3_Ethernet2 | PASS |  |
| 349 | DC1-LEAF2A | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2A_Ethernet4 | Destination: DC1-SPINE4_Ethernet2 | PASS |  |
| 350 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet1 | Destination: DC1-SPINE1_Ethernet3 | PASS |  |
| 351 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet2 | Destination: DC1-SPINE2_Ethernet3 | PASS |  |
| 352 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet3 | Destination: DC1-SPINE3_Ethernet3 | PASS |  |
| 353 | DC1-LEAF2B | IP Reachability | ip reachability test p2p links | Source: DC1-LEAF2B_Ethernet4 | Destination: DC1-SPINE4_Ethernet3 | PASS |  |
| 354 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet6 | Destination: DC1-BL1A_Ethernet1 | PASS |  |
| 355 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet7 | Destination: DC1-BL1B_Ethernet1 | PASS |  |
| 356 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet1 | Destination: DC1-LEAF1A_Ethernet1 | PASS |  |
| 357 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet2 | Destination: DC1-LEAF2A_Ethernet1 | PASS |  |
| 358 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet3 | Destination: DC1-LEAF2B_Ethernet1 | PASS |  |
| 359 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet4 | Destination: DC1-SVC3A_Ethernet1 | PASS |  |
| 360 | DC1-SPINE1 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE1_Ethernet5 | Destination: DC1-SVC3B_Ethernet1 | PASS |  |
| 361 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet6 | Destination: DC1-BL1A_Ethernet2 | PASS |  |
| 362 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet7 | Destination: DC1-BL1B_Ethernet2 | PASS |  |
| 363 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet1 | Destination: DC1-LEAF1A_Ethernet2 | PASS |  |
| 364 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet2 | Destination: DC1-LEAF2A_Ethernet2 | PASS |  |
| 365 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet3 | Destination: DC1-LEAF2B_Ethernet2 | PASS |  |
| 366 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet4 | Destination: DC1-SVC3A_Ethernet2 | PASS |  |
| 367 | DC1-SPINE2 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE2_Ethernet5 | Destination: DC1-SVC3B_Ethernet2 | PASS |  |
| 368 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet6 | Destination: DC1-BL1A_Ethernet3 | PASS |  |
| 369 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet7 | Destination: DC1-BL1B_Ethernet3 | PASS |  |
| 370 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet1 | Destination: DC1-LEAF1A_Ethernet3 | PASS |  |
| 371 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet2 | Destination: DC1-LEAF2A_Ethernet3 | PASS |  |
| 372 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet3 | Destination: DC1-LEAF2B_Ethernet3 | PASS |  |
| 373 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet4 | Destination: DC1-SVC3A_Ethernet3 | PASS |  |
| 374 | DC1-SPINE3 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE3_Ethernet5 | Destination: DC1-SVC3B_Ethernet3 | PASS |  |
| 375 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet6 | Destination: DC1-BL1A_Ethernet4 | PASS |  |
| 376 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet7 | Destination: DC1-BL1B_Ethernet4 | PASS |  |
| 377 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet1 | Destination: DC1-LEAF1A_Ethernet4 | PASS |  |
| 378 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet2 | Destination: DC1-LEAF2A_Ethernet4 | PASS |  |
| 379 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet3 | Destination: DC1-LEAF2B_Ethernet4 | PASS |  |
| 380 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet4 | Destination: DC1-SVC3A_Ethernet4 | PASS |  |
| 381 | DC1-SPINE4 | IP Reachability | ip reachability test p2p links | Source: DC1-SPINE4_Ethernet5 | Destination: DC1-SVC3B_Ethernet4 | PASS |  |
| 382 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet1 | Destination: DC1-SPINE1_Ethernet4 | PASS |  |
| 383 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet2 | Destination: DC1-SPINE2_Ethernet4 | PASS |  |
| 384 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet3 | Destination: DC1-SPINE3_Ethernet4 | PASS |  |
| 385 | DC1-SVC3A | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3A_Ethernet4 | Destination: DC1-SPINE4_Ethernet4 | PASS |  |
| 386 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet1 | Destination: DC1-SPINE1_Ethernet5 | PASS |  |
| 387 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet2 | Destination: DC1-SPINE2_Ethernet5 | PASS |  |
| 388 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet3 | Destination: DC1-SPINE3_Ethernet5 | PASS |  |
| 389 | DC1-SVC3B | IP Reachability | ip reachability test p2p links | Source: DC1-SVC3B_Ethernet4 | Destination: DC1-SPINE4_Ethernet5 | PASS |  |
| 390 | DC1-BL1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 391 | DC1-BL1B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 392 | DC1-LEAF1A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 393 | DC1-LEAF2A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 394 | DC1-LEAF2B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 395 | DC1-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 396 | DC1-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 397 | DC1-SPINE3 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 398 | DC1-SPINE4 | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 399 | DC1-SVC3A | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 400 | DC1-SVC3B | BGP | ArBGP is configured and operating | ArBGP | PASS |  |
| 401 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.40 | PASS |  |
| 402 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.42 | PASS |  |
| 403 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.44 | PASS |  |
| 404 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.46 | PASS |  |
| 405 | DC1-BL1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.11 | PASS |  |
| 406 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.48 | PASS |  |
| 407 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.50 | PASS |  |
| 408 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.52 | PASS |  |
| 409 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.54 | PASS |  |
| 410 | DC1-BL1B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.10 | PASS |  |
| 411 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.0 | PASS |  |
| 412 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.2 | PASS |  |
| 413 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.4 | PASS |  |
| 414 | DC1-LEAF1A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.6 | PASS |  |
| 415 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.8 | PASS |  |
| 416 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.10 | PASS |  |
| 417 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.12 | PASS |  |
| 418 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.14 | PASS |  |
| 419 | DC1-LEAF2A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.3 | PASS |  |
| 420 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.16 | PASS |  |
| 421 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.18 | PASS |  |
| 422 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.20 | PASS |  |
| 423 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.22 | PASS |  |
| 424 | DC1-LEAF2B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.2 | PASS |  |
| 425 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.41 | PASS |  |
| 426 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.49 | PASS |  |
| 427 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.1 | PASS |  |
| 428 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.9 | PASS |  |
| 429 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.17 | PASS |  |
| 430 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.25 | PASS |  |
| 431 | DC1-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.33 | PASS |  |
| 432 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.43 | PASS |  |
| 433 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.51 | PASS |  |
| 434 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.3 | PASS |  |
| 435 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.11 | PASS |  |
| 436 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.19 | PASS |  |
| 437 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.27 | PASS |  |
| 438 | DC1-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.35 | PASS |  |
| 439 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.45 | PASS |  |
| 440 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.53 | PASS |  |
| 441 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.5 | PASS |  |
| 442 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.13 | PASS |  |
| 443 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.21 | PASS |  |
| 444 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.29 | PASS |  |
| 445 | DC1-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.37 | PASS |  |
| 446 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.47 | PASS |  |
| 447 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.55 | PASS |  |
| 448 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.7 | PASS |  |
| 449 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.15 | PASS |  |
| 450 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.23 | PASS |  |
| 451 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.31 | PASS |  |
| 452 | DC1-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.39 | PASS |  |
| 453 | DC1-SVC3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.24 | PASS |  |
| 454 | DC1-SVC3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.26 | PASS |  |
| 455 | DC1-SVC3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.28 | PASS |  |
| 456 | DC1-SVC3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.30 | PASS |  |
| 457 | DC1-SVC3A | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.7 | PASS |  |
| 458 | DC1-SVC3B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.32 | PASS |  |
| 459 | DC1-SVC3B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.34 | PASS |  |
| 460 | DC1-SVC3B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.36 | PASS |  |
| 461 | DC1-SVC3B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.31.251.38 | PASS |  |
| 462 | DC1-SVC3B | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 10.255.251.6 | PASS |  |
| 463 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.40 | PASS |  |
| 464 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.42 | PASS |  |
| 465 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.44 | PASS |  |
| 466 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.46 | PASS |  |
| 467 | DC1-BL1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.11 | PASS |  |
| 468 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.48 | PASS |  |
| 469 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.50 | PASS |  |
| 470 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.52 | PASS |  |
| 471 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.54 | PASS |  |
| 472 | DC1-BL1B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.10 | PASS |  |
| 473 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.0 | PASS |  |
| 474 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.2 | PASS |  |
| 475 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.4 | PASS |  |
| 476 | DC1-LEAF1A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.6 | PASS |  |
| 477 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.8 | PASS |  |
| 478 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.10 | PASS |  |
| 479 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.12 | PASS |  |
| 480 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.14 | PASS |  |
| 481 | DC1-LEAF2A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.3 | PASS |  |
| 482 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.16 | PASS |  |
| 483 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.18 | PASS |  |
| 484 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.20 | PASS |  |
| 485 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.22 | PASS |  |
| 486 | DC1-LEAF2B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.2 | PASS |  |
| 487 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.41 | PASS |  |
| 488 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.49 | PASS |  |
| 489 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.1 | PASS |  |
| 490 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.9 | PASS |  |
| 491 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.17 | PASS |  |
| 492 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.25 | PASS |  |
| 493 | DC1-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.33 | PASS |  |
| 494 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.43 | PASS |  |
| 495 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.51 | PASS |  |
| 496 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.3 | PASS |  |
| 497 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.11 | PASS |  |
| 498 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.19 | PASS |  |
| 499 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.27 | PASS |  |
| 500 | DC1-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.35 | PASS |  |
| 501 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.45 | PASS |  |
| 502 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.53 | PASS |  |
| 503 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.5 | PASS |  |
| 504 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.13 | PASS |  |
| 505 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.21 | PASS |  |
| 506 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.29 | PASS |  |
| 507 | DC1-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.37 | PASS |  |
| 508 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.47 | PASS |  |
| 509 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.55 | PASS |  |
| 510 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.7 | PASS |  |
| 511 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.15 | PASS |  |
| 512 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.23 | PASS |  |
| 513 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.31 | PASS |  |
| 514 | DC1-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.39 | PASS |  |
| 515 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.24 | PASS |  |
| 516 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.26 | PASS |  |
| 517 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.28 | PASS |  |
| 518 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.30 | PASS |  |
| 519 | DC1-SVC3A | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.7 | PASS |  |
| 520 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.32 | PASS |  |
| 521 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.34 | PASS |  |
| 522 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.36 | PASS |  |
| 523 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.31.251.38 | PASS |  |
| 524 | DC1-SVC3B | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.255.251.6 | PASS |  |
