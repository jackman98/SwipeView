import QtQuick 2.9
import QtQuick.Controls 2.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component {
        id: delegate
        Column {
                    id: wrapper

                    Rectangle {
                        id: comp
        //                width: pathView.width
        //                height: pathView.height
                        width: 300
                        height: width
                        color: colorer
                        Text {
                            id: nameText
                            text: name
                            font.pointSize: 16
                        }
                    }
                }
    }

    PathView {
        id: pathView
        anchors.fill: parent
        model: ListModel {
            ListElement {
                name: "Bill Jones"
                colorer: "red"
            }
            ListElement {
                name: "Jane Doe"
                colorer: "green"
            }
            ListElement {
                name: "John Smith"
                colorer: "blue"
            }
        }
        delegate: Column {
            id: wrapper

            Rectangle {
                id: comp
//                width: pathView.width
//                height: pathView.height
                width: 300
                height: width
                color: colorer
                Text {
                    id: nameText
                    text: name
                    font.pointSize: 16
                }
            }
        }

        path: Path {
            startX:  pathView.width / 2; startY: pathView.height / 2

            PathLine {
                x: delegate.width; y: pathView.height / 2
            }
//            PathLine {
//                x: -pathView.width ; y: pathView.height / 2
//            }
//            PathLine {
//                relativeX: pathView.width / 2; y: pathView.height / 2
//            }
            /*
            PathLine {
                x: pathView.width + pathView.width / 2; y: pathView.height / 2
            }
            PathLine {
                x: pathView.width * 2; y: pathView.height / 2
            }*//*
            PathLine {
                x: 0; y: pathView.height / 2
            }*/
        }
    }

    //    SwipeView {
    //        id: swipeView
    //        anchors.fill: parent
    //        currentIndex: 1

    //        Rectangle {
    //            width: swipeView.width
    //            height: swipeView.height
    //            color: "red"
    //        }
    //        Rectangle {
    //            width: swipeView.width
    //            height: swipeView.height
    //            color: "green"
    //        }
    //        Rectangle {
    //            width: swipeView.width
    //            height: swipeView.height
    //            color: "blue"
    //        }
    //    }
}
