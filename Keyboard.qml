import QtQuick 2.5
import QtQuick.Controls 2.12
import QtQuick.Window 2.2
import QtQuick 2.0
import QtQml 2.0
import com.lab3.event 1.0

ApplicationWindow {
    id: anotherWindow2
    signal signalExit   // Задаём сигнал
    width: 640
    height: 480

    // Кнопка для открытия главного окна приложения


    property bool capsLockOn: false




    Rectangle {
        anchors.fill: parent
        focus: true
        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            implicitHeight: height
            Label{
                id:logs
                anchors.fill: parent
                text: "1. Press D to on and off all indicators
2. Press PageUp to show indicators state
3. Press F to invert indicators state
4. Press I to show num of active indicators
Press E to off All indicators\n"
            }
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
        }


        Keys.onPressed: {
            if (event.key === Qt.Key_D)
            {
                logs.text += keyEvent.getFirstKeyEvent
            }
            console.log(event.key)
            if(event.key === 16777235)//У меня такой код PageUp
            {
                logs.text += keyEvent.getSecondKeyEvent
            }
            if(event.key === Qt.Key_F)
            {
                logs.text += keyEvent.getThirdKeyEvent
            }
            if(event.key === Qt.Key_I)
            {
                logs.text += keyEvent.getFourthKeyDEvent
            }
            if(event.key === Qt.Key_E)
            {
                logs.text += keyEvent.getFourthKeyPageUpEvent
            }
        }
    }

    KeyboardEvents{
        id: keyEvent
    }
}
