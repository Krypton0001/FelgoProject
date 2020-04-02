import Felgo 3.0
import QtQuick 2.0
import "helper"
import "pages"

Item {
    anchors.fill: parent

    // app content with plugin list
    NavigationStack {
        id: pluginMainItem

        // initial page contains list if plugins and opens pages for each plugin when selected
        ListPage {
            id: page
            title: qsTr("Felgo Plugins")

            model: ListModel {
                ListElement { type: "Social"; name: "Facebook"
                    detailText: "Social Sharing & Friend Invites"; image: "../assets/logo-facebook.png" }
                ListElement { type: "Notifications"; name: "Google Cloud Messaging Push Notifications"
                    detailText: "Targeted Push Notifications"; image: "../assets/logo-gcm.png" }
                ListElement { type: "Notifications"; name: "OneSignal Push Notifications"
                    detailText: "Targeted Push Notifications"; image: "../assets/logo-onesignal.png" }
                ListElement { type: "Notifications"; name: "Local Notifications"
                    detailText: "Schedule Local Notifications"; image: "../assets/logo-localpush.png" }
                ListElement { type: "Database & Authentication"; name: "Firebase"
                    detailText: "Manage users and use Realtime Database"; image: "../assets/logo-firebase.png" }
            }

            delegate: PluginListItem {
                visible: name !== "GameCenter" || Theme.isIos

                onSelected: {
                    switch (name) {
                    case "Facebook":
                        page.navigationStack.push(facebookPage)
                        break
                    case "Google Cloud Messaging Push Notifications":
                        page.navigationStack.push(Qt.resolvedUrl("pages/GoogleCloudMessagingPage.qml"))
                        break
                    case "OneSignal Push Notifications":
                        page.navigationStack.push(Qt.resolvedUrl("pages/OneSignalPage.qml"))
                        break
                    case "Local Notifications":
                        page.navigationStack.push(notificationPage)
                        break
                    case "Firebase":
                        page.navigationStack.push(firebasePage)
                        break
                    }
                }
            }

            section.property: "type"
            section.delegate: SimpleSection { }
        }
    }
}
