import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Window 2.2

Window {
    id: classik1
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
            classik1.signalExit() // Вызываем сигнал
        }
    }

    TextArea {
        width: 610
        height: 450
        text:
          "1. Разрешаем доступ к делителю частоты
           2. Устанавливаем запрет на прерывания
           3. Режим только заись
           4. Устанавливаем длину слова 8 бит
           5. Загружаем в буфер из 4100h
           6. Ожидаем готовность принятых данных
           7. Записывам из буфера в 4200h";
}
}
