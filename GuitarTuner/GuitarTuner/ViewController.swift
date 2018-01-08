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
    var lowStringSound: String = "E2"

    @IBOutlet weak var topString: UIButton!
    
    @IBOutlet weak var dropSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topString.setTitle("E", for: .normal)
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
        prepareAudio(filename: lowStringSound)
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func playA(_ sender: Any) {
        
        prepareAudio(filename: "A2")
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func playD(_ sender: Any) {
        
        prepareAudio(filename: "D3")
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func playG(_ sender: Any) {
        
        prepareAudio(filename: "G3")
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func playB(_ sender: Any) {
        
        prepareAudio(filename: "B3")
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func playEHigh(_ sender: Any) {
        
        prepareAudio(filename: "E4")
        
        // audio loops an infinite number of times
        player.numberOfLoops = -1
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
    }
    
    @IBAction func dropD(_ sender: Any) {
        if dropSwitch.isOn{
            topString.setTitle("D", for: .normal)
            lowStringSound = "D2"
        }else if !dropSwitch.isOn{
            topString.setTitle("E", for: .normal)
            lowStringSound = "E2"
        }
    }
    
}

