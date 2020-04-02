import Felgo 3.0
import QtQuick 2.0
import "pages"
import "helper"

import Felgo 3.0
import QtQuick 2.0
import "pages"
import "helper"
import QtWebView 1.1
import VPlay 2.0
import VPlayPlugins 1.0
import VPlayApps 1.0

App
{
    id: mainApp
    licenseKey: "191D8FF4F22D7AEA3C85701164EDB67653D8585A75344BF6CE1BF924070660AAD31BAF75B0412C98649A7725C18A64C3C90D7191178251027F53CC427C831D6458B072E156BB460C316A78D8B369A4B7089DDE6B85A6AE108869F091F5374140073DE2BBAA05076D0673737D71592D198B3CCBD10F4334C410E478E928D85F6E3BD1BA066E100103FE6A8BAB1E74030ACDF8D5C5C0E16EBC78EBEEC29E2C5169AE0CA16A9DD6C6995C99ABC75CD7ED611634BAB481797C95959AD9C83363EDB1868BF749A01F1194FD1DD2D21915F1821F003303CA32236DCF0B044169BF1CC06D20A205AA6960A1BF27B4F74BF8DC41BD377F45C4A27E13CCFCF492890B2905BDEDF6A28FE18EDB6EA49BB9961ECFBDC33F263E48EFEBF3B9E4B5640D1F4CDBD911319DEDD63A18314CE05D87E1EF3FDCA8F8E43F4FDA96D05FB01B73F92C1973AB3782712CF85D856A05942CC52EB4AD000131174380ECC975D18FB923C959609B3ACA5056E129C3A219C1E68A518CC5A5E56581B02A5B11BEB8F08BEA77A6882D00EB6581029BCB4D135D3063A4F5DB99B216825D1BCC16FCB1A6DAD4F596D258E7455A671C71AF962759AF225CC5572674F19D0B571BA1451300158624BD43C8C9A1B46D17F2C2BDD4817C0C0C7B"
    onInitTheme:
    {
        // Set color the statusBar style to white
        Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite

        // Set the navigationBar  background color
        onInitTheme: Theme.colors.tintColor = "#34eb55"                     // All type modules color
        Theme.navigationBar.titleColor = "white"
        Theme.navigationBar.backgroundColor = "#eb34a2"                    // Color only NavigationBar

        //Set the global background color
        //Theme.colors.backgroundColor = "white"

        // Set the global text color
        //Theme.colors.textColor = "34eb55"
    }

    NotificationManager
    {
        id: notificationManager

        onNotificationFired:
        {
            console.debug("Notification with id " + notificationId + " fired")
        }
    }

    Notification
    {
        id: staticNotification
        notificationId: "static_notification"
        message: "I'm statically defined in the app"
        timeInterval: 5
    }


    Navigation
    {
        id: navigation

        NavigationItem
        {
            id: navigationItem
            title: "Home"
            icon: IconType.home

            NavigationStack
            {
                id: navigationStack

                Page
                {
                    id: page
                    title: "Home"
                    //                    LocalNotificationPage
                    //                    {
                    //                        id: localNotificationPage
                    //                    }

                    Grid {
                        id: grid
                        anchors.fill: parent

                        QtObject
                        {
                            id: obj
                            property double getPlus
                            property double getMinus
                            property double getMulty
                            property double getDrob

                            property double res
                            property double result
                        }

                        AppButton {
                            id: appButton
                            text: "0"
                            textSize: 0
                            anchors.bottom: appButton12.top
                            anchors.bottomMargin: 5
                            anchors.horizontalCenter: parent.horizontalCenter
                            onClicked:
                            {
                                appOutputText.text += 0
                            }
                        }

                        AppButton {
                            id: appButton1
                            text: "1"
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: appButton11.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += 1
                            }
                        }

                        AppButton {
                            id: appButton2
                            text: "2"
                            anchors.bottom: appButton.top
                            anchors.bottomMargin: 5
                            anchors.horizontalCenter: parent.horizontalCenter
                            onClicked:
                            {
                                appOutputText.text += 2
                            }
                        }

                        AppButton {
                            id: appButton3
                            text: "3"
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            anchors.bottom: appButton10.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += 3
                            }
                        }

                        AppButton {
                            id: appButton4
                            text: "4"
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: appButton1.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += 4
                            }
                        }

                        AppButton {
                            id: appButton5
                            text: "5"
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottom: appButton2.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += 5
                            }
                        }

                        AppButton {
                            id: appButton6
                            text: "6"
                            anchors.bottom: appButton3.top
                            anchors.bottomMargin: 5
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            onClicked:
                            {
                                appOutputText.text += 6
                            }
                        }

                        AppButton {
                            id: appButton7
                            text: "7"
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: appButton4.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += 7
                            }
                        }

                        AppButton {
                            id: appButton8
                            text: "8"
                            anchors.bottom: appButton5.top
                            anchors.bottomMargin: 5
                            anchors.horizontalCenter: parent.horizontalCenter
                            onClicked:
                            {
                                appOutputText.text += 8
                            }
                        }

                        AppButton {
                            id: appButton9
                            text: "9"
                            anchors.bottom: appButton6.top
                            anchors.bottomMargin: 5
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            onClicked:
                            {
                                appOutputText.text += 9
                            }
                        }

                        AppButton {
                            id: appButton10
                            text: "<"
                            checkable: true
                            anchors.bottom: appButton12.top
                            anchors.bottomMargin: 5
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            onClicked:
                            {
                                appOutputText.remove(appOutputText.selectionStart, appOutputText.selectionEnd - 1)
                                console.debug("Clicked backRemove")
                            }
                        }

                        AppButton {
                            id: appButton11
                            text: "."
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: appButton12.top
                            anchors.bottomMargin: 5
                            onClicked:
                            {
                                appOutputText.text += '.'
                            }
                        }

                        AppTextField
                        {
                            id: appOutputText
                            color: "#353637"
                            readOnly: true
                            horizontalAlignment: Text.AlignRight
                            transformOrigin: Item.Center
                            selectByMouse: true
                            focus: false
                            radius: 20
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            backgroundColor: "#00000000"
                            cursorColor: "#34eb55"
                            font.weight: Font.Normal
                            placeholderText: ""
                            borderColor: "#34eb55"
                            font.pixelSize: 36
                            selectedTextColor: "#34eb55"
                            selectionColor: "#eb34a2"
                            anchors.top: appTextEdit.bottom
                            anchors.topMargin: 10
                            showClearButton: true
                            //property bool isTooLong: appOutputText.text.length >= 6
                            inputMethodHints: Qt.ImhFormattedNumbersOnly
                        }



                        AppButton
                        {
                            id: appButtonPlus
                            text: '+'
                            radius: 50
                            anchors.bottom: appButton9.top
                            anchors.bottomMargin: 10
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            onClicked:
                            {
                                obj.getPlus = appOutputText.getText(0, appOutputText.text.length)
                                appOutputText.clear()
                                appTextEdit.text = obj.getPlus + " + "
                                recText.text = '+'
                            }
                        }
                        AppButton
                        {
                            id: appButtonMinus
                            text: '-'
                            anchors.bottom: appButton8.top
                            radius: 50
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottomMargin: 10
                            onClicked:
                            {
                                obj.getMinus = appOutputText.getText(0, appOutputText.text.length)
                                appOutputText.clear()
                                appTextEdit.text = obj.getMinus + " - "
                                recText.text = '-'
                            }
                        }
                        AppButton
                        {
                            id: appButtonMulty
                            text: '*'
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: appButton8.top
                            radius: 50
                            anchors.bottomMargin: 10
                            onClicked:
                            {
                                obj.getMulty = appOutputText.getText(0, appOutputText.text.length)
                                appOutputText.clear()
                                appTextEdit.text = obj.getMulty + " * "
                                recText.text = '*'
                            }
                        }
                        AppButton
                        {
                            id: appButtonDrop
                            text: '/'
                            anchors.bottom: appButtonMulty.top
                            anchors.bottomMargin: 10
                            anchors.horizontalCenter: parent.horizontalCenter
                            radius: 50
                            onClicked:
                            {
                                obj.getDrob = appOutputText.getText(0, appOutputText.text.length)
                                appOutputText.clear()
                                appTextEdit.text = obj.getDrob + " / "
                                recText.text = '/'
                            }
                        }

                        Rectangle {
                            id: operatorIndicator
                            width: 70
                            height: 70
                            color: "#00000000"
                            radius: 50
                            border.width: 2
                            border.color: "#34eb55"
                            anchors.top: appOutputText.bottom
                            anchors.topMargin: 20
                            anchors.right: parent.right
                            anchors.rightMargin: 20
                            Text
                            {
                                id: recText
                                font.pixelSize: 32
                                color: "#eb34a2"
                                font.bold: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }

                        AppTextEdit {
                            id: appTextEdit
                            font.pointSize: 20
                            readOnly: true
                            horizontalAlignment: Text.AlignRight
                            anchors.right: parent.right
                            anchors.rightMargin: 22
                            anchors.left: parent.left
                            anchors.leftMargin: 22
                            anchors.top: parent.top
                            anchors.topMargin: 10
                        }

                        AppButton
                        {
                            id: appButton12
                            text: '='
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 50
                            onClicked:
                            {
                                obj.res = appOutputText.getText(0, appOutputText.text.length)
                                appTextEdit.text += obj.res
                                if(recText.text == '+')
                                {
                                    obj.result = obj.getPlus + obj.res
                                    appOutputText.text = obj.result
                                }
                                else if(recText.text == '-')
                                {
                                    obj.result = obj.getMinus - obj.res
                                    appOutputText.text = obj.result
                                }
                                else if(recText.text == '*')
                                {
                                    obj.result = obj.getMulty * obj.res
                                    appOutputText.text = obj.result
                                }
                                else if(recText.text == '/')
                                {
                                    obj.result = obj.getDrob / obj.res
                                    appOutputText.text = obj.result
                                }
                                else
                                {
                                    appOutputText.clear()
                                    appTextEdit.clear()
                                }
                            }
                        }

                    }
                }
            }
        }

        NavigationItem
        {
            id: navigationItem1
            title: "Settings"
            icon: IconType.support
            NavigationStack
            {
                id: navigationStack1

                Page
                {
                    id: settings
                    title: "Settings"

                    AppSwitch
                    {
                        id: appSwitch
                        activeFocusOnTab: true
                        updateChecked: true
                        dropShadow: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        onCheckedChanged:
                        {
                            if(appSwitch.checked == false)
                            {
                                onInitTheme: Theme.colors.tintColor = "#34eb55"                     // All type modules color
                                Theme.navigationBar.titleColor = "white"
                                Theme.colors.backgroundColor = "white"
                                Theme.navigationBar.backgroundColor = "#eb34a2"                    // Color only NavigationBar
                                Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite
                            }
                            else if(appSwitch.checked == true)
                            {
                                Theme.colors.statusBarStyle = Theme.colors.statusBarStyleBlack
                                onInitTheme: Theme.colors.tintColor = "#34eb55"                     // All type modules color
                                Theme.navigationBar.titleColor = "#eb34a2"
                                Theme.navigationBar.backgroundColor = "#222"                    // Color only NavigationBar
                                Theme.colors.backgroundColor = "#222"
                            }
                        }
                    }

                }
            }
        }
        NavigationItem
        {
            id: aboutItem
            title: "About"
            icon: IconType.info
            NavigationStack
            {
                id: aboutStack

                Page
                {
                    id: aboutPage
                    title: "About"

                    IconButtonBarItem {
                        id: iconButtonBarItem
                        color: "#34eb55"
                        iconSize: 100
                        title: "Click me"
                        anchors.horizontalCenter: parent.horizontalCenter
                        icon: IconType.heart
                        onClicked:
                        {
                            if(iconButtonBarItem.color == "#34eb55")
                            {
                                iconButtonBarItem.color = "#eb34a2"
                            }
                            else
                            {
                                iconButtonBarItem.color = "#34eb55"
                            }
                        }
                    }

                    AppTextEdit {
                        id: appTextEdit1
                        color: "#eb34a2"
                        text: qsTr("Author: Niyazbekov Erkinbek
Firsrt my programm from Felgo
Email: erkinbek502@gmail.com")
                        anchors.top: parent.top
                        anchors.topMargin: 50
                        readOnly: true
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        anchors.right: parent.right
                        anchors.rightMargin: 20
                    }
                }
            }
        }
    }
}

