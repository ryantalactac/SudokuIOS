//
//  SettingViewController.swift
//  test_sudoku
//
//  Created by ry on 3/12/19.
//  Copyright © 2019 ry. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet var easyBtn: UIButton!
    @IBOutlet var mediumBtn: UIButton!
    @IBOutlet var hardBtn: UIButton!
    @IBOutlet var classicBtn: UIButton!
    @IBOutlet var artBtn: UIButton!
    @IBOutlet var taylorBtn: UIButton!
    @IBOutlet var startBtn: UIButton!
    var theme = "classic.png"
    var difficult = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        easyBtn?.isSelected = true
        classicBtn?.isSelected = true
    }
    @IBAction func difficultySelect (sender: UIButton?) {
        let btns = [easyBtn, mediumBtn, hardBtn]
        for buttonzz in btns {
            if buttonzz == sender {
                difficult = sender?.currentTitle ?? ""
                buttonzz?.isSelected = true
            } else {
                buttonzz?.isSelected = false
            }
        }
    }
    @IBAction func themeSelect (sendery: UIButton?) { 
        
        switch sendery {
        case classicBtn:
            theme = "classic.png"
            break
        case artBtn:
            theme = "art_1080.jpg"
            break
        case taylorBtn:
            theme = "tswiftSudoku.jpg"
            break
        default:
            break
        }
    }
    @IBAction func start(_ sender: UIButton) {
        performSegue(withIdentifier: "game", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.finalTheme = self.theme
        vc.finalDifficult = self.difficult
    }
}
