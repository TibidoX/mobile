import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


SilicaListView {
    width: 480; height: 800
    model: ListModel {
         ListElement { fruit: "jackfruit" }
         ListElement { fruit: "orange" }
         ListElement { fruit: "lemon" }
         ListElement { fruit: "lychee" }
         ListElement { fruit: "apricots" }
    }
    delegate: Item {
         width: ListView.view.width
         height: Theme.itemSizeSmall

         Label { text: fruit }
    }
}
