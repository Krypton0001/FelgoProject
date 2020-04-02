# allows to add DEPLOYMENTFOLDERS and links to the Felgo library and QtCreator auto-completion
CONFIG += felgo

# uncomment this line to add the Live Client Module and use live reloading with your custom C++ code
# for the remaining steps to build a custom Live Code Reload app see here: https://felgo.com/custom-code-reload-app/
# CONFIG += felgo-live

# Project identifier and version
# More information: https://felgo.com/doc/felgo-publishing/#project-configuration
PRODUCT_IDENTIFIER = com.yourcompany.wizardEVAP.Testis
PRODUCT_VERSION_NAME = 1.0.0
PRODUCT_VERSION_CODE = 1

# Optionally set a license key that is used instead of the license key from
# main.qml file (App::licenseKey for your app or GameWindow::licenseKey for your game)
# Only used for local builds and Felgo Cloud Builds (https://felgo.com/cloud-builds)
# Not used if using Felgo Live
PRODUCT_LICENSE_KEY = "191D8FF4F22D7AEA3C85701164EDB67653D8585A75344BF6CE1BF924070660AAD31BAF75B0412C98649A7725C18A64C3C90D7191178251027F53CC427C831D6458B072E156BB460C316A78D8B369A4B7089DDE6B85A6AE108869F091F5374140073DE2BBAA05076D0673737D71592D198B3CCBD10F4334C410E478E928D85F6E3BD1BA066E100103FE6A8BAB1E74030ACDF8D5C5C0E16EBC78EBEEC29E2C5169AE0CA16A9DD6C6995C99ABC75CD7ED611634BAB481797C95959AD9C83363EDB1868BF749A01F1194FD1DD2D21915F1821F003303CA32236DCF0B044169BF1CC06D20A205AA6960A1BF27B4F74BF8DC41BD377F45C4A27E13CCFCF492890B2905BDEDF6A28FE18EDB6EA49BB9961ECFBDC33F263E48EFEBF3B9E4B5640D1F4CDBD911319DEDD63A18314CE05D87E1EF3FDCA8F8E43F4FDA96D05FB01B73F92C1973AB3782712CF85D856A05942CC52EB4AD000131174380ECC975D18FB923C959609B3ACA5056E129C3A219C1E68A518CC5A5E56581B02A5B11BEB8F08BEA77A6882D00EB6581029BCB4D135D3063A4F5DB99B216825D1BCC16FCB1A6DAD4F596D258E7455A671C71AF962759AF225CC5572674F19D0B571BA1451300158624BD43C8C9A1B46D17F2C2BDD4817C0C0C7B"


qmlFolder.source = qml
DEPLOYMENTFOLDERS += qmlFolder # comment for publishing

assetsFolder.source = assets
DEPLOYMENTFOLDERS += assetsFolder

# Add more folders to ship with the application here

RESOURCES += #    resources.qrc # uncomment for publishing



# NOTE: for PUBLISHING, perform the following steps:
# 1. comment the DEPLOYMENTFOLDERS += qmlFolder line above, to avoid shipping your qml files with the application (instead they get compiled to the app binary)
# 2. uncomment the resources.qrc file inclusion and add any qml subfolders to the .qrc file; this compiles your qml files and js files to the app binary and protects your source code
# 3. change the setMainQmlFile() call in main.cpp to the one starting with "qrc:/" - this loads the qml files from the resources
# for more details see the "Deployment Guides" in the Felgo Documentation

# during development, use the qmlFolder deployment because you then get shorter compilation times (the qml files do not need to be compiled to the binary but are just copied)
# also, for quickest deployment on Desktop disable the "Shadow Build" option in Projects/Builds - you can then select "Run Without Deployment" from the Build menu in Qt Creator if you only changed QML files; this speeds up application start, because your app is not copied & re-compiled but just re-interpreted

#ICON for desktop application

RESOURCES += \
    appresources.qrc

RC_FILE = appresources.qrc

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp

FELGO_PLUGINS += facebook
FELGO_PLUGINS += onesignal
FELGO_PLUGINS += gcm
FELGO_PLUGINS += firebase

android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
    OTHER_FILES += android/AndroidManifest.xml       android/build.gradle
}

ios {
    QMAKE_INFO_PLIST = ios/Project-Info.plist
    OTHER_FILES += $$QMAKE_INFO_PLIST
}

# set application icons for win and macx
win32 {
    RC_FILE += win/app_icon.rc
}
macx {
    ICON = macx/app_icon.icns
}

HEADERS +=
