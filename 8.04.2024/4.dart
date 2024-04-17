void main(List<String> args) {
    // Objects in class
  var musicInstrument = MusicInstrument();
  var guitar = Guitar();
  var workInstrument = WorkInstrument();
  var drillingMachine = DrillingMachine();

  musicInstrument.howUsed();
  guitar.howUsed();
  workInstrument.howUsed();
  drillingMachine.howUsed();
}

// Instrument class
class Instrument {

}

// MusicInstrument class extends Instrument
class MusicInstrument extends Instrument {
    void howUsed() {
        print("Musiqa chalinadi");
    }
}

// Guitar class extends MusicInstrument
class Guitar extends MusicInstrument {
    @override
    void howUsed() {
        super.howUsed();
        print("Gitara Chalinadi\n");
    }
}

// WorkInstrument class extends Instrument
class WorkInstrument extends Instrument {
    void howUsed() {
        print("Nimadurlarni tuzatish uchun");
    }
}

// DrillingMachine class extends WorkInstrument
class DrillingMachine extends WorkInstrument {
    @override
    void howUsed() {
        super.howUsed();
        print("Burg'ulashda Ishlatiladi\n");
    }
}