import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "." as Local

ShellRoot{

  Variants{
    model: Quickshell.screens

    PanelWindow{
      id: panel
      required property var modelData
      screen: modelData
      color: "transparent"
      WlrLayershell.layer: WlrLayer.Background
      WlrLayershell.exclusionMode: ExclusionMode.Ignore
      anchors{
        right: true
        left: true
        top: true
        bottom: true
      }

      margins
      {
        right: 5
        left: 5
        top: 120
        bottom: 5
      }

      Rectangle{
        id: container
        color: "transparent"
        width: 600
        height: 600
        anchors{
          right:parent.right
          top:parent.top
          margins: 5
        }

        Row{
          id: maintime
          spacing: 8
          anchors{
            right: parent.right
            rightMargin: 40
            top: parent.top
            topMargin: 170
          }
          SystemClock {
            id: clock
            precision: SystemClock.Seconds
          }

          Text {
            id: clockdate
            color: "#1a1111"
            text: Qt.formatDateTime(clock.date, "dd MMM yyyy")
            font.family:"Glirock"
            font.weight:font.Light
            font.pixelSize:50
          }
        }
        Row{
          id: quote
          spacing: 8
          anchors{
            right: parent.right
            rightMargin: 10
            top: parent.top
            topMargin: 200
          }

          
  Process {
    id: quoteProcess
    command: ["/usr/bin/shuf", "-n", "1", "/home/mui/.config/quickshell/quotes.txt"]

    stdout: StdioCollector {
      onStreamFinished: quoteText.text = text.trim()
    }

    Component.onCompleted: running = true
  }

          Text{
            id : quoteText
            text: ''
            color: Local.Colors.md3.tertiary
            font.family: "Glirock"
            font.pixelSize:90
          }

        }
        Row{
          id: hour
          anchors{
            right: parent.right
            rightMargin: 40
            top: parent.top
            topMargin: 315
          }

          Rectangle{
            width: 155
            height: 50
            radius: 9

            Text {
                anchors.fill: parent
                font.pixelSize: 60
                text: clock.date.toLocaleString(Qt.locale("en_US"), "hh:mm ap")
                color: "#1a1111"
                font.family: "Glirock"
                font.weight: Font.Black
                font.pointSize: 1200
                fontSizeMode: Text.Fit
                layer.enabled: true
            }

          }

        }
      }
    }
  }
}
