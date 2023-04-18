//
//  GameLavelViewController.swift
//  mathEquation
//
//  Created by R90 on 06/01/17.
//


import UIKit

class GameLavelViewController: UIViewController {

    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var meduimButton: UIButton!
    @IBOutlet weak var easyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
   
    @IBAction func easyButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let easyLevalViewController: EasyLevalViewController = storyBoard.instantiateViewController(withIdentifier: "EasyLevalViewController") as! EasyLevalViewController
        self.navigationController?.pushViewController(easyLevalViewController, animated: true)
    }
    
    
    @IBAction func meduimButtonAction(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let meduimLevalViewController: MeduimLevalViewController = storyBoard.instantiateViewController(withIdentifier: "MeduimLevalViewController") as! MeduimLevalViewController
        self.navigationController?.pushViewController(meduimLevalViewController, animated: true)
    }
    
    @IBAction func hardButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let hardLevalViewController: HardLevalViewController = storyBoard.instantiateViewController(withIdentifier: "HardLevalViewController") as! HardLevalViewController
        self.navigationController?.pushViewController(hardLevalViewController, animated: true)
    }
    
}
