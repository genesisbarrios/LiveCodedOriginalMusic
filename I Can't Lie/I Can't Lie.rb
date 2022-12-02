# Welcome to Sonic Pi
use_bpm 170
pad1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/pad1.mp3"
pad2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/PAD2.mp3"
piano1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/piano1.mp3"
piano2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Piano2.mp3"
organ = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Organ.mp3"
altbeat = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/AltBeat.mp3"
drums1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/DRUMS1.mp3"
drums2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/DRUMS2.mp3"
bell = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/BELL.mp3"
bass1 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/bass1.mp3"
bass2 = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/Bass2.mp3"
vox = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/vox.mp3"
bridgeBgVox = "/Users/genesisbarrios/Desktop/sonic pi files/samples/ICan'tLieStems/BridgeBgVox.mp3"

live_loop :Metronome do
  ##| play note :d4
  puts "metronome"
  cue :click
  sleep 16
end

stopVerse = false
stopAltBeat = true

stopChorus = true

stopBoolBridgeBgVox = true



live_loop :pad1, sync: :click do
  if stopVerse
    stop
  end
  sample pad1, "pad1", amp: 2
  puts "restart loop"
  sleep 16
end

live_loop :piano1, sync: :click do
  
  if stopVerse
    stop
  end
  sleep 32
  sample piano1, "piano1", amp: 1
end

live_loop :bass1, sync: :click do
  if stopVerse
    stop
  end
  sleep 16
  sample bass1, "bass1", amp: 2
end

live_loop :altbeat, sync: :click do
  
  if stopAltBeat
    stop
  end
  sample altbeat, "altbeat", amp: 1.5
  sleep 16
end

##---------------------------------------
##Chorus

live_loop :pad2, sync: :click do
  if stopChorus
    stop
  end
  sample pad2, "pad2", amp: 2
  sleep 16
end

live_loop :piano2, sync: :click do
  
  if stopChorus
    stop
  end
  sample piano2, "piano2", amp: 1
  sleep 16
end

live_loop :drums2, sync: :click do
  
  if stopChorus
    stop
  end
  sample drums2, "drums2", amp: 1.5
  sleep 16
end

live_loop :bass2, sync: :click do
  
  if stopChorus
    stop
  end
  sample bass2, "bass2", amp: 2
  sleep 16
end

live_loop :vox, sync: :click do
  
  if stopChorus
    stop
  end
  sample vox, "Vox", amp: 1.5
  sleep 16
end

live_loop :bell, sync: :click do
  
  if stopChorus
    stop
  end
  sample bell, "bell", amp: 1
  sleep 16
end

live_loop :bridgeBgVox, sync: :click do
  
  if stopBoolBridgeBgVox
    stop
  end
  sample bridgeBgVox, "bridgeBgVox", amp: 1
  sleep 16
end

live_loop :midi_piano do
  note, velocity = sync "/midi:mpk_mini_3:1/note_on"
  use_real_time
  synth :sine  , note: note, amp:1, release: 3
end


