//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
            UIView.animate(withDuration: 0.2, animations: {
                sender.alpha = 0.5 // Set the desired opacity value
            }) { _ in
                UIView.animate(withDuration: 0.2) {
                    sender.alpha = 1.0 // Set the original opacity value
                }
            }
        
        playSound(soundName: sender.currentTitle!)
        
    }
    
    func playSound(soundName: String) {
        let soundURL = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer?.play()
    }
    

}

