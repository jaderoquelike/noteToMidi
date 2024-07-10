
string notes[128];

["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"] @=> string noteNames[];

0 => int i;

for (-1 => int octave; octave <= 9; octave++) {
  for (0 => int noteIndex; noteIndex < 12; noteIndex++) {
    if( i < notes.cap()){
      noteNames[noteIndex % 12] + octave => notes[i];
    i++;
    }
  }
}

int noteList[notes.cap()]; // midi-note paired array

for (0 => int j; j < notes.cap(); j++) {
  j => noteList[notes[j]];
}

fun void gimmeMidi( string noteConv[] ){
  for (0 => int k; k < noteConv.cap(); k++){

    <<< "Note " + noteConv[k] + " is " + noteList[noteConv[k]] + " in MIDI equivalent" >>>; // it also produces one output of void for some reason

  }
}

// imput example

gimmeMidi(["B3", "B2", "A3"] @=> string noteTest[]);