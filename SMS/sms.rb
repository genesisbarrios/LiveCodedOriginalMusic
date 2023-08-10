# Welcome to Sonic Pi
use_bpm 100
guitar = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/guitar.mp3"
pad = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/Pad.mp3"
snV = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/SnVerse.mp3"
snC = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/SnChorus.mp3"
bassV =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/BassVerse.mp3"
bassC = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/BassChorus.mp3"
kickV =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/KickVerse.mp3"
kickC =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/KickChorus.mp3"
voxBG =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/ChorusBGVox.mp3"
tambo = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/tambo.mp3"
bongos = "/Users/genesisbarrios/Desktop/sonic pi files/samples/SMSstems/bongos.mp3"

stopBoolVerse = true
stopBoolChorus = false

live_loop :Metronome do
  ##| play note :d4
  puts "metronome"
  cue :click
  sleep 16
end

live_loop :guitar do
  sample guitar, "guitar", amp: 2
  sleep 16
end


live_loop :pad, sync: :click do
  if stopBoolChorus
    stop
  end
  sample pad, "pad", amp: 2
  sleep 16
end


live_loop :bassV, sync: :click do
  if stopBoolVerse
    stop
  end
  sample bassV, "bassV", amp: 1
  sleep 16
end

live_loop :bassC, sync: :click do
  if stopBoolChorus
    stop
  end
  sample bassC, "bassC", amp: 1
  sleep 16
end


live_loop :snV, sync: :click do
  if stopBoolVerse
    stop
  end
  sample snV, "snV", amp: 1
  sleep 16
end

live_loop :snC, sync: :click do
  if stopBoolChorus
    stop
  end
  sample snC, "snC", amp: 1.5
  sleep 16
end

live_loop :kickV, sync: :click do
  if stopBoolVerse
    stop
  end
  sample kickV, "kickV", amp: 1.5
  sleep 16
end


live_loop :kickC, sync: :click do
  if stopBoolChorus
    stop
  end
  sample kickC, "kickC", amp: 1.5
  sleep 16
end

live_loop :tambo, sync: :click do
  if stopBoolChorus
    stop
  end
  sample tambo, "tambo", amp: 1
  sleep 16
end

live_loop :voxBG, sync: :click do
  if stopBoolChorus
    stop
  end
  sample voxBG, "voxBG", amp: 1.5
  sleep 16
end


live_loop :bongos, sync: :click do
  if stopBoolChorus
    stop
  end
  sample bongos, "bongos", amp: 2
  sleep 16
end


live_loop :midi_piano do
  note, velocity = sync "/midi:mpk_mini_3:1/note_on"
  use_real_time
  synth :sine  , note: note, amp:1, release: 3
end



