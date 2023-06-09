import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Window 2.2

Window {
    id: anotherWindow2
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
            anotherWindow2.signalExit() // Вызываем сигнал
        }
    }

    TextArea {
        width: 610
        height: 450
        text:
          "Проектор EPSON
Проектор типа 3LCD.
Работает по принципу фильтрации пучка света через отдельные цветофильтры и пропускания отдельных лучей RGB через 3 отдельные ЖК-матрицы

Интерфейсы подключения:
1)USB
2)Wi-Fi
3)HDIMI
4)VGA

Проектор, при прямом подключении через USB, поддерживает формат изображений JPEG. Остальные форматы не поддерживаются.

При подключении через интерфейсы к другим устройствам, такие как компьютер или телефон, проектор может воспроизводить всё, что может поддержать подключённое устройство.";
}
}
