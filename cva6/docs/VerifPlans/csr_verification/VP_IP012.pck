(VMachine Architecture ID(MARCHID)
p0
ccopy_reg
_reconstructor
p1
(cvp_pack
Ip
p2
c__builtin__
object
p3
Ntp4
Rp5
(dp6
Vprop_count
p7
L1L
sVname
p8
g0
sVprop_list
p9
(dp10
sVip_num
p11
L12L
sVwid_order
p12
L12L
sVrfu_dict
p13
(dp14
sVrfu_list
p15
(lp16
(V000_MARCHID
p17
g1
(cvp_pack
Prop
p18
g3
Ntp19
Rp20
(dp21
Vitem_count
p22
L2L
sg8
g17
sVtag
p23
VVP_CVA6_CSR_VERIFICATION_F012_S000
p24
sVitem_list
p25
(dp26
sg12
L0L
sg15
(lp27
(V000
p28
g1
(cvp_pack
Item
p29
g3
Ntp30
Rp31
(dp32
g8
V000
p33
sg23
VVP_CVA6_CSR_VERIFICATION_F012_S000_I000
p34
sVdescription
p35
V\u000aTo verify the Power-on Reset value for MARCHID CSR.\u000a\u000aAddress Offset : 0xF12\u000aWidth (bits) : 32\u000aAccess Type : RO\u000aReset Value : 0x00000000\u000apriviliged mode : Machine
p36
sVpurpose
p37
V
p38
sVverif_goals
p39
V\u000aRead MARCHID CSR to check default POR value that should be equal to 0x00000000
p40
sVcoverage_loc
p41
g38
sVpfc
p42
L3L
sVtest_type
p43
L1L
sVcov_method
p44
L10L
sVcores
p45
L8L
sVcomments
p46
g38
sVstatus
p47
g38
sVsimu_target_list
p48
(lp49
sg15
(lp50
sVrfu_list_2
p51
(lp52
sg13
(dp53
Vlock_status
p54
L0L
ssbtp55
a(V001
p56
g1
(g29
g3
Ntp57
Rp58
(dp59
g8
V001
p60
sg23
VVP_CVA6_CSR_VERIFICATION_F012_S000_I001
p61
sg35
V\u000aVerifying MARCHID CSR access mode by attempting write.
p62
sg37
g38
sg39
V\u000aAttempts to access MARCHID by writing will raise illegal instruction exceptions.
p63
sg41
g38
sg42
L-1L
sg43
L-1L
sg44
L-1L
sg45
L8L
sg46
g38
sg47
g38
sg48
(lp64
sg15
(lp65
sg51
(lp66
sg13
(dp67
g54
L0L
ssbtp68
asVrfu_list_1
p69
(lp70
sg51
(lp71
sg13
(dp72
sbtp73
asVrfu_list_0
p74
(lp75
sg69
(lp76
sVvptool_gitrev
p77
V$Id: af214b54d38e440023a14011aefff4dabfd5f5ad $
p78
sVio_fmt_gitrev
p79
V$Id: 052d0c6f3d12d7984d208b14555a56b2f0c2485d $
p80
sVconfig_gitrev
p81
V$Id: 0422e19126dae20ffc4d5a84e4ce3de0b6eb4eb5 $
p82
sVymlcfg_gitrev
p83
V$Id: 286c689bd48b7a58f9a37754267895cffef1270c $
p84
sbtp85
.