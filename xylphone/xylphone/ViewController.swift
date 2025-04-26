//
//  ViewController.swift
//  xylophone
//
//  Created by Personal on 24/04/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func ckeyPressed(_ sender: UIButton) {
        print("C Pressed")
        playSound(soundName: "C")
    }
   
    
    
    @IBAction func dkeyPressed(_ sender: UIButton) {
        playSound(soundName: "D")
    }
    
    
    @IBAction func ekeyPressed(_ sender: UIButton) {
        playSound(soundName: "E")
    }
    
    
    
    @IBAction func fkeyPressed(_ sender: UIButton) {
        playSound(soundName: "F")
    }
    
    
    
    @IBAction func gkeyPressed(_ sender: UIButton) {
        playSound(soundName: "G")
    }
    
    
    @IBAction func akeyPressed(_ sender: UIButton) {
        playSound(soundName: "A")
    }
    
    
    @IBAction func bkeyPressed(_ sender: UIButton) {
        playSound(soundName: "B")
    }
    
    
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

