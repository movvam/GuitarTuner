//
//  ViewController.swift
//  GuitarTuner
//
//  Created by Manikanth Movva on 12/31/17.
//  Copyright © 2017 Manikanth Movva. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func prepareAudio(filename: String){
        do{
            let audioPath = Bundle.main.path(forResource: filename, ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }catch{
            print("error")
        }
    }

    @IBAction func playELow(_ sender: Any) {
        
        prepareAudio(filename: "E2")
        
        player.numberOfLoops = -1
        player.play()
        if player.currentTime == 1.8 {
            player.currentTime = 0
        }
        print(player.duration)
    }
    
    @IBAction func playA(_ sender: Any) {
    }
    
    @IBAction func playD(_ sender: Any) {
    }
    
    @IBAction func playG(_ sender: Any) {
    }
    
    @IBAction func playB(_ sender: Any) {
    }
    
    @IBAction func playEHigh(_ sender: Any) {
    }
}

