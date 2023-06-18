//
//  AudioPlayer.swift
//  Restart
//
//  Created by Ramu Ramasamy on 18.06.23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    //    this bundle path returns the full path name of the resource
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
