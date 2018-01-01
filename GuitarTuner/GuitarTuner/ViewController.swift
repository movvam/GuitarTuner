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
        
        do{
            let audioPath = Bundle.main.path(forResource: "A2", ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }catch{
            print("error")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
