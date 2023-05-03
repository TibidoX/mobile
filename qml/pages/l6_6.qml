import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    id: pg
    property int count: -1
    TextField {
        id: textField
        width: parent.width
    }

    Button {
        id: btn
        text: "Добавить"
        anchors{
            top: textField.bottom
            horizontalCenter: parent.horizontalCenter
        }

        onClicked: {
            myModel.append({num: count,txt: textField.text});
            dao.insertNote(count, textField.text);
            count++
        }
    }

    DAO { id: dao }
    ListModel {
        id:  myModel
        ListElement {num:-1; txt:""}
    }
    ListView
    {
        id: l
        model: myModel;
        delegate: ListItem {
            Label {
                text: txt;
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log(index);
                    console.log(myModel.get(index).num);
                    var id = myModel.get(index).num;
                    //l.currentIndex = index;
                    myModel.remove(index);
                    dao.deleteNote(id);
                }
            }
        }
        width: parent.width
        height: parent.height/2;
        anchors.top: btn.bottom
        spacing: 10
        orientation:  Qt.Vertical
    }
    function selectNotes() {
        myModel.clear();
        dao.retrieveNotes(function(notes) {
            console.log(notes.length);
            for (var i = 0; i < notes.length; i++) {
                var note = notes.item(i);
                myModel.append({num: note.id,txt: note.text});
                count = note.id;
            }
            count++;
        });
    }
    Component.onCompleted: selectNotes()
}

