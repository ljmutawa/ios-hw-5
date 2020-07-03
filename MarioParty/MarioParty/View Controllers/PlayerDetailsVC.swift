//
//  PlayerDetailsVC.swift
//  MarioParty
//
//  Created by laila al mutawa on 7/4/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

var selectedPlayer = Player(name: "Mario")

class PlayerDetailsVC: UIViewController {
    
    var playerSound: AVAudioPlayer?

    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var playerBg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDetailView()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playerSoundButton(_ sender: Any) {
        playSounds(soundName: selectedPlayer.soundNames())
    }
    
    @IBAction func randomStarsButton(_ sender: Any) {
        let stars = ["Star1", "Star2", "Star3", "Star4", "Star5"]
        starsImageView.image = UIImage(named: stars.randomElement()!)
    }
    
    func setDetailView() {
        playerNameLabel.text = selectedPlayer.name
        imageView.image = UIImage(named: selectedPlayer.name)
        playerBg.image = UIImage(named: selectedPlayer.bgName())
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
