import QtQuick 2.9
import QtQuick.Controls 2.2

Container {
    id: container
    anchors.fill: parent
    property alias model: pathView.model
    property int startIndex: 0
    contentItem: PathView {
        id: pathView
        width: parent.width
        height: parent.height
        snapMode: PathView.SnapOneItem
        currentIndex: startIndex
        model: container.contentModel
        path: Path {
            startX: -pathView.width / 2; startY: pathView.height / 2

            PathLine {
                relativeX: pathView.width  * pathView.count; y: pathView.height / 2
            }
        }
    }

    Component.onCompleted: {
        for (var i = 0; i < contentChildren.length; ++i) {
            contentChildren[i].width = container.width;
            contentChildren[i].height = container.height;
        }
    }
}

