# Welcome to Sonic Pi
use_bpm 170
pad1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/pad1.mp3"
pad2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/PAD2.mp3"
piano1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/piano1.mp3"
piano2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Piano2.mp3"
organ = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Organ.mp3"
altbeat1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/AltBeat1.mp3"
altbeat2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/AltBeat2.mp3"
drums1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/DRUMS1.mp3"
drums2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/DRUMS2.mp3"
bell = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/BELL.mp3"
bass1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/bass1.mp3"
bass2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Bass2.mp3"
vox = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/vox.mp3"
bridgeBgVox = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/BridgeBgVox.mp3"

stopBoolPad = false
stopBoolPiano = false
stopBoolBass = false
stopBoolDrums = true
stopBoolBeat = false

stopBoolPad2 = true
stopBoolPiano2 = true
stopBoolBass2 = true
stopBoolDrums2 = true
stopBoolBeat2 = true

stopBoolVox = true
StopBoolBridgeVox = false
stopBoolBell = true

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

live_loop :bass2, sync: :piano2 do
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

live_loop :altbeat1, sync: :bass1 do
  if stopBoolBeat
    stop
  end
  sample altbeat1, "altbeat1", amp: 1.5
  sleep 16
end

live_loop :altbeat2, sync: :bass1 do
  if stopBoolBeat2
    stop
  end
  sample altbeat2, "altbeat2", amp: 1.5
  sleep 16
end


live_loop :vox, sync: :drums2 do
  if stopBoolVox
    stop
  end
  sample vox, "Vox", amp: 2
  sleep 16
end

live_loop :bridgeBgVox, sync: :drums2 do 
  if stopBoolBridgeBgVox
    stop
  end
  sample bridgeBgVox, "bridgeBgVox", amp: 2
  sleep 16
end


live_loop :bell, sync: :drums2 do
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


