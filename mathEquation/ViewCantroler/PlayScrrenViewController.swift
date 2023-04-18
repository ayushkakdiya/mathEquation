//
//  PlayScrrenViewController.swift
//  mathEquation
//
//  Created by R90 on 06/01/17.
//

import UIKit

class PlayScrrenViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PlayButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let gameLavelViewController: GameLavelViewController = storyBoard.instantiateViewController(withIdentifier: "GameLavelViewController") as! GameLavelViewController
        self.navigationController?.pushViewController(gameLavelViewController, animated: true)
        
    }
}


