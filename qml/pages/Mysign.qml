import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Item {
    id: lights
    property Rectangle red
    property Rectangle ylw
    property Rectangle grn
    property list<State> lst:
    [
        State {
            name: "Stop"
            PropertyChanges {
                target: red
                color: "red"
            }
            PropertyChanges {
                target: ylw
                color: "white"
            }
            PropertyChanges {
                target: grn
                color: "white"
            }
        },
        State {
            name: "Attention"
            PropertyChanges {
                target: red
                color: "red"
            }
            PropertyChanges {
                target: ylw
                color: "yellow"
            }
            PropertyChanges {
                target: grn
                color: "white"
            }
        },
        State {
            name: "Attention_s"
            PropertyChanges {
                target: red
                color: "white"
            }
            PropertyChanges {
                target: ylw
                color: "yellow"
            }
            PropertyChanges {
                target: grn
                color: "white"
            }
        },
        State {
            name: "Go"
            PropertyChanges {
                target: red
                color: "white"
            }
            PropertyChanges {
                target: ylw
                color: "white"
            }
            PropertyChanges {
                target: grn
                color: "green"
            }
        }
    ]
}
