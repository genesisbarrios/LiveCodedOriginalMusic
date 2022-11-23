# Welcome to Sonic Pi
use_bpm 99
pad = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/Pad.mp3"
rimV = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/RimVerse.mp3"
rimC = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/RimChorus.mp3"
bassV =  "/Volumes/Untitled 1/sonic pi files/samples/Crypto/BassVerse.mp3"
bassC = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/BassChorus.mp3"
kick =  "/Volumes/Untitled 1/sonic pi files/samples/Crypto/Kick.mp3"
voxBG =  "/Volumes/Untitled 1/sonic pi files/samples/Crypto/VoxBG.mp3"
ride = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/Ride.mp3"
lead = "/Volumes/Untitled 1/sonic pi files/samples/Crypto/Lead.mp3"


stopBoolPad = false
stopBoolPiano = false

stopBoolBassV = true
stopBoolRimV = true

stopBoolBassC = false
stopBoolRimC = false

stopBoolKick = false

stopBoolRide = false
stopBoolBGVox = false
stopBoolLead = false

live_loop :pad do
  if stopBoolPad
    stop
  end
  sample pad, "pad", amp: 2
  sleep 16
end


live_loop :bassV do
  sync :pad
  if stopBoolBassV
    stop
  end
  sample bassV, "bassV", amp: 1
end

live_loop :bassC do
  sync :pad
  if stopBoolBassC
    stop
  end
  sample bassC, "bassC", amp: 1
end


live_loop :rimV do
  sync :pad
  if stopBoolRimV
    stop
  end
  sample rimV, "rimV", amp: 1
end

live_loop :rimC do
  sync :pad
  if stopBoolRimC
    stop
  end
  sample rimC, "rimC", amp: 1.5
end

live_loop :kick do
  sync :pad
  if stopBoolKick
    stop
  end
  sample kick, "kick", amp: 1.5
end

live_loop :ride do
  sync :pad
  if stopBoolRide
    stop
  end
  sample ride, "ride", amp: 1
end

live_loop :voxBG do
  sync :pad
  if stopBoolBGVox
    stop
  end
  sample voxBG, "voxBG", amp: 1.5
end


live_loop :lead do
  sync :pad
  if stopBoolLead
    stop
  end
  sample lead, "lead", amp: 2
end


live_loop :midi_piano do
  note, velocity = sync "/midi:mpk_mini_3:1/note_on"
  synth :piano, note: note, amp:2, release: 5
end