/*/////////////////////////////////////
  NOTE:
  Additional integration steps are needed to use Felgo Plugins, for example to add and link required libraries for Android and iOS.
  Please follow the integration steps described in the plugin documentation of your chosen plugins:
  - Facebook: https://felgo.com/doc/plugin-facebook/
  - OneSignal: https://felgo.com/doc/plugin-onesignal/
  - Google Cloud Messaging: https://felgo.com/doc/plugin-gcm/
  - Local Notifications: https://felgo.com/doc/plugin-notification/
  - Firebase: https://felgo.com/doc/plugin-firebase/

  To open the documentation of a plugin item in Qt Creator, place your cursor on the item in your QML code and press F1.
  This allows to view the properties, methods and signals of Felgo Plugins directly in Qt Creator.

/////////////////////////////////////*/
/*
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    // This item contains example code for the chosen Felgo Plugins
    // It is hidden by default and will overlay the QML items below if shown
    PluginMainItem {
        id: pluginMainItem
        z: 1           // display the plugin example above other items in the QML code below
        visible: false // set this to true to show the plugin example

        // keep only one instance of these plugin-pages alive within app
        // this prevents crashes due to destruction of plugin items when popping pages from the stack
        property alias facebookPage: facebookPage
        property alias notificationPage: notificationPage
        property alias firebasePage: firebasePage

        FacebookPage {
            id: facebookPage
            visible: false
            onPopped: { facebookPage.parent = pluginMainItem; visible = false }
        }

        LocalNotificationPage {
            id: notificationPage
            visible: false
            onPopped: { notificationPage.parent = pluginMainItem; visible = false }
        }

        FirebasePage {
            id: firebasePage
            visible: false
            onPopped:  { firebasePage.parent = pluginMainItem; visible = false }
        }
    }

    NavigationStack {

        Page {
            title: qsTr("Main Page")

            Image {
                source: "../assets/felgo-logo.png"
                anchors.centerIn: parent
            }
        }

    }
}
*/

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:28;anchors_width:200}D{i:7;anchors_height:400;anchors_width:400}
D{i:38;anchors_width:200}
}
##^##*/
