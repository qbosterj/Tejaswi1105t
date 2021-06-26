/*
 * Copyright (C) 2014 Vishesh Handa <vhanda@kde.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) version 3, or any
 * later version accepted by the membership of KDE e.V. (or its
 * successor approved by the membership of KDE e.V.), which shall
 * act as a proxy defined in Section 6 of version 3 of the license.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.0

GridView {
    id: root
    signal imageSelected(string filePath)

    cellWidth: 250
    cellHeight: 250

    model: ListModel {
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06820.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06821.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06822.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06823.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06824.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06825.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06826.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06827.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06828.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06829.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06830.JPG"
        }
        ListElement {
            name: "Name of Picture"
            url: "/home/vishesh/Images/bs/DSC06831.JPG"
        }
    }

    delegate: ColumnLayout {
        Image {
            source: model.url
            asynchronous: true
            fillMode: Image.PreserveAspectFit

            Layout.maximumWidth: 200
            Layout.maximumHeight: 200
        }

        Label {
            text: model.name
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
        }

        MouseArea {
            anchors.fill: parent
            onClicked: root.imageSelected(model.url)
        }
    }
}
