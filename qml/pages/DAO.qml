import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("c:\sqlite\notes.db;", "3.41.2");
        createBooksTable();
    }
    function createBooksTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS list (id serial NOT NULL, text text NOT NULL, PRIMARY KEY (id));");
        });
    }
    function retrieveNotes(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM list;");
            callback(result.rows);
        });
    }
    function insertNote(id, text) {
        db.transaction(function(tx) {
           tx.executeSql("INSERT INTO list (id, text) VALUES(?, ?);", [id, text]);
        });
    }

    function deleteNote(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM list WHERE id = ?;", [id]);
        });
    }

    function updateNote(n_id, id) {
        db.transaction(function(tx) {
            tx.executeSql("UPDATE list SET id = ? WHERE id = ?;", [n_id, id]);
        });
    }
}
