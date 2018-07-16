import QtQuick 2.6

import QtQuick.Controls 1.0
import QtQuick.Controls.Nemo 1.0

Page {
    id: mainPage

	headerTools: HeaderToolsLayout {
            id: tools
            title: qsTr("%ProjectName%")
        }

	Column {
		spacing: 40
        anchors.centerIn: parent
        Label {
                text: "%Summary%"
        }
	}
}
