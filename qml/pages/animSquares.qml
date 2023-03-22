import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "animSquares"
    SilicaFlickable {
        anchors.fill: parent
        width: Layout.width

        Item {
            id : objs;
            property int size: 150
            property int margs: 50
        }

        Column {
            width: parent.width
            id: tmp
            anchors {
                left : parent.left
                leftMargin: 2 * objs.margs
            }

            Item {
                id :item1
                implicitHeight: objs.size + 2*objs.margs
                anchors {
                    left: parent.left
                    leftMargin: 2 * objs.margs
                }

                Rectangle {
                    y : 0
                    x : 0
                    width: objs.size
                    height: objs.size
                    color: "black"

                    transform: [
                        Scale { xScale: 0.5},
                        Rotation {angle : 45 }
                    ]
                }
            }

            Item {
                id: item2
                implicitHeight: 2 * objs.size + 2 * objs.margs

                anchors {
                    left: parent.left
                    leftMargin: 2 * objs.margs
                    top : item1.bottom
                }

                Rectangle {
                    id: rect
                    y : 0
                    x : 0
                    width: objs.size
                    height: objs.size
                    color: "black"

                    transform: Scale {
                        id: st
                        property real scale: 1
                        xScale: scale
                        yScale: scale
                    }

                    ParallelAnimation {
                        running: true
                        SequentialAnimation {
                            running: true
                            loops: Animation.Infinite

                            NumberAnimation {
                                target: rect
                                property: "y"
                                from: 0; to: 400
                                duration: 750
                                easing.type: Easing.InOutQuad
                            }
                            PauseAnimation { duration: 250 }
                        }

                        SequentialAnimation {
                            running: true
                            loops: Animation.Infinite

                            PropertyAnimation {
                                target: st
                                properties: "scale"
                                from: 1.0
                                to: 2.0
                                duration: 750
                            }
                            PauseAnimation { duration: 250 }
                        }
                    }
                }
            }
        }
    }
}
