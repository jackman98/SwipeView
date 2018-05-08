import QtQuick 2.9
import QtQuick.Controls 2.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    SwipeViewer {
        anchors.fill: parent

        Rectangle {
            color: "red"
        }
        Rectangle {
            color: "green"
        }
        Rectangle {
            color: "blue"
        }
    }

}
