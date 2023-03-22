import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
   objectName: "squares"
   SilicaFlickable {
       anchors.fill: parent
       Item {
           id : objs;
           property int size: 150
           property int margs: 50
       }

       Column {
           Item {
               id: item1
               implicitHeight: objs.size + 2 * objs.margs
               Rectangle {
                   y : 0
                   x : 0
                   width: objs.size
                   height: objs.size
                   color: "red"
               }
               Rectangle {
                   y : objs.size/2
                   x : objs.size
                   width: objs.size
                   height: objs.size
                   color: "green"
               }
               Rectangle {
                   y : 0
                   x : 1.5*objs.size
                   width: objs.size
                   height: objs.size
                   color: "blue"
                   Label {
                       anchors.centerIn: parent;
                       text: qsTr("Квадрат");
                       color: "white"
                   }
               }
           }

           Item {
               id: item2
               implicitHeight: 2 * objs.size + 2 * objs.margs
               anchors.top : item1.bottom
               Column {
                   spacing: 30
                   Row {
                       spacing: 30
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "red"
                       }
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "green"
                       }
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "blue"
                       }
                   }
                   Row {
                       spacing: 30
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "pink"
                       }
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "white"
                           opacity: 0
                       }
                       Rectangle {
                           y : 0
                           x : 0
                           width: objs.size
                           height: objs.size
                           color: "black"
                       }
                   }
               }
           }

           Item {
               id: item3
               anchors.top : item2.bottom
               Grid {
                   rows: 2
                   columns: 3
                   spacing: 30

                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "red"
                   }
                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "green"
                   }
                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "blue"
                   }
                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "pink"
                   }
                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "white"
                       opacity: 0
                   }
                   Rectangle {
                       y : 0
                       x : 0
                       width: objs.size
                       height: objs.size
                       color: "black"
                   }
               }
           }
       }
   }
}

//import QtQuick 2.0
//import QtQuick.Layouts 1.1
//import Sailfish.Silica 1.0

//Page {
//    objectName: "squares"
//    SilicaFlickable {
//        anchors.fill: parent

//        Item {
//            id : objs;
//            property int size: 150
//            property int margs: 50
//        }

//        Column {
//            anchors {
//                left: parent.left
//                leftMargin: objs.margs
//            }

//            Item {
//                id : item1
//                implicitHeight: objs.size + 2 * objs.margs
//                Rectangle {
//                    y : 0; x : 0;
//                    width: objs.size; height: objs.size;
//                    color: "red"
//                }
//                Rectangle {
//                    y : objs.size / 2; x : objs.size;
//                    width: objs.size; height: objs.size;
//                    color: "#45FF17"
//                }
//                Rectangle {
//                    y : 0; x :objs.size + objs.size / 2;
//                    width: objs.size; height: objs.size;
//                    color: "blue"
//                    Label {
//                        anchors.centerIn: parent;
//                        text: qsTr("Квадрат");

//                    }
//                }
//            }
//            Item { // Простое решение
//                   id: item2;
//                   implicitHeight: 2 * objs.size + 2 * objs.margs
//                   anchors.top : item1.bottom

//                   Column {
//                       spacing: 20
//                       Row {
//                           spacing: 20
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "red"
//                           }
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "#45FF17"
//                           }
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "blue"

//                           }
//                       }
//                       Row {
//                           spacing: 20
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "pink"
//                           }
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "white"
//                           }
//                           Rectangle {
//                               y : 0; x : 0;
//                               width: objs.size; height: objs.size;
//                               color: "black"

//                           }
//                       }
//                   }

//               }
//            Item { // Использование Grid
//                id: item3

//                anchors.top: item2.bottom


//                Grid {
//                    rows: 2
//                    columns: 3

//                    spacing: 20

//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "red"
//                    }
//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "#45FF17"
//                    }
//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "blue"

//                    }

//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "pink"
//                    }
//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "white"
//                    }
//                    Rectangle {
//                        y : 0; x : 0;
//                        width: objs.size; height: objs.size;
//                        color: "black"

//                    }
//                }
//            }
//        }
//    }
//}
