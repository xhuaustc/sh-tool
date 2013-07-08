#!/bin/bash
addPermission() {
sed -i '' "s/< *application/${1}<application/g" "./AndroidManifest.xml"
}

addApplicationName() {
grep -h '<*application[^>]*android:name[^>]*>' ./AndroidManifest.xml
if [ $? -eq 0 ]
then
    echo =============take care here!!==========================
    echo there\'s already a application android:name in AndroidManifest.xml,so can\' add application android:name again!!
    echo ====================end!!==============================
    exit 12
else
    sed -i '' "s/< *application/<application android:name=\"${1}\"/g" "./AndroidManifest.xml"
    echo add application android:name successfully!
fi
}
addApplicationName com.denachina.xiaomi.XiaomiApplication
