# Module: CVA6_CSR_ACCESS_VERIFICATION

## Feature: Machine ISA(MISA)

### Sub-feature: 000_MISA

#### Item: 000

* **Requirement location:** riscv-privileged-20211203
* **Feature Description**
  
  To verify the Power-on Reset value for MISA CSR.  
    
  Address Offset 	: 0x301  
  Width (bits) 		: 32  
  Access Type 		: RO  
  Reset Value 		: 0x4094_1104  
  privilige mode	 : Machine Mode
* **Verification Goals**
  
  The read value of the MISA CSR should match the expected default reset value 0x4094_1104.
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F000_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
  Verifying R/W access of a MISA CSR by writing random data and Read the returned value to check correctness.
* **Verification Goals**
  
  After writing into MISA CSR with random data, the default value of the MISA CSR remains unchanged.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F000_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Interrupt Enable(MIE)

### Sub-feature: 000_MIE

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for Machine Interrupt Enable(MIE) CSR.  
    
  Address Offset : 0x304  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  The read value of the MIE CSR should match the expected default reset value 0x00000000
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F001_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
  Verifying R/W access of a MIE CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
  The read values should matches the written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F001_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Trap Vector(MTVEC)

### Sub-feature: 000_MTVEC

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MTVEC CSR.  
    
  Address Offset : 0x305  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
  Read MTVEC CSR to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F002_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MTVEC CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
  The read values OF MTVEC CSR should matches the written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F002_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Counter Enable(MCOUNTERN)

### Sub-feature: 000_MCOUNTERN

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MCOUNTERN CSR.  
    
  Address Offset : 0x306  
  Width (bits) 	 : 32  
  Access Type 	  : RW  
  Reset Value 	  : 0x00000000  
  priviliged mode  Machine
* **Verification Goals**
  
    
  Read MCOUNTERN CSR, to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F003_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
  Verifying R/W access of a MCOUNTERN CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F003_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Scratch(MSCRATCH)

### Sub-feature: 000_MSCRATCH

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MSCRATCH CSR.  
    
  Address Offset : 0x340  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MSCRATCH CSR to check default POR value that should be equal to 0x00000000.
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F004_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
  Verifying R/W access of a MSCRATCH CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values of MSCRATCH CSR should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F004_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Exception Program Counter(MEPC)

### Sub-feature: 000_MEPC

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MEPC CSR.  
    
  Address Offset : 0x341  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MEPC CSR to check default POR value that should be equal to 0x00000000.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F005_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MEPC CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F005_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Cause(MCAUSE)

### Sub-feature: 000_MCAUSE

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MCAUSE CSR.  
    
  Address Offset : 0x342  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MCAUSE CSR to check default POR value which should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F006_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
  Verifying R/W access of a MCAUSE CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F006_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Trap Value(MTVAL)

### Sub-feature: 000_MTVAL

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MTVAL CSR.  
    
  Address Offset : 0x343  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
  Read MTVAL CSR to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F007_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MTVAL CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F007_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Interrupt Pending(MIP 

### Sub-feature: 000_MIP

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MIP CSR.  
    
  Address Offset : 0x344  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
  Read MIP CSR, to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F008_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MP CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values of MIP CSR should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F008_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: M-Mode Cycle Counter(MCYCLEH)

### Sub-feature: 000_MCYCLEH

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MCYCLEH CSR.  
    
  Address Offset : 0xB80  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MCYCLEH CSR to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F009_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MCYCLEH CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
  The read values of MCYCLEH CSR should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F009_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Instruction Retired Counter(minstreth)

### Sub-feature: 000_MINSTRETH

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MINSTRETH CSR.  
    
  Address Offset : 0xB82  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
  Read MINSTRETH CSR, to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F010_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying R/W access of a MINSTRETH CSR by writing random valid data and Read back CSR values to check correctness.
* **Verification Goals**
  
    
  The read values of MINSTRETH should matches with written random data values.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F010_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Hardware Thread ID(MHARTID)

### Sub-feature: 000_MHARTID

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MHARTID CSR.  
    
  Address Offset : 0xF14	  
  Width (bits) : 32  
  Access Type : RO  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MHARTID CSR to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F011_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying MHARTID CSR access mode by attempting a write.
* **Verification Goals**
  
  Attempts to access MHARTID CSR by writing will raise illegal instruction exceptions.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F011_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Architecture ID(MARCHID)

### Sub-feature: 000_MARCHID

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MARCHID CSR.  
    
  Address Offset : 0xF12  
  Width (bits) : 32  
  Access Type : RW  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MARCHID CSR to check default POR value that should be equal to 0x00000000
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F012_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verifying MARCHID CSR access mode by attempting write.
* **Verification Goals**
  
    
  Attempts to access MARCHID by writing will raise illegal instruction exceptions.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F012_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Vendor ID Register(MVENDORID)

### Sub-feature: 000_MVENDORID

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
  To verify the Power-on Reset value for MVENDORID CSR.  
    
  Address Offset : 0xF11  
  Width (bits) : 32  
  Access Type : R0  
  Reset Value : 0x00000003  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MVENDORID CSR to check default POR value that should be equal to 0x00000003
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F013_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verify MVENDORID CSR by attempting write.
* **Verification Goals**
  
    
  Attempts to access MVENDORID CSR by writing will raise an illegal instruction exceptions.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F013_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
## Feature: Machine Implementation ID(MIMPID)

### Sub-feature: 000_MIMPID

#### Item: 000

* **Requirement location:** 
* **Feature Description**
  
    
  To verify the Power-on Reset value for MIMPID CSR.  
    
  Address Offset : 0xF13  
  Width (bits) : 32  
  Access Type : RO  
  Reset Value : 0x00000000  
  priviliged mode : Machine
* **Verification Goals**
  
    
  Read MIMPID CSR to check default POR value that should be equal to 0x00000000.
* **Pass/Fail Criteria:** Check RM
* **Test Type:** Directed SelfChk
* **Coverage Method:** N/A
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F014_S000_I000
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
#### Item: 001

* **Requirement location:** 
* **Feature Description**
  
    
  Verify MIMPID CSR by attempting write on it.
* **Verification Goals**
  
    
  Attempts to access MIMPID CSR by write will raise an e illegal instruction exceptions.
* **Pass/Fail Criteria:** NDY (Not Defined Yet)
* **Test Type:** NDY (Not Defined Yet)
* **Coverage Method:** NDY (Not Defined Yet)
* **Applicable Cores:** CV32A6_v0.1.0
* **Unique verification tag:** VP_CVA6_CSR_VERIFICATION_F014_S000_I001
* **Link to Coverage:** 
* **Comments**
  
  *(none)*  
  
