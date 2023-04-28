import QtQuick 2.5
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("ИИПУ")


        GridLayout {
            id: grid
            anchors.fill: parent

            rows: 2
            columns: 1


            Rectangle {


                // Кнопка для открытия первого второстепенного окна приложения
                Button {
                    text: qsTr("DMESQ")
                    x: 0
                    y: 450
                    width: 150
                    height: 30

                    onClicked: {
                        firstWindow.show()  // Открываем первое окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }


  Rectangle {
                Button {
                    text: qsTr("ФОН")
                    x: 245
                    y: 450
                    width: 150
                    height: 30
                    MouseArea{
                        id: marea
                        anchors.fill: parent
                        property int counter: -1;
                        onClicked: {
                            console.log(color + ' ' + counter)
                            counter = counter +1;
                            if (counter == 0) color = "#FAEBD7"
                            else if (counter ==1) color = "#F5DEB3"
                            else {
                                color = "#7FFFD4"
                                counter = -1;
                            }
                        }
                    }
                }
}

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Epson")
                    x: 490
                    y: 450
                    width: 150
                    height: 30

                    onClicked: {
                        secondWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Cpuinfo")
                    x: 0
                    y: 250
                    width: 150
                    height: 30

                    onClicked: {
                        threeWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Devices")
                    x: 490
                    y: 250
                    width: 150
                    height: 30

                    onClicked: {
                        fourWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Meminfo")
                    x: 0
                    y: 100
                    width: 150
                    height: 30

                    onClicked: {
                        fiveWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Clasic1")
                    x: 490
                    y: 100
                    width: 150
                    height: 30

                    onClicked: {
                        sixWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }

            Rectangle {


                // Кнопка для открытия второго второстепенного окна приложения
                Button {
                    text: qsTr("Keyboard")
                    x: 245
                    y: 100
                    width: 150
                    height: 30

                    onClicked: {
                        sevenWindow.show() // Открываем второе окно
                        mainWindow.hide()   // Скрываем основное окно
                    }
                }
            }
        }


    AnotherWindow {
        id: firstWindow
        title: qsTr("Информация DMESQ")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            firstWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    AnotherWindow1 {
        id: secondWindow
        title: qsTr("Информация о прокторе")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            secondWindow.close()    // Закрываем второе окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    Cpuinfo {
        id: threeWindow
        title: qsTr("Информация DMESQ")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            threeWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    Devices {
        id: fourWindow
        title: qsTr("Информация DMESQ")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            fourWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    Meminfo {
        id: fiveWindow
        title: qsTr("Информация DMESQ")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            fiveWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }


    Classik1{
        id: sixWindow
        title: qsTr("Информация Clasic1")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            sixWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    Keyboard{
        id: sevenWindow
        title: qsTr("Клава")

        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            sevenWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }
}
