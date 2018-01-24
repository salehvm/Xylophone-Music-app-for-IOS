//
//  ViewController.swift
//  Xylophone
//
//  Created by Saleh Majidov.
//  Copyright © 2018 
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArry = ["note1","note2","note3","note4","note5","note6","note7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
 
        selectedSoundFileName = soundArry[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
      
    }
    
    func playSound(){
        let soundUrl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
  

}

