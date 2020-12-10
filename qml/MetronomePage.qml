import QtQuick 2.0
import QtQml.Models 2.12
import QtQuick.Controls 2.15

Item {
    id: metronomePage
    width: 480
    height: 560

    function updateTempo(newTempo) {
        metronomeAnalogClassic.tempo = newTempo;
    }

    StackView {
        id: stackView
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        initialItem: metronomeAnalogClassic

        MetronomeAnalogClassic {
            id: metronomeAnalogClassic
            anchors.fill: parent

            tempo: 80
            tempoName: "Adagio"
            running: false
            onTempoChange: updateTempo(newTempo)
        }
    }
}

