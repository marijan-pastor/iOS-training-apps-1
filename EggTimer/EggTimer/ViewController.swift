//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 30, "Medium": 42, "Hard": 72]
    var countdownTimer = Timer()
    var audioPlayer: AVAudioPlayer?
    
    @IBAction func hardnesSelected(_ sender: UIButton) {
        
        countdownTimer.invalidate()
        let hardness = sender.currentTitle!
        progressBar.progress = 0.0
        countdownLabel.text = hardness
        startCountdown(seconds: eggTimes[hardness]!)
        
        func startCountdown(seconds: Int) {
            var remainingSeconds = seconds
            var currentValue = 1
    
            countdownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                if remainingSeconds > 0 {
                    remainingSeconds -= 1
                    
                    let percentageBar = Float(currentValue) / Float(self.eggTimes[hardness]!)
                    self.progressBar.progress = percentageBar
                    print(percentageBar)
                    currentValue += 1
                } else {
                    timer.invalidate()
                    self.countdownLabel.text = "Done!"
                    playSound(soundName: "alarm_sound")
                }
            }
            RunLoop.current.run(until: Date(timeIntervalSinceNow: TimeInterval(seconds)))
        }
        
        func playSound(soundName: String) {
            let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3")
            audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer?.play()
        }
        
    }
    
    @IBOutlet weak var countdownLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
}
