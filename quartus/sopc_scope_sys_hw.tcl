package require -exact qsys 13.1

# module properties
set_module_property NAME {sopc_scope_sys_export}
set_module_property DISPLAY_NAME {sopc_scope_sys_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance clk_0 clock_source 13.1
    set_instance_parameter_value clk_0 {clockFrequency} {50000000.0}
    set_instance_parameter_value clk_0 {clockFrequencyKnown} {1}
    set_instance_parameter_value clk_0 {resetSynchronousEdges} {NONE}

    add_instance nios2_qsys_0 altera_nios2_qsys 13.1
    set_instance_parameter_value nios2_qsys_0 {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_showInternalSettings} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_performanceCounter} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_fullWaveformSignals} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_extraExceptionInfo} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_exportPCB} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_debugSimGen} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_bit31BypassDCache} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_bigEndian} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_export_large_RAMs} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_asic_enabled} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_alwaysEncrypt} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_allowFullAddressRange} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_activateTrace} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_activateTrace_user} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_activateTestEndChecker} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_activateMonitors} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_activateModelChecker} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_HBreakTest} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_breakslaveoveride} {0}
    set_instance_parameter_value nios2_qsys_0 {muldiv_divider} {0}
    set_instance_parameter_value nios2_qsys_0 {mpu_useLimit} {0}
    set_instance_parameter_value nios2_qsys_0 {mpu_enabled} {0}
    set_instance_parameter_value nios2_qsys_0 {mmu_enabled} {0}
    set_instance_parameter_value nios2_qsys_0 {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value nios2_qsys_0 {manuallyAssignCpuID} {1}
    set_instance_parameter_value nios2_qsys_0 {debug_triggerArming} {1}
    set_instance_parameter_value nios2_qsys_0 {debug_embeddedPLL} {1}
    set_instance_parameter_value nios2_qsys_0 {debug_debugReqSignals} {0}
    set_instance_parameter_value nios2_qsys_0 {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value nios2_qsys_0 {dcache_omitDataMaster} {0}
    set_instance_parameter_value nios2_qsys_0 {cpuReset} {0}
    set_instance_parameter_value nios2_qsys_0 {is_hardcopy_compatible} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_shadowRegisterSets} {0}
    set_instance_parameter_value nios2_qsys_0 {mpu_numOfInstRegion} {8}
    set_instance_parameter_value nios2_qsys_0 {mpu_numOfDataRegion} {8}
    set_instance_parameter_value nios2_qsys_0 {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value nios2_qsys_0 {debug_jtagInstanceID} {0}
    set_instance_parameter_value nios2_qsys_0 {resetOffset} {0}
    set_instance_parameter_value nios2_qsys_0 {exceptionOffset} {32}
    set_instance_parameter_value nios2_qsys_0 {cpuID} {0}
    set_instance_parameter_value nios2_qsys_0 {cpuID_stored} {0}
    set_instance_parameter_value nios2_qsys_0 {breakOffset} {32}
    set_instance_parameter_value nios2_qsys_0 {userDefinedSettings} {}
    set_instance_parameter_value nios2_qsys_0 {resetSlave} {temp_ram.s1}
    set_instance_parameter_value nios2_qsys_0 {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value nios2_qsys_0 {exceptionSlave} {temp_ram.s1}
    set_instance_parameter_value nios2_qsys_0 {breakSlave} {nios2_qsys_0.jtag_debug_module}
    set_instance_parameter_value nios2_qsys_0 {setting_perfCounterWidth} {32}
    set_instance_parameter_value nios2_qsys_0 {setting_interruptControllerType} {Internal}
    set_instance_parameter_value nios2_qsys_0 {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {setting_bhtPtrSz} {8}
    set_instance_parameter_value nios2_qsys_0 {muldiv_multiplierType} {EmbeddedMulFast}
    set_instance_parameter_value nios2_qsys_0 {mpu_minInstRegionSize} {12}
    set_instance_parameter_value nios2_qsys_0 {mpu_minDataRegionSize} {12}
    set_instance_parameter_value nios2_qsys_0 {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value nios2_qsys_0 {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value nios2_qsys_0 {mmu_tlbPtrSz} {7}
    set_instance_parameter_value nios2_qsys_0 {mmu_tlbNumWays} {16}
    set_instance_parameter_value nios2_qsys_0 {mmu_processIDNumBits} {8}
    set_instance_parameter_value nios2_qsys_0 {impl} {Fast}
    set_instance_parameter_value nios2_qsys_0 {icache_size} {4096}
    set_instance_parameter_value nios2_qsys_0 {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {icache_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {icache_numTCIM} {0}
    set_instance_parameter_value nios2_qsys_0 {icache_burstType} {None}
    set_instance_parameter_value nios2_qsys_0 {dcache_bursts} {false}
    set_instance_parameter_value nios2_qsys_0 {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value nios2_qsys_0 {debug_level} {Level1}
    set_instance_parameter_value nios2_qsys_0 {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value nios2_qsys_0 {dcache_size} {2048}
    set_instance_parameter_value nios2_qsys_0 {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {dcache_numTCDM} {0}
    set_instance_parameter_value nios2_qsys_0 {dcache_lineSize} {32}
    set_instance_parameter_value nios2_qsys_0 {setting_exportvectors} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_ecc_present} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_ic_ecc_present} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_rf_ecc_present} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_mmu_ecc_present} {1}
    set_instance_parameter_value nios2_qsys_0 {setting_dc_ecc_present} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_itcm_ecc_present} {0}
    set_instance_parameter_value nios2_qsys_0 {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value nios2_qsys_0 {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys_0 {bht_ramBlockType} {Automatic}

    add_instance temp_ram altera_avalon_onchip_memory2 13.1
    set_instance_parameter_value temp_ram {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value temp_ram {blockType} {AUTO}
    set_instance_parameter_value temp_ram {dataWidth} {8}
    set_instance_parameter_value temp_ram {dualPort} {0}
    set_instance_parameter_value temp_ram {initMemContent} {0}
    set_instance_parameter_value temp_ram {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value temp_ram {instanceID} {NONE}
    set_instance_parameter_value temp_ram {memorySize} {4096.0}
    set_instance_parameter_value temp_ram {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value temp_ram {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value temp_ram {simMemInitOnlyFilename} {0}
    set_instance_parameter_value temp_ram {singleClockOperation} {0}
    set_instance_parameter_value temp_ram {slave1Latency} {1}
    set_instance_parameter_value temp_ram {slave2Latency} {1}
    set_instance_parameter_value temp_ram {useNonDefaultInitFile} {0}
    set_instance_parameter_value temp_ram {useShallowMemBlocks} {0}
    set_instance_parameter_value temp_ram {writable} {1}
    set_instance_parameter_value temp_ram {ecc_enabled} {0}

    # connections and connection parameters
    add_connection nios2_qsys_0.instruction_master nios2_qsys_0.jtag_debug_module avalon
    set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module baseAddress {0xf800}
    set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

    add_connection nios2_qsys_0.data_master nios2_qsys_0.jtag_debug_module avalon
    set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module baseAddress {0xf800}
    set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

    add_connection clk_0.clk nios2_qsys_0.clk clock

    add_connection clk_0.clk_reset nios2_qsys_0.reset_n reset

    add_connection nios2_qsys_0.jtag_debug_module_reset nios2_qsys_0.reset_n reset

    add_connection nios2_qsys_0.jtag_debug_module_reset clk_0.clk_in_reset reset

    add_connection clk_0.clk temp_ram.clk1 clock

    add_connection nios2_qsys_0.data_master temp_ram.s1 avalon
    set_connection_parameter_value nios2_qsys_0.data_master/temp_ram.s1 arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys_0.data_master/temp_ram.s1 baseAddress {0x0000}
    set_connection_parameter_value nios2_qsys_0.data_master/temp_ram.s1 defaultConnection {0}

    add_connection nios2_qsys_0.instruction_master temp_ram.s1 avalon
    set_connection_parameter_value nios2_qsys_0.instruction_master/temp_ram.s1 arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys_0.instruction_master/temp_ram.s1 baseAddress {0x0000}
    set_connection_parameter_value nios2_qsys_0.instruction_master/temp_ram.s1 defaultConnection {0}

    add_connection clk_0.clk_reset temp_ram.reset1 reset

    add_connection nios2_qsys_0.jtag_debug_module_reset temp_ram.reset1 reset

    # exported interfaces
    add_interface clk clock sink
    set_interface_property clk EXPORT_OF clk_0.clk_in
}
