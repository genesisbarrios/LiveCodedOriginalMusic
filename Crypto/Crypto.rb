# Welcome to Sonic Pi
use_bpm 99
pad = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/Pad.mp3"
rimV = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/RimVerse.mp3"
rimC = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/RimChorus.mp3"
bassV =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/BassVerse.mp3"
bassC = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/BassChorus.mp3"
kick =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/Kick.mp3"
voxBG =  "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/VoxBG.mp3"
ride = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/Ride.mp3"
lead = "/Users/genesisbarrios/Desktop/sonic pi files/samples/Crypto/Lead.mp3"


stopBoolVerse = false
stopBoolKick = true

stopBoolChorus = true


live_loop :Metronome do
  ##| play note :d4
  puts "metronome"
  cue :click
  sleep 16
end


live_loop :pad do
  sample pad, "pad", amp: 2
  sleep 16
end

live_loop :kick, sync: :click do
  if stopBoolKick
    stop
  end
  sample kick, "kick", amp: 1.5
  sleep 16
end

live_loop :bassV, sync: :click do
  if stopBoolVerse
    stop
  end
  sample bassV, "bassV", amp: 1
  sleep 16
end

live_loop :rimV, sync: :click do
  if stopBoolVerse
    stop
  end
  sample rimV, "rimV", amp: 1
  sleep 16
end

live_loop :rimC, sync: :click do
  if stopBoolChorus
    stop
  end
  sample rimC, "rimC", amp: 1.5
  sleep 16
end

live_loop :bassC, sync: :click do
  if stopBoolChorus
    stop
  end
  sample bassC, "bassC", amp: 1
  sleep 16
end

live_loop :ride, sync: :click do
  if stopBoolChorus
    stop
  end
  sample ride, "ride", amp: 1.5
  sleep 16
end

live_loop :voxBG, sync: :click do
  if
    stop
  end
  sample voxBG, "voxBG", amp: 1.5
  sleep 16
end


live_loop :lead, sync: :click do
  if stopBoolChorus
    stop
  end
  sample lead, "lead", amp: 1
  sleep 16
end


live_loop :midi_piano do
  note, velocity = sync "/midi:mpk_mini_3:1/note_on"
  use_real_time
  synth :sine  , note: note, amp:1, release: 3
end


