//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    @IBOutlet weak var playerImage: UIImageView!

    var playerSound: AVAudioPlayer?
    var bgMusic: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        playMusic()
        // Do any additional setup after loading the view.
        //nextButton.isUserInteractionEnabled = false
    }

    func playSounds(soundName: String) {
        let path = Bundle.main.path(forResource: soundName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            playerSound = try AVAudioPlayer(contentsOf: url)
            playerSound?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    func playMusic() {
        let path = Bundle.main.path(forResource: "BG.wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            bgMusic = try AVAudioPlayer(contentsOf: url)
            bgMusic?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    @IBAction func randomPlayer(_ sender: Any) {
        let currentPlayer = players.randomElement()!
        playerImage.image = UIImage(named: currentPlayer.name)
        playSounds(soundName: currentPlayer.soundNames())
        selectedPlayer = currentPlayer
    }
    
}
