import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Window 2.2

Window {
    id: meminfo
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
            meminfo.signalExit() // Вызываем сигнал
        }
    }

    TextArea {
        width: 610
        height: 450
        text:
          " MemTotal:        8011648 kB
MemFree:         4726100 kB
MemAvailable:    6023132 kB
Buffers:           75020 kB
Cached:          1659792 kB
SwapCached:            0 kB
Active:           656816 kB
Inactive:        2133388 kB
Active(anon):       1844 kB
Inactive(anon):  1311704 kB
Active(file):     654972 kB
Inactive(file):   821684 kB
Unevictable:      229008 kB
Mlocked:              16 kB
SwapTotal:       2097148 kB
SwapFree:        2097148 kB
Dirty:               948 kB
Writeback:             0 kB
AnonPages:       1284416 kB
Mapped:           475940 kB
Shmem:            262472 kB
KReclaimable:      77988 kB
Slab:             162576 kB
SReclaimable:      77988 kB
SUnreclaim:        84588 kB
KernelStack:       12144 kB
PageTables:        20696 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     6102972 kB
Committed_AS:    7199092 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       31608 kB
VmallocChunk:          0 kB
Percpu:             3584 kB
HardwareCorrupted:     0 kB
AnonHugePages:         0 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      227704 kB
DirectMap2M:     8032256 kB";
}
}
