import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Window 2.2

Window {
    id: anotherWindow
    signal signalExit   // Задаём сигнал
    width: 640
    height: 480

    // Кнопка для открытия главного окна приложения
    Button {
        text: qsTr("Главное окно")
        width: 150
        height: 30
        x: 0
        y: 450
        onClicked: {
            anotherWindow.signalExit() // Вызываем сигнал
        }
    }

    TextArea {
        width: 600
        height: 450
        text:"[    0.000000] microcode: microcode updated early to revision 0x21, date = 2019-02-13
[    0.000000] Linux version 5.15.0-57-generic (buildd@lcy02-amd64-020) (gcc (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #63~20.04.1-Ubuntu SMP Wed Nov 30 13:40:16 UTC 2022 (Ubuntu 5.15.0-57.63~20.04.1-generic 5.15.74)
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-57-generic root=UUID=a9d4a806-1aff-489a-89c5-c03b2d656b04 ro quiet splash vt.handoff=7
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Hygon HygonGenuine
[    0.000000]   Centaur CentaurHauls
[    0.000000]   zhaoxin   Shanghai
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is 832 bytes, using 'standard' format.
[    0.000000] signal: max sigframe size: 1776
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009ffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000001fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000020000000-0x00000000201fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000020200000-0x0000000040003fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000040004000-0x0000000040004fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000040005000-0x00000000d8761fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000d8762000-0x00000000d89d6fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000d89d7000-0x00000000d89e9fff] ACPI data
[    0.000000] BIOS-e820: [mem 0x00000000d89ea000-0x00000000d8a72fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000d8a73000-0x00000000d8a80fff] ACPI data
[    0.000000] BIOS-e820: [mem 0x00000000d8a81000-0x00000000d8b0bfff] usable
[    0.000000] BIOS-e820: [mem 0x00000000d8b0c000-0x00000000d8bbefff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000d8bbf000-0x00000000d8f68fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000d8f69000-0x00000000d8f69fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000d8f6a000-0x00000000d8facfff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000d8fad000-0x00000000d9e0ffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000d9e10000-0x00000000d9ff1fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000d9ff2000-0x00000000d9ffffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000db000000-0x00000000df1fffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000f8000000-0x00000000fbffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed00000-0x00000000fed03fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed1c000-0x00000000fed44fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed90000-0x00000000fed93fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000021edfffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] e820: update [mem 0x93135018-0x93145057] usable ==> usable
[    0.000000] e820: update [mem 0x93135018-0x93145057] usable ==> usable
[    0.000000] e820: update [mem 0x93126018-0x93134e57] usable ==> usable
[    0.000000] e820: update [mem 0x93126018-0x93134e57] usable ==> usable
[    0.000000] extended physical RAM map:
[    0.000000] reserve setup_data: [mem 0x0000000000000000-0x000000000009ffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000000100000-0x000000001fffffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000020000000-0x00000000201fffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000020200000-0x0000000040003fff] usable
[    0.000000] reserve setup_data: [mem 0x0000000040004000-0x0000000040004fff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000040005000-0x0000000093126017] usable
[    0.000000] reserve setup_data: [mem 0x0000000093126018-0x0000000093134e57] usable
[    0.000000] reserve setup_data: [mem 0x0000000093134e58-0x0000000093135017] usable
[    0.000000] reserve setup_data: [mem 0x0000000093135018-0x0000000093145057] usable
[    0.000000] reserve setup_data: [mem 0x0000000093145058-0x00000000d8761fff] usable
[    0.000000] reserve setup_data: [mem 0x00000000d8762000-0x00000000d89d6fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000d89d7000-0x00000000d89e9fff] ACPI data
[    0.000000] reserve setup_data: [mem 0x00000000d89ea000-0x00000000d8a72fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000d8a73000-0x00000000d8a80fff] ACPI data
[    0.000000] reserve setup_data: [mem 0x00000000d8a81000-0x00000000d8b0bfff] usable
[    0.000000] reserve setup_data: [mem 0x00000000d8b0c000-0x00000000d8bbefff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x00000000d8bbf000-0x00000000d8f68fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000d8f69000-0x00000000d8f69fff] usable
[    0.000000] reserve setup_data: [mem 0x00000000d8f6a000-0x00000000d8facfff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x00000000d8fad000-0x00000000d9e0ffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000d9e10000-0x00000000d9ff1fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000d9ff2000-0x00000000d9ffffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000db000000-0x00000000df1fffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000f8000000-0x00000000fbffffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fed00000-0x00000000fed03fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fed1c000-0x00000000fed44fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fed90000-0x00000000fed93fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000100000000-0x000000021edfffff] usable
[    0.000000] efi: EFI v2.31 by American Megatrends
[    0.000000] efi: ACPI=0xd89d7000 ACPI 2.0=0xd89d7000 SMBIOS=0xd8ee7518
[    0.000000] secureboot: Secure boot disabled
[    0.000000] SMBIOS 2.7 present.
[    0.000000] DMI: Hewlett-Packard HP Compaq Pro 6300 SFF/339A, BIOS K01 v03.04 10/05/2016
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 3192.794 MHz processor
[    0.000864] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000867] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000880] last_pfn = 0x21ee00 max_arch_pfn = 0x400000000
[    0.000996] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
[    0.001626] total RAM covered: 8094M
[    0.001813] Found optimal setting for mtrr clean up
[    0.001813]  gran_size: 64K 	chunk_size: 128M 	num_reg: 9  	lose cover RAM: 0G
[    0.002114] e820: update [mem 0xdb000000-0xffffffff] usable ==> reserved
[    0.002118] last_pfn = 0xda000 max_arch_pfn = 0x400000000
[    0.006601] found SMP MP-table at [mem 0x000f4d70-0x000f4d7f]
[    0.008012] secureboot: Secure boot disabled
[    0.008013] RAMDISK: [mem 0x38121000-0x3c7cffff]
[    0.008019] ACPI: Early table checksum verification disabled
[    0.008022] ACPI: RSDP 0x00000000D89D7000 000024 (v02 HPQOEM)
[    0.008026] ACPI: XSDT 0x00000000D89D7080 000084 (v01 HPQOEM SLIC-BPC 01072009 AMI  00010013)
[    0.008033] ACPI: FACP 0x00000000D89E1620 00010C (v05 HPQOEM SLIC-BPC 01072009 AMI  00010013)
[    0.008039] ACPI: DSDT 0x00000000D89D7198 00A485 (v02 HPQOEM SLIC-BPC 00000017 INTL 20051117)
[    0.008043] ACPI: FACS 0x00000000D8BBD080 000040
[    0.008046] ACPI: APIC 0x00000000D89E1730 000072 (v03 HPQOEM SLIC-BPC 01072009 AMI  00010013)
[    0.008050] ACPI: FPDT 0x00000000D89E17A8 000044 (v01 HPQOEM SLIC-BPC 01072009 AMI  00010013)
[    0.008053] ACPI: MCFG 0x00000000D89E17F0 00003C (v01 HPQOEM SLIC-BPC 01072009 MSFT 00000097)
[    0.008057] ACPI: HPET 0x00000000D89E1830 000038 (v01 HPQOEM SLIC-BPC 01072009 AMI. 00000005)
[    0.008060] ACPI: SSDT 0x00000000D89E1868 00036D (v01 SataRe SataTabl 00001000 INTL 20091112)
[    0.008064] ACPI: SSDT 0x00000000D89E1BD8 00668F (v01 COMPAQ WMI      00000001 MSFT 03000001)
[    0.008068] ACPI: SLIC 0x00000000D89E8268 000176 (v01 HPQOEM SLIC-BPC 00000001      00000000)
[    0.008071] ACPI: SSDT 0x00000000D89E83E0 0009AA (v01 PmRef  Cpu0Ist  00003000 INTL 20051117)
[    0.008075] ACPI: SSDT 0x00000000D89E8D90 000A92 (v01 PmRef  CpuPm    00003000 INTL 20051117)
[    0.008079] ACPI: TCPA 0x00000000D89E9828 000032 (v02 APTIO4 NAPAASF  00000001 MSFT 01000013)
[    0.008082] ACPI: ASF! 0x00000000D89E9860 0000A5 (v32 INTEL   HCG     00000001 TFSM 000F4240)
[    0.008085] ACPI: Reserving FACP table memory at [mem 0xd89e1620-0xd89e172b]
[    0.008087] ACPI: Reserving DSDT table memory at [mem 0xd89d7198-0xd89e161c]
[    0.008089] ACPI: Reserving FACS table memory at [mem 0xd8bbd080-0xd8bbd0bf]
[    0.008090] ACPI: Reserving APIC table memory at [mem 0xd89e1730-0xd89e17a1]
[    0.008091] ACPI: Reserving FPDT table memory at [mem 0xd89e17a8-0xd89e17eb]
[    0.008092] ACPI: Reserving MCFG table memory at [mem 0xd89e17f0-0xd89e182b]
[    0.008093] ACPI: Reserving HPET table memory at [mem 0xd89e1830-0xd89e1867]
[    0.008095] ACPI: Reserving SSDT table memory at [mem 0xd89e1868-0xd89e1bd4]
[    0.008096] ACPI: Reserving SSDT table memory at [mem 0xd89e1bd8-0xd89e8266]
[    0.008097] ACPI: Reserving SLIC table memory at [mem 0xd89e8268-0xd89e83dd]
[    0.008098] ACPI: Reserving SSDT table memory at [mem 0xd89e83e0-0xd89e8d89]
[    0.008099] ACPI: Reserving SSDT table memory at [mem 0xd89e8d90-0xd89e9821]
[    0.008101] ACPI: Reserving TCPA table memory at [mem 0xd89e9828-0xd89e9859]
[    0.008102] ACPI: Reserving ASF! table memory at [mem 0xd89e9860-0xd89e9904]
[    0.008215] No NUMA configuration found
[    0.008216] Faking a node at [mem 0x0000000000000000-0x000000021edfffff]
[    0.008226] NODE_DATA(0) allocated [mem 0x21edd3000-0x21edfcfff]
[    0.008542] Zone ranges:
[    0.008543]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.008545]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.008547]   Normal   [mem 0x0000000100000000-0x000000021edfffff]
[    0.008548]   Device   empty
[    0.008549] Movable zone start for each node
[    0.008552] Early memory node ranges
[    0.008553]   node   0: [mem 0x0000000000001000-0x000000000009ffff]
[    0.008555]   node   0: [mem 0x0000000000100000-0x000000001fffffff]
[    0.008556]   node   0: [mem 0x0000000020200000-0x0000000040003fff]
[    0.008557]   node   0: [mem 0x0000000040005000-0x00000000d8761fff]
[    0.008558]   node   0: [mem 0x00000000d8a81000-0x00000000d8b0bfff]
[    0.008559]   node   0: [mem 0x00000000d8f69000-0x00000000d8f69fff]
[    0.008560]   node   0: [mem 0x00000000d8fad000-0x00000000d9e0ffff]
[    0.008561]   node   0: [mem 0x00000000d9ff2000-0x00000000d9ffffff]
[    0.008562]   node   0: [mem 0x0000000100000000-0x000000021edfffff]
[    0.008564] Initmem setup node 0 [mem 0x0000000000001000-0x000000021edfffff]
[    0.008569] On node 0, zone DMA: 1 pages in unavailable ranges
[    0.008590] On node 0, zone DMA: 96 pages in unavailable ranges
[    0.010302] On node 0, zone DMA32: 512 pages in unavailable ranges
[    0.014881] On node 0, zone DMA32: 1 pages in unavailable ranges
[    0.014898] On node 0, zone DMA32: 799 pages in unavailable ranges
[    0.014914] On node 0, zone DMA32: 1117 pages in unavailable ranges
[    0.014941] On node 0, zone DMA32: 67 pages in unavailable ranges
[    0.014948] On node 0, zone DMA32: 482 pages in unavailable ranges
[    0.023850] On node 0, zone Normal: 24576 pages in unavailable ranges
[    0.023912] On node 0, zone Normal: 4608 pages in unavailable ranges
[    0.023922] Reserving Intel graphics memory at [mem 0xdb200000-0xdf1fffff]
[    0.024026] ACPI: PM-Timer IO Port: 0x408
[    0.024035] ACPI: LAPIC_NMI (acpi_id[0xff] high edge lint[0x1])
[    0.024049] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.024052] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.024055] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.024058] ACPI: Using ACPI (MADT) for SMP configuration information
[    0.024060] ACPI: HPET id: 0x8086a701 base: 0xfed00000
[    0.024065] TSC deadline timer available
[    0.024066] smpboot: Allowing 4 CPUs, 0 hotplug CPUs
[    0.024097] PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.024099] PM: hibernation: Registered nosave memory: [mem 0x000a0000-0x000fffff]
[    0.024102] PM: hibernation: Registered nosave memory: [mem 0x20000000-0x201fffff]
[    0.024104] PM: hibernation: Registered nosave memory: [mem 0x40004000-0x40004fff]
[    0.024106] PM: hibernation: Registered nosave memory: [mem 0x93126000-0x93126fff]
[    0.024108] PM: hibernation: Registered nosave memory: [mem 0x93134000-0x93134fff]
[    0.024109] PM: hibernation: Registered nosave memory: [mem 0x93135000-0x93135fff]
[    0.024111] PM: hibernation: Registered nosave memory: [mem 0x93145000-0x93145fff]
[    0.024113] PM: hibernation: Registered nosave memory: [mem 0xd8762000-0xd89d6fff]
[    0.024114] PM: hibernation: Registered nosave memory: [mem 0xd89d7000-0xd89e9fff]
[    0.024115] PM: hibernation: Registered nosave memory: [mem 0xd89ea000-0xd8a72fff]
[    0.024116] PM: hibernation: Registered nosave memory: [mem 0xd8a73000-0xd8a80fff]
[    0.024118] PM: hibernation: Registered nosave memory: [mem 0xd8b0c000-0xd8bbefff]
[    0.024119] PM: hibernation: Registered nosave memory: [mem 0xd8bbf000-0xd8f68fff]
[    0.024121] PM: hibernation: Registered nosave memory: [mem 0xd8f6a000-0xd8facfff]
[    0.024123] PM: hibernation: Registered nosave memory: [mem 0xd9e10000-0xd9ff1fff]
[    0.024125] PM: hibernation: Registered nosave memory: [mem 0xda000000-0xdaffffff]
[    0.024126] PM: hibernation: Registered nosave memory: [mem 0xdb000000-0xdf1fffff]
[    0.024127] PM: hibernation: Registered nosave memory: [mem 0xdf200000-0xf7ffffff]
[    0.024128] PM: hibernation: Registered nosave memory: [mem 0xf8000000-0xfbffffff]
[    0.024129] PM: hibernation: Registered nosave memory: [mem 0xfc000000-0xfebfffff]
[    0.024130] PM: hibernation: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.024131] PM: hibernation: Registered nosave memory: [mem 0xfec01000-0xfecfffff]
[    0.024131] PM: hibernation: Registered nosave memory: [mem 0xfed00000-0xfed03fff]
[    0.024132] PM: hibernation: Registered nosave memory: [mem 0xfed04000-0xfed1bfff]
[    0.024133] PM: hibernation: Registered nosave memory: [mem 0xfed1c000-0xfed44fff]
[    0.024134] PM: hibernation: Registered nosave memory: [mem 0xfed45000-0xfed8ffff]
[    0.024135] PM: hibernation: Registered nosave memory: [mem 0xfed90000-0xfed93fff]
[    0.024136] PM: hibernation: Registered nosave memory: [mem 0xfed94000-0xfedfffff]
[    0.024137] PM: hibernation: Registered nosave memory: [mem 0xfee00000-0xfee00fff]
[    0.024137] PM: hibernation: Registered nosave memory: [mem 0xfee01000-0xfeffffff]
[    0.024138] PM: hibernation: Registered nosave memory: [mem 0xff000000-0xffffffff]
[    0.024140] [mem 0xdf200000-0xf7ffffff] available for PCI devices
[    0.024142] Booting paravirtualized kernel on bare hardware
[    0.024145] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.024153] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:4 nr_cpu_ids:4 nr_node_ids:1
[    0.024333] percpu: Embedded 60 pages/cpu s208896 r8192 d28672 u524288
[    0.024341] pcpu-alloc: s208896 r8192 d28672 u524288 alloc=1*2097152
[    0.024344] pcpu-alloc: [0] 0 1 2 3
[    0.024380] Built 1 zonelists, mobility grouping on.  Total pages: 2032452
[    0.024382] Policy zone: Normal
[    0.024383] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-5.15.0-57-generic root=UUID=a9d4a806-1aff-489a-89c5-c03b2d656b04 ro quiet splash vt.handoff=7
[    0.024474] Unknown kernel command line parameters splash BOOT_IMAGE=/boot/vmlinuz-5.15.0-57-generic, will be passed to user space.
[    0.024908] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.025130] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.025189] mem auto-init: stack:off, heap alloc:on, heap free:off
[    0.056458] Memory: 7684588K/8259572K available (16393K kernel code, 4374K rwdata, 10792K rodata, 3228K init, 6580K bss, 574724K reserved, 0K cma-reserved)
[    0.056745] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.056761] Kernel/User page tables isolation: enabled
[    0.056777] ftrace: allocating 50042 entries in 196 pages
[    0.080078] ftrace: allocated 196 pages with 3 groups
[    0.080192] rcu: Hierarchical RCU implementation.
[    0.080194] rcu: 	RCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=4.
[    0.080196] 	Rude variant of Tasks RCU enabled.
[    0.080196] 	Tracing variant of Tasks RCU enabled.
[    0.080197] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.080198] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.084580] NR_IRQS: 524544, nr_irqs: 456, preallocated irqs: 16
[    0.084793] random: crng init done
[    0.084817] Console: colour dummy device 80x25
[    0.084835] printk: console [tty0] enabled
[    0.084853] ACPI: Core revision 20210730
[    0.084965] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 133484882848 ns
[    0.084979] APIC: Switch to symmetric I/O mode setup
[    0.085048] x2apic: IRQ remapping doesn't support X2APIC mode
[    0.085463] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.104981] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x2e05b2c1dde, max_idle_ns: 440795275151 ns
[    0.104987] Calibrating delay loop (skipped), value calculated using timer frequency.. 6385.58 BogoMIPS (lpj=12771176)
[    0.104990] pid_max: default: 32768 minimum: 301
[    0.110642] LSM: Security Framework initializing
[    0.110654] landlock: Up and running.
[    0.110655] Yama: becoming mindful.
[    0.110679] AppArmor: AppArmor initialized
[    0.110721] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.110738] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.110983] CPU0: Thermal monitoring enabled (TM1)
[    0.111003] process: using mwait in idle threads
[    0.111006] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 8
[    0.111007] Last level dTLB entries: 4KB 512, 2MB 32, 4MB 32, 1GB 0
[    0.111012] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.111014] Spectre V2 : Mitigation: Retpolines
[    0.111014] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    0.111015] Spectre V2 : Spectre v2 / SpectreRSB : Filling RSB on VMEXIT
[    0.111015] Spectre V2 : Enabling Restricted Speculation for firmware calls
[    0.111017] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    0.111018] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    0.111021] MDS: Mitigation: Clear CPU buffers
[    0.111022] MMIO Stale Data: Unknown: No mitigations
[    0.111023] SRBDS: Vulnerable: No microcode
[    0.129679] Freeing SMP alternatives memory: 40K
[    0.129977] smpboot: Estimated ratio of average max frequency by base frequency (times 1024): 1088
[    0.129988] smpboot: CPU0: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz (family: 0x6, model: 0x3a, stepping: 0x9)
[    0.130133] Performance Events: PEBS fmt1+, IvyBridge events, 16-deep LBR, full-width counters, Intel PMU driver.
[    0.130141] ... version:                3
[    0.130142] ... bit width:              48
[    0.130143] ... generic registers:      8
[    0.130143] ... value mask:             0000ffffffffffff
[    0.130144] ... max period:             00007fffffffffff
[    0.130145] ... fixed-purpose events:   3
[    0.130146] ... event mask:             00000007000000ff
[    0.130260] rcu: Hierarchical SRCU implementation.
[    0.130828] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    0.130874] smp: Bringing up secondary CPUs ...
[    0.130966] x86: Booting SMP configuration:
[    0.130968] .... node  #0, CPUs:      #1 #2 #3
[    0.139001] smp: Brought up 1 node, 4 CPUs
[    0.139001] smpboot: Max logical packages: 1
[    0.139001] smpboot: Total of 4 processors activated (25542.35 BogoMIPS)
[    0.139001] devtmpfs: initialized
[    0.139001] x86/mm: Memory block size: 128MB
[    0.141120] ACPI: PM: Registering ACPI NVS region [mem 0xd8b0c000-0xd8bbefff] (733184 bytes)
[    0.141120] ACPI: PM: Registering ACPI NVS region [mem 0xd8f6a000-0xd8facfff] (274432 bytes)
[    0.141120] reboot: HP Compaq Laptop series board detected. Selecting BIOS-method for reboots.
[    0.141120] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.141120] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.141120] pinctrl core: initialized pinctrl subsystem
[    0.141216] PM: RTC time: 14:03:41, date: 2023-02-22
[    0.141325] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.141455] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic allocations
[    0.141511] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.141567] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.141574] audit: initializing netlink subsys (disabled)
[    0.141597] audit: type=2000 audit(1677074621.056:1): state=initialized audit_enabled=0 res=1
[    0.141597] thermal_sys: Registered thermal governor 'fair_share'
[    0.141597] thermal_sys: Registered thermal governor 'bang_bang'
[    0.141597] thermal_sys: Registered thermal governor 'step_wise'
[    0.141597] thermal_sys: Registered thermal governor 'user_space'
[    0.141597] thermal_sys: Registered thermal governor 'power_allocator'
[    0.141597] EISA bus registered
[    0.141597] cpuidle: using governor ladder
[    0.141597] cpuidle: using governor menu
[    0.141597] ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
[    0.141597] ACPI: bus type PCI registered
[    0.141597] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.141597] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xf8000000-0xfbffffff] (base 0xf8000000)
[    0.141597] PCI: MMCONFIG at [mem 0xf8000000-0xfbffffff] reserved in E820
[    0.141597] PCI: Using configuration type 1 for base access
[    0.141597] core: PMU erratum BJ122, BV98, HSD29 workaround disabled, HT off
[    0.141597] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.142115] Kprobes globally optimized
[    0.142119] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.142119] ACPI: Added _OSI(Module Device)
[    0.142119] ACPI: Added _OSI(Processor Device)
[    0.142119] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.142119] ACPI: Added _OSI(Processor Aggregator Device)
[    0.142119] ACPI: Added _OSI(Linux-Dell-Video)
[    0.142119] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.142119] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.148350] ACPI: 5 ACPI AML tables successfully acquired and loaded
[    0.153419] ACPI: Dynamic OEM Table Load:
[    0.153426] ACPI: SSDT 0xFFFF989940807000 00083B (v01 PmRef  Cpu0Cst  00003001 INTL 20051117)
[    0.154256] ACPI: Dynamic OEM Table Load:
[    0.154260] ACPI: SSDT 0xFFFF989940280C00 000303 (v01 PmRef  ApIst    00003000 INTL 20051117)
[    0.154882] ACPI: Dynamic OEM Table Load:
[    0.154886] ACPI: SSDT 0xFFFF9899401F4800 000119 (v01 PmRef  ApCst    00003000 INTL 20051117)
[    0.156390] ACPI: Interpreter enabled
[    0.156411] ACPI: PM: (supports S0 S3 S4 S5)
[    0.156412] ACPI: Using IOAPIC for interrupt routing
[    0.157003] PCI: Using host bridge windows from ACPI; if necessary, use pci=nocrs and report a bug
[    0.157005] PCI: Using E820 reservations for host bridge windows
[    0.157309] ACPI: Enabled 14 GPEs in block 00 to 3F
[    0.166318] ACPI: PM: Power Resource [FN00]
[    0.166394] ACPI: PM: Power Resource [FN01]
[    0.166466] ACPI: PM: Power Resource [FN02]
[    0.166539] ACPI: PM: Power Resource [FN03]
[    0.166611] ACPI: PM: Power Resource [FN04]
[    0.167331] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-3e])
[    0.167337] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
[    0.167656] acpi PNP0A08:00: _OSC: platform does not support [PCIeHotplug SHPCHotplug PME]
[    0.167852] acpi PNP0A08:00: _OSC: OS now controls [AER PCIeCapability LTR DPC]
[    0.167854] acpi PNP0A08:00: FADT indicates ASPM is unsupported, using BIOS configuration
[    0.168456] PCI host bridge to bus 0000:00
[    0.168459] pci_bus 0000:00: root bus resource [bus 00-3e]
[    0.168461] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.168463] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.168464] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.168465] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000dffff window]
[    0.168467] pci_bus 0000:00: root bus resource [mem 0xdf200000-0xfeafffff window]
[    0.168523] pci 0000:00:00.0: [8086:0150] type 00 class 0x060000
[    0.168709] pci 0000:00:02.0: [8086:0152] type 00 class 0x030000
[    0.168717] pci 0000:00:02.0: reg 0x10: [mem 0xf7800000-0xf7bfffff 64bit]
[    0.168722] pci 0000:00:02.0: reg 0x18: [mem 0xe0000000-0xefffffff 64bit pref]
[    0.168726] pci 0000:00:02.0: reg 0x20: [io  0xf000-0xf03f]
[    0.168736] pci 0000:00:02.0: BAR 2: assigned to efifb
[    0.168739] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    0.169002] pci 0000:00:14.0: [8086:1e31] type 00 class 0x0c0330
[    0.169022] pci 0000:00:14.0: reg 0x10: [mem 0xf7c20000-0xf7c2ffff 64bit]
[    0.169088] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    0.169208] pci 0000:00:16.0: [8086:1e3a] type 00 class 0x078000
[    0.169228] pci 0000:00:16.0: reg 0x10: [mem 0xf7c3c000-0xf7c3c00f 64bit]
[    0.169299] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[    0.169438] pci 0000:00:16.3: [8086:1e3d] type 00 class 0x070002
[    0.169452] pci 0000:00:16.3: reg 0x10: [io  0xf0e0-0xf0e7]
[    0.169458] pci 0000:00:16.3: reg 0x14: [mem 0xf7c3a000-0xf7c3afff]
[    0.169686] pci 0000:00:19.0: [8086:1502] type 00 class 0x020000
[    0.169701] pci 0000:00:19.0: reg 0x10: [mem 0xf7c00000-0xf7c1ffff]
[    0.169708] pci 0000:00:19.0: reg 0x14: [mem 0xf7c39000-0xf7c39fff]
[    0.169715] pci 0000:00:19.0: reg 0x18: [io  0xf080-0xf09f]
[    0.169770] pci 0000:00:19.0: PME# supported from D0 D3hot D3cold
[    0.169927] pci 0000:00:1a.0: [8086:1e2d] type 00 class 0x0c0320
[    0.169943] pci 0000:00:1a.0: reg 0x10: [mem 0xf7c38000-0xf7c383ff]
[    0.170022] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[    0.170180] pci 0000:00:1b.0: [8086:1e20] type 00 class 0x040300
[    0.170196] pci 0000:00:1b.0: reg 0x10: [mem 0xf7c30000-0xf7c33fff 64bit]
[    0.170261] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.170427] pci 0000:00:1d.0: [8086:1e26] type 00 class 0x0c0320
[    0.170444] pci 0000:00:1d.0: reg 0x10: [mem 0xf7c37000-0xf7c373ff]
[    0.170523] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    0.170677] pci 0000:00:1e.0: [8086:244e] type 01 class 0x060401
[    0.170877] pci 0000:00:1f.0: [8086:1e48] type 00 class 0x060100
[    0.171119] pci 0000:00:1f.2: [8086:1e02] type 00 class 0x010601
[    0.171133] pci 0000:00:1f.2: reg 0x10: [io  0xf0d0-0xf0d7]
[    0.171140] pci 0000:00:1f.2: reg 0x14: [io  0xf0c0-0xf0c3]
[    0.171147] pci 0000:00:1f.2: reg 0x18: [io  0xf0b0-0xf0b7]
[    0.171154] pci 0000:00:1f.2: reg 0x1c: [io  0xf0a0-0xf0a3]
[    0.171160] pci 0000:00:1f.2: reg 0x20: [io  0xf060-0xf07f]
[    0.171167] pci 0000:00:1f.2: reg 0x24: [mem 0xf7c36000-0xf7c367ff]
[    0.171205] pci 0000:00:1f.2: PME# supported from D3hot
[    0.171349] pci 0000:00:1f.3: [8086:1e22] type 00 class 0x0c0500
[    0.171367] pci 0000:00:1f.3: reg 0x10: [mem 0xf7c35000-0xf7c350ff 64bit]
[    0.171386] pci 0000:00:1f.3: reg 0x20: [io  0xf040-0xf05f]
[    0.171469] pci_bus 0000:01: extended config space not accessible
[    0.171517] pci 0000:00:1e.0: PCI bridge to [bus 01] (subtractive decode)
[    0.171526] pci 0000:00:1e.0:   bridge window [io  0x0000-0x0cf7 window] (subtractive decode)
[    0.171528] pci 0000:00:1e.0:   bridge window [io  0x0d00-0xffff window] (subtractive decode)
[    0.171529] pci 0000:00:1e.0:   bridge window [mem 0x000a0000-0x000bffff window] (subtractive decode)
[    0.171530] pci 0000:00:1e.0:   bridge window [mem 0x000d0000-0x000dffff window] (subtractive decode)
[    0.171532] pci 0000:00:1e.0:   bridge window [mem 0xdf200000-0xfeafffff window] (subtractive decode)
[    0.172350] ACPI: PCI: Interrupt link LNKA configured for IRQ 11
[    0.172427] ACPI: PCI: Interrupt link LNKB configured for IRQ 0
[    0.172428] ACPI: PCI: Interrupt link LNKB disabled
[    0.172497] ACPI: PCI: Interrupt link LNKC configured for IRQ 5
[    0.172570] ACPI: PCI: Interrupt link LNKD configured for IRQ 10
[    0.172644] ACPI: PCI: Interrupt link LNKE configured for IRQ 5
[    0.172718] ACPI: PCI: Interrupt link LNKF configured for IRQ 0
[    0.172719] ACPI: PCI: Interrupt link LNKF disabled
[    0.172792] ACPI: PCI: Interrupt link LNKG configured for IRQ 11
[    0.172863] ACPI: PCI: Interrupt link LNKH configured for IRQ 10
[    0.173236] iommu: Default domain type: Translated
[    0.173236] iommu: DMA domain TLB invalidation policy: lazy mode
[    0.173236] SCSI subsystem initialized
[    0.173236] libata version 3.00 loaded.
[    0.173236] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.173236] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    0.173236] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.173236] vgaarb: loaded
[    0.173236] ACPI: bus type USB registered
[    0.173236] usbcore: registered new interface driver usbfs
[    0.173236] usbcore: registered new interface driver hub
[    0.173236] usbcore: registered new device driver usb
[    0.173236] pps_core: LinuxPPS API ver. 1 registered
[    0.173236] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.173236] PTP clock support registered
[    0.173236] EDAC MC: Ver: 3.0.0
[    0.173236] Registered efivars operations
[    0.173236] NetLabel: Initializing
[    0.173236] NetLabel:  domain hash size = 128
[    0.173236] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    0.173236] NetLabel:  unlabeled traffic allowed by default
[    0.173236] PCI: Using ACPI for IRQ routing
[    0.174474] PCI: pci_cache_line_size set to 64 bytes
[    0.174503] e820: reserve RAM buffer [mem 0x40004000-0x43ffffff]
[    0.174505] e820: reserve RAM buffer [mem 0x93126018-0x93ffffff]
[    0.174506] e820: reserve RAM buffer [mem 0x93135018-0x93ffffff]
[    0.174507] e820: reserve RAM buffer [mem 0xd8762000-0xdbffffff]
[    0.174509] e820: reserve RAM buffer [mem 0xd8b0c000-0xdbffffff]
[    0.174510] e820: reserve RAM buffer [mem 0xd8f6a000-0xdbffffff]
[    0.174511] e820: reserve RAM buffer [mem 0xd9e10000-0xdbffffff]
[    0.174512] e820: reserve RAM buffer [mem 0xda000000-0xdbffffff]
[    0.174513] e820: reserve RAM buffer [mem 0x21ee00000-0x21fffffff]
[    0.174517] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    0.174517] hpet0: 8 comparators, 64-bit 14.318180 MHz counter
[    0.178036] clocksource: Switched to clocksource tsc-early
[    0.185468] VFS: Disk quotas dquot_6.6.0
[    0.185484] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.185583] AppArmor: AppArmor Filesystem Enabled
[    0.185619] pnp: PnP ACPI init
[    0.185729] system 00:00: [mem 0xfed40000-0xfed44fff] has been reserved
[    0.185823] system 00:01: [io  0x0680-0x069f] has been reserved
[    0.185826] system 00:01: [io  0x0200-0x020f] has been reserved
[    0.185827] system 00:01: [io  0xffff] has been reserved
[    0.185829] system 00:01: [io  0xffff] has been reserved
[    0.185830] system 00:01: [io  0x0400-0x0453] has been reserved
[    0.185832] system 00:01: [io  0x0458-0x047f] has been reserved
[    0.185833] system 00:01: [io  0x0500-0x057f] has been reserved
[    0.185834] system 00:01: [io  0x164e-0x164f] has been reserved
[    0.185909] system 00:03: [io  0x0454-0x0457] has been reserved
[    0.186078] system 00:04: [io  0x0a20-0x0a3f] has been reserved
[    0.186080] system 00:04: [io  0x0a10-0x0a1f] has been reserved
[    0.186206] system 00:07: [io  0x04d0-0x04d1] has been reserved
[    0.186432] pnp 00:08: [dma 0 disabled]
[    0.186993] system 00:0a: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.186995] system 00:0a: [mem 0xfed10000-0xfed17fff] has been reserved
[    0.186997] system 00:0a: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.186998] system 00:0a: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.187000] system 00:0a: [mem 0xf8000000-0xfbffffff] has been reserved
[    0.187002] system 00:0a: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.187003] system 00:0a: [mem 0xfed90000-0xfed93fff] has been reserved
[    0.187005] system 00:0a: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.187006] system 00:0a: [mem 0xff000000-0xffffffff] has been reserved
[    0.187008] system 00:0a: [mem 0xfee00000-0xfeefffff] could not be reserved
[    0.187009] system 00:0a: [mem 0xdf200000-0xdf200fff] has been reserved
[    0.187241] system 00:0b: [mem 0x20000000-0x201fffff] has been reserved
[    0.187243] system 00:0b: [mem 0x40004000-0x40004fff] has been reserved
[    0.187284] pnp: PnP ACPI: found 12 devices
[    0.193171] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.193223] NET: Registered PF_INET protocol family
[    0.193298] IP idents hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.194309] tcp_listen_portaddr_hash hash table entries: 4096 (order: 4, 65536 bytes, linear)
[    0.194331] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.194360] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.194479] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes, linear)
[    0.194546] TCP: Hash tables configured (established 65536 bind 65536)
[    0.194593] MPTCP token hash table entries: 8192 (order: 5, 196608 bytes, linear)
[    0.194630] UDP hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.194651] UDP-Lite hash table entries: 4096 (order: 5, 131072 bytes, linear)
[    0.194689] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.194694] NET: Registered PF_XDP protocol family
[    0.194703] pci 0000:00:1e.0: PCI bridge to [bus 01]
[    0.194718] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.194720] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.194721] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.194722] pci_bus 0000:00: resource 7 [mem 0x000d0000-0x000dffff window]
[    0.194724] pci_bus 0000:00: resource 8 [mem 0xdf200000-0xfeafffff window]
[    0.194725] pci_bus 0000:01: resource 4 [io  0x0000-0x0cf7 window]
[    0.194727] pci_bus 0000:01: resource 5 [io  0x0d00-0xffff window]
[    0.194728] pci_bus 0000:01: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.194729] pci_bus 0000:01: resource 7 [mem 0x000d0000-0x000dffff window]
[    0.194731] pci_bus 0000:01: resource 8 [mem 0xdf200000-0xfeafffff window]
[    0.194827] pci 0000:00:02.0: BIOS left Intel GPU interrupts enabled; disabling
[    0.217093] pci 0000:00:1a.0: quirk_usb_early_handoff+0x0/0x6a0 took 21542 usecs
[    0.241089] pci 0000:00:1d.0: quirk_usb_early_handoff+0x0/0x6a0 took 23419 usecs
[    0.241108] PCI: CLS 64 bytes, default 64
[    0.241113] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    0.241113] software IO TLB: mapped [mem 0x00000000c1981000-0x00000000c5981000] (64MB)
[    0.241162] Trying to unpack rootfs image as initramfs...
[    0.241611] Initialise system trusted keyrings
[    0.241621] Key type blacklist registered
[    0.241648] workingset: timestamp_bits=36 max_order=21 bucket_order=0
[    0.242711] zbud: loaded
[    0.242950] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.243145] fuse: init (API version 7.34)
[    0.243292] integrity: Platform Keyring initialized
[    0.252316] Key type asymmetric registered
[    0.252325] Asymmetric key parser 'x509' registered
[    0.252373] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 243)
[    0.252422] io scheduler mq-deadline registered
[    0.252960] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    0.253298] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[    0.253340] ACPI: button: Power Button [PWRB]
[    0.253383] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input1
[    0.253407] ACPI: button: Power Button [PWRF]
[    0.254169] thermal LNXTHERM:00: registered as thermal_zone0
[    0.254172] ACPI: thermal: Thermal Zone [TZ00] (28 C)
[    0.254475] thermal LNXTHERM:01: registered as thermal_zone1
[    0.254476] ACPI: thermal: Thermal Zone [TZ01] (30 C)
[    0.254672] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    0.275188] 00:08: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
[    0.277149] serial 0000:00:16.3: enabling device (0000 -> 0003)
[    0.297608] 0000:00:16.3: ttyS4 at I/O 0xf0e0 (irq = 19, base_baud = 115200) is a 16550A
[    0.298170] Linux agpgart interface v0.103
[    0.317045] tpm_tis 00:09: 1.2 TPM (device-id 0xB, rev-id 16)
[    0.388438] Freeing initrd memory: 72380K
[    0.467107] loop: module loaded
[    0.467336] tun: Universal TUN/TAP device driver, 1.6
[    0.467387] PPP generic driver version 2.4.2
[    0.467464] VFIO - User Level meta-driver version: 0.3
[    0.467576] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.467579] ehci-pci: EHCI PCI platform driver
[    0.467725] ehci-pci 0000:00:1a.0: EHCI Host Controller
[    0.467731] ehci-pci 0000:00:1a.0: new USB bus registered, assigned bus number 1
[    0.467742] ehci-pci 0000:00:1a.0: debug port 2
[    0.471667] ehci-pci 0000:00:1a.0: irq 16, io mem 0xf7c38000
[    0.485022] ehci-pci 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[    0.485095] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.15
[    0.485097] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.485099] usb usb1: Product: EHCI Host Controller
[    0.485100] usb usb1: Manufacturer: Linux 5.15.0-57-generic ehci_hcd
[    0.485101] usb usb1: SerialNumber: 0000:00:1a.0
[    0.485276] hub 1-0:1.0: USB hub found
[    0.485285] hub 1-0:1.0: 3 ports detected
[    0.485550] ehci-pci 0000:00:1d.0: EHCI Host Controller
[    0.485555] ehci-pci 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    0.485568] ehci-pci 0000:00:1d.0: debug port 2
[    0.489485] ehci-pci 0000:00:1d.0: irq 23, io mem 0xf7c37000
[    0.505023] ehci-pci 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[    0.505085] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.15
[    0.505087] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.505089] usb usb2: Product: EHCI Host Controller
[    0.505090] usb usb2: Manufacturer: Linux 5.15.0-57-generic ehci_hcd
[    0.505091] usb usb2: SerialNumber: 0000:00:1d.0
[    0.505263] hub 2-0:1.0: USB hub found
[    0.505270] hub 2-0:1.0: 3 ports detected
[    0.505428] ehci-platform: EHCI generic platform driver
[    0.505438] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.505442] ohci-pci: OHCI PCI platform driver
[    0.505449] ohci-platform: OHCI generic platform driver
[    0.505454] uhci_hcd: USB Universal Host Controller Interface driver
[    0.505515] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f03:PS2M] at 0x60,0x64 irq 1,12
[    0.508224] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.508231] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.508375] mousedev: PS/2 mouse device common for all mice
[    0.508479] rtc_cmos 00:02: RTC can wake from S4
[    0.508671] rtc_cmos 00:02: registered as rtc0
[    0.508705] rtc_cmos 00:02: setting system clock to 2023-02-22T14:03:41 UTC (1677074621)
[    0.508723] rtc_cmos 00:02: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    0.508732] i2c_dev: i2c /dev entries driver
[    0.508832] device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will not be recorded in the IMA log.
[    0.508859] device-mapper: uevent: version 1.0.3
[    0.508898] device-mapper: ioctl: 4.45.0-ioctl (2021-03-22) initialised: dm-devel@redhat.com
[    0.508916] platform eisa.0: Probing EISA bus 0
[    0.508918] platform eisa.0: EISA: Cannot allocate resource for mainboard
[    0.508919] platform eisa.0: Cannot allocate resource for EISA slot 1
[    0.508920] platform eisa.0: Cannot allocate resource for EISA slot 2
[    0.508921] platform eisa.0: Cannot allocate resource for EISA slot 3
[    0.508923] platform eisa.0: Cannot allocate resource for EISA slot 4
[    0.508924] platform eisa.0: Cannot allocate resource for EISA slot 5
[    0.508925] platform eisa.0: Cannot allocate resource for EISA slot 6
[    0.508926] platform eisa.0: Cannot allocate resource for EISA slot 7
[    0.508927] platform eisa.0: Cannot allocate resource for EISA slot 8
[    0.508928] platform eisa.0: EISA: Detected 0 cards
[    0.508932] intel_pstate: Intel P-state driver initializing
[    0.509264] ledtrig-cpu: registered to indicate activity on CPUs
[    0.509298] efifb: probing for efifb
[    0.509312] efifb: No BGRT, not showing boot graphics
[    0.509312] efifb: framebuffer at 0xe0000000, using 3072k, total 3072k
[    0.509314] efifb: mode is 1024x768x32, linelength=4096, pages=1
[    0.509316] efifb: scrolling: redraw
[    0.509316] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    0.509358] fbcon: Deferring console take-over
[    0.509359] fb0: EFI VGA frame buffer device
[    0.509378] EFI Variables Facility v0.08 2004-May-17
[    0.527614] drop_monitor: Initializing network drop monitor service
[    0.527740] NET: Registered PF_INET6 protocol family
[    0.535280] Segment Routing with IPv6
[    0.535303] In-situ OAM (IOAM) with IPv6
[    0.535320] NET: Registered PF_PACKET protocol family
[    0.535386] Key type dns_resolver registered
[    0.535723] microcode: sig=0x306a9, pf=0x2, revision=0x21
[    0.535764] microcode: Microcode Update Driver: v2.2.
[    0.535769] IPI shorthand broadcast: enabled
[    0.535777] sched_clock: Marking stable (535563224, 197571)->(538690865, -2930070)
[    0.535871] registered taskstats version 1
[    0.535909] Loading compiled-in X.509 certificates
[    0.536540] Loaded X.509 cert 'Build time autogenerated kernel key: e5712d293db7233ef3d26cb4f70839fbb033f2dd'
[    0.537116] Loaded X.509 cert 'Canonical Ltd. Live Patch Signing: 14df34d1a87cf37625abec039ef2bf521249b969'
[    0.537657] Loaded X.509 cert 'Canonical Ltd. Kernel Module Signing: 88f752e560a1e0737e31163a466ad7b70a850c19'
[    0.537658] blacklist: Loading compiled-in revocation X.509 certificates
[    0.537674] Loaded X.509 cert 'Canonical Ltd. Secure Boot Signing: 61482aa2830d0ab2ad5af10b7250da9033ddcef0'
[    0.537763] zswap: loaded using pool lzo/zbud
[    0.538057] Key type ._fscrypt registered
[    0.538058] Key type .fscrypt registered
[    0.538059] Key type fscrypt-provisioning registered
[    0.538187] Key type trusted registered
[    0.541150] Key type encrypted registered
[    0.541154] AppArmor: AppArmor sha1 policy hashing enabled
[    0.541577] integrity: Loading X.509 certificate: UEFI:db
[    0.541611] integrity: Loaded X.509 cert 'Microsoft Corporation UEFI CA 2011: 13adbf4309bd82709c8cd54f316ed522988a1bd4'
[    0.541613] integrity: Loading X.509 certificate: UEFI:db
[    0.541628] integrity: Loaded X.509 cert 'Microsoft Windows Production PCA 2011: a92902398e16c49778cd90f99e4f9ae17c55af53'
[    0.541629] integrity: Loading X.509 certificate: UEFI:db
[    0.541644] integrity: Loaded X.509 cert 'Hewlett-Packard UEFI Secure Boot DB Key: e7203ac28b848d3c03432f6a485dd1f4c7b8e529'
[    0.542326] Loading compiled-in module X.509 certificates
[    0.542895] Loaded X.509 cert 'Build time autogenerated kernel key: e5712d293db7233ef3d26cb4f70839fbb033f2dd'
[    0.542897] ima: Allocated hash algorithm: sha1
[    0.753111] ima: No architecture policies found
[    0.753124] evm: Initialising EVM extended attributes:
[    0.753124] evm: security.selinux
[    0.753125] evm: security.SMACK64
[    0.753126] evm: security.SMACK64EXEC
[    0.753127] evm: security.SMACK64TRANSMUTE
[    0.753127] evm: security.SMACK64MMAP
[    0.753128] evm: security.apparmor
[    0.753128] evm: security.ima
[    0.753129] evm: security.capability
[    0.753129] evm: HMAC attrs: 0x1
[    0.753421] PM:   Magic number: 11:625:81
[    0.753700] RAS: Correctable Errors collector initialized.
[    0.754799] Freeing unused decrypted memory: 2036K
[    0.755201] Freeing unused kernel image (initmem) memory: 3228K
[    0.769018] Write protecting the kernel read-only data: 30720k
[    0.769524] Freeing unused kernel image (text/rodata gap) memory: 2036K
[    0.769798] Freeing unused kernel image (rodata/data gap) memory: 1496K
[    0.811247] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    0.811248] x86/mm: Checking user space page tables
[    0.820994] usb 1-1: new high-speed USB device number 2 using ehci-pci
[    0.840997] usb 2-1: new high-speed USB device number 2 using ehci-pci
[    0.850990] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    0.850994] Run /init as init process
[    0.850995]   with arguments:
[    0.850995]     /init
[    0.850996]     splash
[    0.850997]   with environment:
[    0.850998]     HOME=/
[    0.850998]     TERM=linux
[    0.850999]     BOOT_IMAGE=/boot/vmlinuz-5.15.0-57-generic
[    0.937934] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.937942] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 3
[    0.938115] ACPI Warning: SystemIO range 0x0000000000000428-0x000000000000042F conflicts with OpRegion 0x0000000000000400-0x000000000000047F (\PMIO) (20210730/utaddress-204)
[    0.938121] ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    0.938127] ACPI Warning: SystemIO range 0x0000000000000540-0x000000000000054F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
[    0.938130] ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    0.938131] ACPI Warning: SystemIO range 0x0000000000000530-0x000000000000053F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
[    0.938134] ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    0.938134] ACPI Warning: SystemIO range 0x0000000000000500-0x000000000000052F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
[    0.938137] ACPI: OSL: Resource conflict; ACPI support missing from driver?
[    0.938137] lpc_ich: Resource conflict(s) found affecting gpio_ich
[    0.939110] e1000e: Intel(R) PRO/1000 Network Driver
[    0.939112] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.939246] e1000e 0000:00:19.0: Interrupt Throttling Rate (ints/sec) set to dynamic conservative mode
[    0.939375] xhci_hcd 0000:00:14.0: hcc params 0x20007181 hci version 0x100 quirks 0x000000000000b930
[    0.939537] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.939540] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 4
[    0.939543] xhci_hcd 0000:00:14.0: Host supports USB 3.0 SuperSpeed
[    0.939582] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.15
[    0.939584] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.939586] usb usb3: Product: xHCI Host Controller
[    0.939587] usb usb3: Manufacturer: Linux 5.15.0-57-generic xhci-hcd
[    0.939588] usb usb3: SerialNumber: 0000:00:14.0
[    0.939678] hub 3-0:1.0: USB hub found
[    0.939691] hub 3-0:1.0: 4 ports detected
[    0.941774] i801_smbus 0000:00:1f.3: SPD Write Disable is set
[    0.941794] i801_smbus 0000:00:1f.3: SMBus using PCI interrupt
[    0.942857] usb usb4: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.15
[    0.942861] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.942862] usb usb4: Product: xHCI Host Controller
[    0.942864] usb usb4: Manufacturer: Linux 5.15.0-57-generic xhci-hcd
[    0.942865] usb usb4: SerialNumber: 0000:00:14.0
[    0.943258] ahci 0000:00:1f.2: version 3.0
[    0.943420] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 6 ports 6 Gbps 0x2 impl SATA mode
[    0.943423] ahci 0000:00:1f.2: flags: 64bit ncq pm led clo pio slum part ems apst
[    0.947428] i2c i2c-0: 2/4 memory slots populated (from DMI)
[    0.948437] i2c i2c-0: Successfully instantiated SPD at 0x50
[    0.949406] i2c i2c-0: Successfully instantiated SPD at 0x52
[    0.949895] hub 4-0:1.0: USB hub found
[    0.949910] hub 4-0:1.0: 4 ports detected
[    0.951946] scsi host0: ahci
[    0.960052] scsi host1: ahci
[    0.960767] scsi host2: ahci
[    0.960853] scsi host3: ahci
[    0.960925] scsi host4: ahci
[    0.966918] scsi host5: ahci
[    0.975192] ata1: DUMMY
[    0.975199] ata2: SATA max UDMA/133 abar m2048@0xf7c36000 port 0xf7c36180 irq 26
[    0.975201] ata3: DUMMY
[    0.975202] ata4: DUMMY
[    0.975203] ata5: DUMMY
[    0.975203] ata6: DUMMY
[    0.977325] usb 1-1: New USB device found, idVendor=8087, idProduct=0024, bcdDevice= 0.00
[    0.977329] usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    0.982362] hub 1-1:1.0: USB hub found
[    0.982444] hub 1-1:1.0: 6 ports detected
[    0.997371] usb 2-1: New USB device found, idVendor=8087, idProduct=0024, bcdDevice= 0.00
[    0.997375] usb 2-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    0.997663] hub 2-1:1.0: USB hub found
[    0.997719] hub 2-1:1.0: 8 ports detected
[    1.039170] e1000e 0000:00:19.0 0000:00:19.0 (uninitialized): registered PHC clock
[    1.134654] e1000e 0000:00:19.0 eth0: (PCI Express:2.5GT/s:Width x1) 6c:3b:e5:33:0a:26
[    1.134657] e1000e 0000:00:19.0 eth0: Intel(R) PRO/1000 Network Connection
[    1.134692] e1000e 0000:00:19.0 eth0: MAC: 10, PHY: 11, PBA No: 0100FF-0FF
[    1.237018] usb 1-1.4: new low-speed USB device number 3 using ehci-pci
[    1.259675] ata2: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    1.261100] ata2.00: ACPI cmd ef/10:06:00:00:00:00 (SET FEATURES) succeeded
[    1.261111] ata2.00: ACPI cmd f5/00:00:00:00:00:00 (SECURITY FREEZE LOCK) filtered out
[    1.261116] ata2.00: ACPI cmd b1/c1:00:00:00:00:00 (DEVICE CONFIGURATION OVERLAY) filtered out
[    1.261889] ata2.00: ATA-9: WDC WD10EZEX-60ZF5A0, 80.00A80, max UDMA/100
[    1.262014] ata2.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    1.263517] ata2.00: ACPI cmd ef/10:06:00:00:00:00 (SET FEATURES) succeeded
[    1.263528] ata2.00: ACPI cmd f5/00:00:00:00:00:00 (SECURITY FREEZE LOCK) filtered out
[    1.263532] ata2.00: ACPI cmd b1/c1:00:00:00:00:00 (DEVICE CONFIGURATION OVERLAY) filtered out
[    1.265059] ata2.00: configured for UDMA/100
[    1.265339] scsi 1:0:0:0: Direct-Access     ATA      WDC WD10EZEX-60Z 0A80 PQ: 0 ANSI: 5
[    1.265981] sd 1:0:0:0: Attached scsi generic sg0 type 0
[    1.266155] sd 1:0:0:0: [sda] 1953525168 512-byte logical blocks: (1.00 TB/932 GiB)
[    1.266161] sd 1:0:0:0: [sda] 4096-byte physical blocks
[    1.266190] sd 1:0:0:0: [sda] Write Protect is off
[    1.266195] sd 1:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.266252] sd 1:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.269001] tsc: Refined TSC clocksource calibration: 3192.741 MHz
[    1.269007] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2e058099699, max_idle_ns: 440795202126 ns
[    1.269042] clocksource: Switched to clocksource tsc
[    1.281039] usb 3-3: new low-speed USB device number 2 using xhci_hcd
[    1.349907] usb 1-1.4: New USB device found, idVendor=046d, idProduct=c077, bcdDevice=72.00
[    1.349916] usb 1-1.4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    1.349919] usb 1-1.4: Product: USB Optical Mouse
[    1.349921] usb 1-1.4: Manufacturer: Logitech
[    1.358341] hid: raw HID events driver (C) Jiri Kosina
[    1.359194]  sda: sda1 sda2 sda3 sda4 sda5
[    1.377422] sd 1:0:0:0: [sda] Attached SCSI disk
[    1.378465] e1000e 0000:00:19.0 eno1: renamed from eth0
[    1.382076] usbcore: registered new interface driver usbhid
[    1.382079] usbhid: USB HID core driver
[    1.384435] input: Logitech USB Optical Mouse as /devices/pci0000:00/0000:00:1a.0/usb1/1-1/1-1.4/1-1.4:1.0/0003:046D:C077.0001/input/input5
[    1.384566] hid-generic 0003:046D:C077.0001: input,hidraw0: USB HID v1.11 Mouse [Logitech USB Optical Mouse] on usb-0000:00:1a.0-1.4/input0
[    1.435555] usb 3-3: New USB device found, idVendor=046d, idProduct=c31c, bcdDevice=49.00
[    1.435564] usb 3-3: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    1.435567] usb 3-3: Product: USB Keyboard
[    1.435569] usb 3-3: Manufacturer: Logitech
[    1.442445] input: Logitech USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb3/3-3/3-3:1.0/0003:046D:C31C.0002/input/input6
[    1.501301] hid-generic 0003:046D:C31C.0002: input,hidraw1: USB HID v1.10 Keyboard [Logitech USB Keyboard] on usb-0000:00:14.0-3/input0
[    1.504599] input: Logitech USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb3/3-3/3-3:1.1/0003:046D:C31C.0003/input/input7
[    1.561330] hid-generic 0003:046D:C31C.0003: input,hidraw2: USB HID v1.10 Device [Logitech USB Keyboard] on usb-0000:00:14.0-3/input1
[    1.838983] fbcon: Taking over console
[    1.839086] Console: switching to colour frame buffer device 128x48
[    1.920721] EXT4-fs (sda5): mounted filesystem with ordered data mode. Opts: (null). Quota mode: none.
[    3.171078] systemd[1]: Inserted module 'autofs4'
[    3.374279] systemd[1]: systemd 245.4-4ubuntu3.18 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2 default-hierarchy=hybrid)
[    3.393108] systemd[1]: Detected architecture x86-64.
[    3.457354] systemd[1]: Set hostname to <c300l-01>.
[    6.529499] systemd[1]: Created slice Virtual Machine and Container Slice.
[    6.530305] systemd[1]: Created slice system-modprobe.slice.
[    6.530674] systemd[1]: Created slice system-systemd\x2dfsck.slice.
[    6.531107] systemd[1]: Created slice User and Session Slice.
[    6.531219] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    6.531532] systemd[1]: Set up automount Arbitrary Executable File Formats File System Automount Point.
[    6.531605] systemd[1]: Reached target User and Group Name Lookups.
[    6.531629] systemd[1]: Reached target Remote File Systems.
[    6.531645] systemd[1]: Reached target Slices.
[    6.531683] systemd[1]: Reached target Libvirt guests shutdown.
[    6.531799] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    6.531983] systemd[1]: Listening on LVM2 poll daemon socket.
[    6.532132] systemd[1]: Listening on Syslog Socket.
[    6.532277] systemd[1]: Listening on fsck to fsckd communication Socket.
[    6.532360] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    6.532677] systemd[1]: Listening on Journal Audit Socket.
[    6.532827] systemd[1]: Listening on Journal Socket (/dev/log).
[    6.533022] systemd[1]: Listening on Journal Socket.
[    6.533219] systemd[1]: Listening on udev Control Socket.
[    6.533334] systemd[1]: Listening on udev Kernel Socket.
[    6.534845] systemd[1]: Mounting Huge Pages File System...
[    6.536435] systemd[1]: Mounting POSIX Message Queue File System...
[    6.538157] systemd[1]: Mounting Kernel Debug File System...
[    6.539552] systemd[1]: Mounting Kernel Trace File System...
[    6.541141] systemd[1]: Starting Journal Service...
[    6.542039] systemd[1]: Starting Availability of block devices...
[    6.543008] systemd[1]: Starting Set the console keyboard layout...
[    6.543904] systemd[1]: Starting Create list of static device nodes for the current kernel...
[    6.544709] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    6.545609] systemd[1]: Starting Load Kernel Module chromeos_pstore...
[    6.546445] systemd[1]: Starting Load Kernel Module drm...
[    6.547378] systemd[1]: Starting Load Kernel Module efi_pstore...
[    6.548230] systemd[1]: Starting Load Kernel Module pstore_blk...
[    6.549164] systemd[1]: Starting Load Kernel Module pstore_zone...
[    6.550046] systemd[1]: Starting Load Kernel Module ramoops...
[    6.595379] systemd[1]: Condition check resulted in Set Up Additional Binary Formats being skipped.
[    6.595428] systemd[1]: Condition check resulted in File System Check on Root Device being skipped.
[    7.432319] systemd[1]: Starting Load Kernel Modules...
[    7.433600] systemd[1]: Starting Remount Root and Kernel File Systems...
[    7.434954] systemd[1]: Starting udev Coldplug all Devices...
[    7.436224] systemd[1]: Starting Uncomplicated firewall...
[    7.438697] systemd[1]: Started Journal Service.
[    7.678811] EXT4-fs (sda5): re-mounted. Opts: errors=remount-ro. Quota mode: none.
[    7.742953] pstore: Using crash dump compression: deflate
[    7.742965] pstore: Registered efi as persistent store backend
[    8.061033] systemd-journald[274]: Received client request to flush runtime journal.
[    8.109477] Adding 2097148k swap on /swapfile.  Priority:-2 extents:6 across:2260988k FS
[    8.202460] lp: driver loaded but no devices found
[    8.223316] ppdev: user-space parallel port driver
[    8.796682] IPMI message handler: version 39.2
[    8.798960] ipmi device interface
[   10.514727] loop0: detected capacity change from 0 to 8
[   10.541164] loop1: detected capacity change from 0 to 113888
[   10.561129] loop2: detected capacity change from 0 to 113888
[   10.602812] loop3: detected capacity change from 0 to 129584
[   10.635017] loop4: detected capacity change from 0 to 129600
[   10.894451] loop5: detected capacity change from 0 to 448512
[   10.921205] loop6: detected capacity change from 0 to 448512
[   10.949145] loop7: detected capacity change from 0 to 709216
[   10.973523] loop8: detected capacity change from 0 to 709280
[   10.994284] loop9: detected capacity change from 0 to 166424
[   11.025580] loop10: detected capacity change from 0 to 187776
[   11.212416] loop11: detected capacity change from 0 to 94056
[   11.228226] loop12: detected capacity change from 0 to 94064
[   11.319279] loop13: detected capacity change from 0 to 102048
[   11.333865] loop14: detected capacity change from 0 to 102072
[   16.933944] input: HP WMI hotkeys as /devices/virtual/input/input8
[   17.727252] EDAC ie31200: No ECC support
[   17.819895] RAPL PMU: API unit is 2^-32 Joules, 3 fixed counters, 163840 ms ovfl timer
[   17.819899] RAPL PMU: hw unit of domain pp0-core 2^-16 Joules
[   17.819900] RAPL PMU: hw unit of domain package 2^-16 Joules
[   17.819901] RAPL PMU: hw unit of domain pp1-gpu 2^-16 Joules
[   17.957020] at24 0-0050: supply vcc not found, using dummy regulator
[   17.957659] at24 0-0050: 256 byte spd EEPROM, read-only
[   17.957698] at24 0-0052: supply vcc not found, using dummy regulator
[   17.958280] at24 0-0052: 256 byte spd EEPROM, read-only
[   18.908553] cryptd: max_cpu_qlen set to 1000
[   19.622122] Console: switching to colour dummy device 80x25
[   19.622167] i915 0000:00:02.0: vgaarb: deactivate vga console
[   19.630329] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
[   19.630524] ACPI: video: [Firmware Bug]: Duplicate ACPI video bus devices for the same VGA controller, please try module parameter video.allow_duplicates=1if the current driver doesn't work.
[   19.675013] AVX version of gcm_enc/dec engaged.
[   19.675033] AES CTR mode by8 optimization enabled
[   19.735609] fbcon: i915drmfb (fb0) is primary device
[   19.833705] Console: switching to colour frame buffer device 240x67
[   19.857366] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
[   21.159764] snd_hda_intel 0000:00:1b.0: enabling device (0100 -> 0102)
[   21.160032] snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
[   21.388431] intel_rapl_common: Found RAPL domain package
[   21.388437] intel_rapl_common: Found RAPL domain core
[   21.388439] intel_rapl_common: Found RAPL domain uncore
[   21.388448] intel_rapl_common: RAPL package-0 domain package locked by BIOS
[   21.632963] snd_hda_codec_realtek hdaudioC0D0: ALC221: SKU not ready 0x598301f0
[   21.633420] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC221: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:line
[   21.633427] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=1 (0x17/0x0/0x0/0x0/0x0)
[   21.633430] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[   21.633433] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[   21.633435] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[   21.633437] snd_hda_codec_realtek hdaudioC0D0:      Mic=0x1a
[   21.633439] snd_hda_codec_realtek hdaudioC0D0:      Line=0x1b
[   21.795164] input: HDA Intel PCH Mic as /devices/pci0000:00/0000:00:1b.0/sound/card0/input9
[   21.795247] input: HDA Intel PCH Line as /devices/pci0000:00/0000:00:1b.0/sound/card0/input10
[   21.795326] input: HDA Intel PCH Line Out as /devices/pci0000:00/0000:00:1b.0/sound/card0/input11
[   21.795441] input: HDA Intel PCH Front Headphone as /devices/pci0000:00/0000:00:1b.0/sound/card0/input12
[   21.795512] input: HDA Intel PCH HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:1b.0/sound/card0/input13
[   26.383064] audit: type=1400 audit(1677074647.368:2): apparmor=STATUS operation=profile_load profile=unconfined name=ippusbxd pid=639 comm=apparmor_parser
[   26.384007] audit: type=1400 audit(1677074647.368:3): apparmor=STATUS operation=profile_load profile=unconfined name=nvidia_modprobe pid=637 comm=apparmor_parser
[   26.384010] audit: type=1400 audit(1677074647.368:4): apparmor=STATUS operation=profile_load profile=unconfined name=nvidia_modprobe//kmod pid=637 comm=apparmor_parser
[   26.558158] audit: type=1400 audit(1677074647.544:5): apparmor=STATUS operation=profile_load profile=unconfined name=/usr/sbin/mysqld pid=638 comm=apparmor_parser
[   26.673725] audit: type=1400 audit(1677074647.660:6): apparmor=STATUS operation=profile_load profile=unconfined name=/usr/lib/cups/backend/cups-pdf pid=644 comm=apparmor_parser
[   26.673736] audit: type=1400 audit(1677074647.660:7): apparmor=STATUS operation=profile_load profile=unconfined name=/usr/sbin/cupsd pid=644 comm=apparmor_parser
[   26.673741] audit: type=1400 audit(1677074647.660:8): apparmor=STATUS operation=profile_load profile=unconfined name=/usr/sbin/cupsd//third_party pid=644 comm=apparmor_parser
[   26.682658] audit: type=1400 audit(1677074647.668:9): apparmor=STATUS operation=profile_load profile=unconfined name=virt-aa-helper pid=636 comm=apparmor_parser
[   26.714628] audit: type=1400 audit(1677074647.700:10): apparmor=STATUS operation=profile_load profile=unconfined name=lsb_release pid=647 comm=apparmor_parser
[   26.740044] audit: type=1400 audit(1677074647.724:11): apparmor=STATUS operation=profile_load profile=unconfined name=libreoffice-xpdfimport pid=648 comm=apparmor_parser
[   39.164667] kauditd_printk_skb: 31 callbacks suppressed
[   39.164670] audit: type=1400 audit(1677074660.148:43): apparmor=DENIED operation=capable profile=/usr/sbin/cups-browsed pid=831 comm=cups-browsed capability=23  capname=sys_nice
[   43.707046] e1000e 0000:00:19.0 eno1: NIC Link is Up 100 Mbps Full Duplex, Flow Control: Rx/Tx
[   43.707052] e1000e 0000:00:19.0 eno1: 10/100 speed: disabling TSO
[   43.707123] IPv6: ADDRCONF(NETDEV_CHANGE): eno1: link becomes ready
[   45.773628] vboxdrv: loading out-of-tree module taints kernel.
[   45.773808] vboxdrv: module verification failed: signature and/or required key missing - tainting kernel
[   45.776975] vboxdrv: Found 4 processor cores
[   45.797405] vboxdrv: TSC mode is Invariant, tentative frequency 3192729932 Hz
[   45.797409] vboxdrv: Successfully loaded version 6.1.38_Ubuntu r153438 (interface 0x00320000)
[   46.073827] VBoxNetFlt: Successfully started.
[   46.319840] VBoxNetAdp: Successfully started.
[   49.017400] loop15: detected capacity change from 0 to 8
[   53.684882] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[   53.685676] virbr0: port 1(virbr0-nic) entered blocking state
[   53.685679] virbr0: port 1(virbr0-nic) entered disabled state
[   53.685711] device virbr0-nic entered promiscuous mode
[   54.341581] bpfilter: Loaded bpfilter_umh pid 1272
[   54.341791] Started bpfilter
[   58.806916] audit: type=1400 audit(1677063878.423:44): apparmor=DENIED operation=open profile=/usr/sbin/mysqld name=/etc/pbis/user-ignore pid=873 comm=mysqld requested_mask=r denied_mask=r fsuid=0 ouid=0
[   60.488543] virbr0: port 1(virbr0-nic) entered blocking state
[   60.488549] virbr0: port 1(virbr0-nic) entered listening state
[   60.870743] virbr0: port 1(virbr0-nic) entered disabled state
[   90.899392] rfkill: input handler disabled
[  119.745678] rfkill: input handler enabled
[  124.813185] rfkill: input handler disabled
[  180.115904] audit: type=1400 audit(1677063999.731:45): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/run/systemd/userdb/ pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  180.115922] audit: type=1400 audit(1677063999.731:46): apparmor=ALLOWED operation=connect profile=libreoffice-oopslash name=/run/systemd/userdb/io.systemd.DynamicUser pid=2485 comm=oosplash requested_mask=wr denied_mask=wr fsuid=651691142 ouid=0
[  180.115973] audit: type=1400 audit(1677063999.731:47): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/proc/sys/kernel/random/boot_id pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  180.116596] audit: type=1400 audit(1677063999.731:48): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/opt/pbis/lib/liblsaclient.so.0.0.0 pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  180.116602] audit: type=1400 audit(1677063999.731:49): apparmor=ALLOWED operation=file_mmap profile=libreoffice-oopslash name=/opt/pbis/lib/liblsaclient.so.0.0.0 pid=2485 comm=oosplash requested_mask=rm denied_mask=rm fsuid=651691142 ouid=0
[  180.116611] audit: type=1400 audit(1677063999.731:50): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/opt/pbis/lib/liblsaauth.so.0.0.0 pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  180.116618] audit: type=1400 audit(1677063999.731:51): apparmor=ALLOWED operation=file_mmap profile=libreoffice-oopslash name=/opt/pbis/lib/liblsaauth.so.0.0.0 pid=2485 comm=oosplash requested_mask=rm denied_mask=rm fsuid=651691142 ouid=0
[  180.116641] audit: type=1400 audit(1677063999.731:52): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/opt/pbis/lib/liblwmsg_nothr.so.0.0.0 pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  180.116648] audit: type=1400 audit(1677063999.731:53): apparmor=ALLOWED operation=file_mmap profile=libreoffice-oopslash name=/opt/pbis/lib/liblwmsg_nothr.so.0.0.0 pid=2485 comm=oosplash requested_mask=rm denied_mask=rm fsuid=651691142 ouid=0
[  180.116676] audit: type=1400 audit(1677063999.731:54): apparmor=ALLOWED operation=open profile=libreoffice-oopslash name=/opt/pbis/lib/liblwadvapi_nothr.so.0.0.0 pid=2485 comm=oosplash requested_mask=r denied_mask=r fsuid=651691142 ouid=0
[  185.827434] kauditd_printk_skb: 52 callbacks suppressed
[  185.827446] audit: type=1400 audit(1677064005.443:107): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/NEVw7P pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[  185.827451] audit: type=1400 audit(1677064005.443:108): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/NEVw7P pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[  185.827454] audit: type=1400 audit(1677064005.443:109): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/NEVw7P pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[  185.827958] audit: type=1400 audit(1677064005.443:110): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/NEVw7P pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[  185.827972] audit: type=1400 audit(1677064005.443:111): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[  186.455851] audit: type=1400 audit(1677064006.071:112): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/pulse/cookie pid=2521 comm=threaded-ml requested_mask=r denied_mask=r fsuid=651691142 ouid=651691142
[  186.455858] audit: type=1400 audit(1677064006.071:113): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/pulse/cookie pid=2521 comm=threaded-ml requested_mask=k denied_mask=k fsuid=651691142 ouid=651691142
[  186.456682] audit: type=1400 audit(1677064006.071:114): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.cache/event-sound-cache.tdb.c2991d789449435f82030cec9644fbe7.x86_64-pc-linux-gnu pid=2521 comm=soffice.bin requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[  186.456688] audit: type=1400 audit(1677064006.071:115): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.cache/event-sound-cache.tdb.c2991d789449435f82030cec9644fbe7.x86_64-pc-linux-gnu pid=2521 comm=soffice.bin requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[  187.023397] audit: type=1400 audit(1677064006.643:116): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/AMm4Bz pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[  195.985136] kauditd_printk_skb: 9 callbacks suppressed
[  195.985142] audit: type=1400 audit(1677064015.603:126): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I8khrg pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[  195.985152] audit: type=1400 audit(1677064015.603:127): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I8khrg pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[  195.985217] audit: type=1400 audit(1677064015.603:128): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I8khrg pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[  195.987162] audit: type=1400 audit(1677064015.603:129): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I8khrg pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[  195.987175] audit: type=1400 audit(1677064015.603:130): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[  796.304621] audit: type=1400 audit(1677064615.923:131): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/ISieil pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[  796.304652] audit: type=1400 audit(1677064615.923:132): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/ISieil pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[  796.304660] audit: type=1400 audit(1677064615.923:133): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/ISieil pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[  796.306778] audit: type=1400 audit(1677064615.923:134): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/ISieil pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[  796.306791] audit: type=1400 audit(1677064615.923:135): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 1396.310136] audit: type=1400 audit(1677065215.927:136): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/K10euq pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 1396.310167] audit: type=1400 audit(1677065215.927:137): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/K10euq pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 1396.310175] audit: type=1400 audit(1677065215.927:138): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/K10euq pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 1396.312097] audit: type=1400 audit(1677065215.927:139): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/K10euq pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 1396.312117] audit: type=1400 audit(1677065215.927:140): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 1996.309873] audit: type=1400 audit(1677065815.927:141): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/1ZUtHv pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 1996.309942] audit: type=1400 audit(1677065815.927:142): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/1ZUtHv pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 1996.309952] audit: type=1400 audit(1677065815.927:143): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/1ZUtHv pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 1996.311728] audit: type=1400 audit(1677065815.927:144): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/1ZUtHv pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 1996.311740] audit: type=1400 audit(1677065815.927:145): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 2596.314859] audit: type=1400 audit(1677066415.931:146): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/wnap8z pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 2596.314891] audit: type=1400 audit(1677066415.931:147): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/wnap8z pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 2596.314918] audit: type=1400 audit(1677066415.931:148): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/wnap8z pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 2596.316809] audit: type=1400 audit(1677066415.931:149): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/wnap8z pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 2596.316821] audit: type=1400 audit(1677066415.931:150): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 3196.318002] audit: type=1400 audit(1677067015.935:151): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/cYPQKE pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 3196.318082] audit: type=1400 audit(1677067015.935:152): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/cYPQKE pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 3196.318098] audit: type=1400 audit(1677067015.935:153): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/cYPQKE pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 3196.319942] audit: type=1400 audit(1677067015.935:154): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/cYPQKE pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 3196.319954] audit: type=1400 audit(1677067015.935:155): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 3625.286102] audit: type=1400 audit(1677067444.903:156): apparmor=DENIED operation=open profile=/usr/sbin/cupsd name=/etc/pbis/user-ignore pid=796 comm=cupsd requested_mask=r denied_mask=r fsuid=0 ouid=0
[ 3625.286759] audit: type=1400 audit(1677067444.903:157): apparmor=DENIED operation=open profile=/usr/sbin/cupsd name=/etc/pbis/user-ignore pid=796 comm=cupsd requested_mask=r denied_mask=r fsuid=0 ouid=0
[ 3796.318242] audit: type=1400 audit(1677067615.935:158): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I2M4mJ pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 3796.318271] audit: type=1400 audit(1677067615.935:159): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I2M4mJ pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 3796.318284] audit: type=1400 audit(1677067615.935:160): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I2M4mJ pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 3796.319282] audit: type=1400 audit(1677067615.935:161): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/I2M4mJ pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 3796.319287] audit: type=1400 audit(1677067615.935:162): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 4396.322233] audit: type=1400 audit(1677068215.939:163): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/UAvl8M pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 4396.322254] audit: type=1400 audit(1677068215.939:164): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/UAvl8M pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 4396.322268] audit: type=1400 audit(1677068215.939:165): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/UAvl8M pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 4396.323535] audit: type=1400 audit(1677068215.939:166): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/UAvl8M pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 4396.323541] audit: type=1400 audit(1677068215.939:167): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 4996.322456] audit: type=1400 audit(1677068815.939:168): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eaYMQQ pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 4996.322479] audit: type=1400 audit(1677068815.939:169): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eaYMQQ pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 4996.322493] audit: type=1400 audit(1677068815.939:170): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eaYMQQ pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 4996.324210] audit: type=1400 audit(1677068815.939:171): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eaYMQQ pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 4996.324217] audit: type=1400 audit(1677068815.939:172): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 5596.326362] audit: type=1400 audit(1677069415.939:173): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/q0DuPU pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 5596.326381] audit: type=1400 audit(1677069415.939:174): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/q0DuPU pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 5596.326383] audit: type=1400 audit(1677069415.943:175): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/q0DuPU pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 5596.326385] audit: type=1400 audit(1677069415.943:176): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/q0DuPU pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 5596.326387] audit: type=1400 audit(1677069415.943:177): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 6196.325607] audit: type=1400 audit(1677070015.943:178): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eI7vMY pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 6196.325636] audit: type=1400 audit(1677070015.943:179): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eI7vMY pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 6196.325655] audit: type=1400 audit(1677070015.943:180): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eI7vMY pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 6196.327298] audit: type=1400 audit(1677070015.943:181): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/eI7vMY pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 6196.327308] audit: type=1400 audit(1677070015.943:182): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 6796.331886] audit: type=1400 audit(1677070615.947:183): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/5nuiG7 pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 6796.332002] audit: type=1400 audit(1677070615.947:184): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/5nuiG7 pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 6796.332012] audit: type=1400 audit(1677070615.947:185): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/5nuiG7 pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 6796.333491] audit: type=1400 audit(1677070615.951:186): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/5nuiG7 pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 6796.333505] audit: type=1400 audit(1677070615.951:187): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 7125.266067] audit: type=1400 audit(1677070944.883:188): apparmor=DENIED operation=open profile=/usr/sbin/cupsd name=/etc/pbis/user-ignore pid=796 comm=cupsd requested_mask=r denied_mask=r fsuid=0 ouid=0
[ 7125.266403] audit: type=1400 audit(1677070944.883:189): apparmor=DENIED operation=open profile=/usr/sbin/cupsd name=/etc/pbis/user-ignore pid=796 comm=cupsd requested_mask=r denied_mask=r fsuid=0 ouid=0
[ 7396.337810] audit: type=1400 audit(1677071215.955:190): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/MttFRd pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 7396.337838] audit: type=1400 audit(1677071215.955:191): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/MttFRd pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 7396.337860] audit: type=1400 audit(1677071215.955:192): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/MttFRd pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 7396.339591] audit: type=1400 audit(1677071215.955:193): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/MttFRd pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 7396.339602] audit: type=1400 audit(1677071215.955:194): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 7570.846459] audit: type=1400 audit(1677071390.463:195): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/fBViSL pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 7570.846481] audit: type=1400 audit(1677071390.463:196): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/fBViSL pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 7570.846496] audit: type=1400 audit(1677071390.463:197): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/fBViSL pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 7570.848020] audit: type=1400 audit(1677071390.463:198): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/fBViSL pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 7570.848026] audit: type=1400 audit(1677071390.463:199): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142
[ 7996.343983] audit: type=1400 audit(1677071815.959:200): apparmor=ALLOWED operation=mknod profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/lRHYuT pid=2521 comm=configmgrWriter requested_mask=c denied_mask=c fsuid=651691142 ouid=651691142
[ 7996.344065] audit: type=1400 audit(1677071815.959:201): apparmor=ALLOWED operation=open profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/lRHYuT pid=2521 comm=configmgrWriter requested_mask=wrc denied_mask=wrc fsuid=651691142 ouid=651691142
[ 7996.344076] audit: type=1400 audit(1677071815.959:202): apparmor=ALLOWED operation=file_lock profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/lRHYuT pid=2521 comm=configmgrWriter requested_mask=wk denied_mask=wk fsuid=651691142 ouid=651691142
[ 7996.345875] audit: type=1400 audit(1677071815.963:203): apparmor=ALLOWED operation=rename_src profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/lRHYuT pid=2521 comm=configmgrWriter requested_mask=wrd denied_mask=wrd fsuid=651691142 ouid=651691142
[ 7996.345887] audit: type=1400 audit(1677071815.963:204): apparmor=ALLOWED operation=rename_dest profile=libreoffice-soffice name=/home/domain/EVMS/zujvlse/.config/libreoffice/4/user/registrymodifications.xcu pid=2521 comm=configmgrWriter requested_mask=wc denied_mask=wc fsuid=651691142 ouid=651691142л";
    }
}
