# Welcome to Sonic Pi
use_bpm 170
pad1 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/pad1.mp3"
pad2 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/PAD2.mp3"
piano1 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/piano1.mp3"
piano2 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/Piano2.mp3"
organ = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/Organ.mp3"
drums1 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/DRUMS1.mp3"
drums2 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/DRUMS2.mp3"
bell = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/BELL.mp3"
bass1 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/bass1.mp3"
bass2 = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/Bass2.mp3"
vox = "/Users/genesisbarrios/Desktop/sonic pi files/Live Coded Originals/I Can't Lie/sonic-pi-stems/vox.mp3"


stopBoolPad = true
stopBoolPiano = true
stopBoolBass = true
stopBoolDrums = true

stopBoolPad2 = false
stopBoolPiano2 = false
stopBoolBass2 = false
stopBoolDrums2 = false

stopBoolVox = true
stopBoolBell = false

live_loop :pad1 do
  if stopBoolPad
    stop
  end
  sample pad1, "pad1", amp: 2
  sleep 16
end

live_loop :pad2 do
  if stopBoolPad2
    stop
  end
  sample pad2, "pad2", amp: 2
  sleep 16
end

live_loop :piano1, sync: :pad1 do
  if stopBoolPiano
    stop
  end
  sample piano1, "piano1", amp: 2
  sleep 16
end

live_loop :piano2, sync: :pad2 do
  if stopBoolPiano2
    stop
  end
  sample piano2, "piano2", amp: 2
  sleep 16
end


live_loop :bass1, sync: :pad1 do
  if stopBoolBass
    stop
  end
  sample bass1, "bass1", amp: 2
  sleep 16
end

live_loop :bass2, sync: :pad2 do
  if stopBoolBass2
    stop
  end
  sample bass2, "bass2", amp: 2
  sleep 16
end


live_loop :drums1, sync: :bass1 do
  if stopBoolDrums
    stop
  end
  sample drums1, "drums1", amp: 1
  sleep 16
end

live_loop :drums2, sync: :bass2 do
  if stopBoolDrums2
    stop
  end
  sample drums2, "drums2", amp: 1.5
  sleep 16
end


live_loop :vox, sync: :drums2 do
  if stopBoolVox
    stop
  end
  sample vox, "Vox", amp: 2
  sleep 16
end


live_loop :bell, sync: :drums1 do
  if stopBoolBell
    stop
  end
  sample bell, "bell", amp: 3
  sleep 16
end

live_loop :midi_piano do
  note, velocity = sync "/midi:mpk_mini_3:1/note_on"
  synth :piano, note: note, amp:2, release: 5
end


