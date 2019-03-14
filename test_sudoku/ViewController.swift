//
//  ViewController.swift
//  test_sudoku
//
//  Created by ry on 3/1/19.
//  Copyright © 2019 ry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var theme: UIImageView!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var buttonErase: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn20: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    @IBOutlet weak var btn24: UIButton!
    @IBOutlet weak var btn25: UIButton!
    @IBOutlet weak var btn26: UIButton!
    @IBOutlet weak var btn27: UIButton!
    @IBOutlet weak var btn28: UIButton!
    @IBOutlet weak var btn29: UIButton!
    @IBOutlet weak var btn30: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn33: UIButton!
    @IBOutlet weak var btn34: UIButton!
    @IBOutlet weak var btn35: UIButton!
    @IBOutlet weak var btn36: UIButton!
    @IBOutlet weak var btn37: UIButton!
    @IBOutlet weak var btn38: UIButton!
    @IBOutlet weak var btn39: UIButton!
    @IBOutlet weak var btn40: UIButton!
    @IBOutlet weak var btn41: UIButton!
    @IBOutlet weak var btn42: UIButton!
    @IBOutlet weak var btn43: UIButton!
    @IBOutlet weak var btn44: UIButton!
    @IBOutlet weak var btn45: UIButton!
    @IBOutlet weak var btn46: UIButton!
    @IBOutlet weak var btn47: UIButton!
    @IBOutlet weak var btn48: UIButton!
    @IBOutlet weak var btn49: UIButton!
    @IBOutlet weak var btn50: UIButton!
    @IBOutlet weak var btn51: UIButton!
    @IBOutlet weak var btn52: UIButton!
    @IBOutlet weak var btn53: UIButton!
    @IBOutlet weak var btn54: UIButton!
    @IBOutlet weak var btn55: UIButton!
    @IBOutlet weak var btn56: UIButton!
    @IBOutlet weak var btn57: UIButton!
    @IBOutlet weak var btn58: UIButton!
    @IBOutlet weak var btn59: UIButton!
    @IBOutlet weak var btn60: UIButton!
    @IBOutlet weak var btn61: UIButton!
    @IBOutlet weak var btn62: UIButton!
    @IBOutlet weak var btn63: UIButton!
    @IBOutlet weak var btn64: UIButton!
    @IBOutlet weak var btn65: UIButton!
    @IBOutlet weak var btn66: UIButton!
    @IBOutlet weak var btn67: UIButton!
    @IBOutlet weak var btn68: UIButton!
    @IBOutlet weak var btn69: UIButton!
    @IBOutlet weak var btn70: UIButton!
    @IBOutlet weak var btn71: UIButton!
    @IBOutlet weak var btn72: UIButton!
    @IBOutlet weak var btn73: UIButton!
    @IBOutlet weak var btn74: UIButton!
    @IBOutlet weak var btn75: UIButton!
    @IBOutlet weak var btn76: UIButton!
    @IBOutlet weak var btn77: UIButton!
    @IBOutlet weak var btn78: UIButton!
    @IBOutlet weak var btn79: UIButton!
    @IBOutlet weak var btn80: UIButton!
    @IBOutlet weak var btn81: UIButton!
    @IBOutlet var mainMenu: UIButton!
    var timer = Timer()
    var currTime = 0
    var currNum:String = " "
    var finalTheme:String = ""
    var finalDifficult:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let images : UIImage = UIImage(named:finalTheme)!
        theme.image = images
        popBoard()
        gameTime()
    }
    func gameTime() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] (_) in
            guard let strongSelf = self else { return }
            strongSelf.currTime += 1
            strongSelf.time.text = String(strongSelf.currTime)
        })
    }
    func validMove(send: UIButton) {
        var temp:Int
        var ho:Int
        for count in 1...9 {
            temp = count
            while temp < 73 {
                ho = temp + 9
                while ho < 82 {
                    if let button = self.view.viewWithTag(temp) as? UIButton {
                        if let btn = self.view.viewWithTag(ho) as? UIButton {
                            for i in 1...9 {
                                if ((button.currentTitle == btn.currentTitle) && (button.currentTitle == String(i) )) {
                                    button.setTitleColor(.red, for: .normal)
                                    btn.setTitleColor(.red, for: .normal)
                                }
                            }
                        }
                    }
                    ho = ho + 9
                }
                temp = temp + 9
            }
        }
        for i in [1, 10, 19, 28, 37, 46, 55, 64, 73] {
            for zz in 1...8 {
                for qq in 0...8 {
                    if let buttonzz = self.view.viewWithTag(i+qq) as? UIButton {
                        if let btnss = self.view.viewWithTag(i+zz) as? UIButton {
                            for pp in 1...9 {
                                if ((buttonzz.currentTitle == btnss.currentTitle) && (buttonzz.currentTitle == String(pp))
                                    && (buttonzz.tag != btnss.tag )) {
                                    buttonzz.setTitleColor(.red, for: .normal)
                                    btnss.setTitleColor(.red, for: .normal)
                                }
                            }
                        }
                    }
                }
            }
        }
        for z in [1, 2, 3, 10, 11, 12, 19, 20, 21] {
            for k in [1, 2, 3, 10, 11, 12, 19, 20, 21] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [4, 5, 6, 13, 14, 15, 22, 23, 24] {
            for k in [4, 5, 6, 13, 14, 15, 22, 23, 24] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [7, 8, 9, 16, 17, 18, 25, 26, 27] {
            for k in [7, 8, 9, 16, 17, 18, 25, 26, 27] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [28, 29, 30, 37, 38, 39, 46, 47, 48] {
            for k in [28, 29, 30, 37, 38, 39, 46, 47, 48] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [31, 32, 33, 40, 41, 42, 49, 50, 51] {
            for k in [31, 32, 33, 40, 41, 42, 49, 50, 51] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [34, 35, 36, 43, 44, 45, 52, 53, 54] {
            for k in [34, 35, 36, 43, 44, 45, 52, 53, 54] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [55, 56, 57, 64, 65, 66, 73, 74, 75] {
            for k in [55, 56, 57, 64, 65, 66, 73, 74, 75] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [58, 59, 60, 67, 68, 69, 76, 77, 78] {
            for k in [58, 59, 60, 67, 68, 69, 76, 77, 78] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        for z in [61, 62, 63, 70, 71, 72, 79, 80, 81] {
            for k in [61, 62, 63, 70, 71, 72, 79, 80, 81] {
                if let but =  self.view.viewWithTag(z) as? UIButton {
                    if let buts = self.view.viewWithTag(k) as? UIButton {
                        if ((but.currentTitle == buts.currentTitle) && (but.tag != buts.tag)){
                            buts.setTitleColor(.red, for: .normal)
                            but.setTitleColor(.red, for: .normal)
                        }
                    }
                }
            }
        }
        
    }
    @IBAction func didSelectButton(selectedButton: UIButton?)  {
        let btns = [button1, button2, button3, button4, button5, button6, button7, button8, button9, buttonErase]
        for button in btns {
            if button == selectedButton {
                button?.isSelected = true
            } else {
                button?.isSelected = false
            }
        }
        switch selectedButton {
        case button1:
            currNum = "1"
            break
        case button2:
            currNum = "2"
            break
        case button3:
            currNum = "3"
            break
        case button4:
            currNum = "4"
            break
        case button5:
            currNum = "5"
            break
        case button6:
            currNum = "6"
            break
        case button7:
            currNum = "7"
            break
        case button8:
            currNum = "8"
            break
        case button9:
            currNum = "9"
            break
        case buttonErase:
            currNum = " "
            break
        default:
            currNum = " "
            break
        }
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.setTitle(currNum, for: [])
        for cc in 1...81 {
            if let button = self.view.viewWithTag(cc) as? UIButton{
              button.setTitleColor(.black, for: .normal)
            }
        }
        validMove(send: sender)
        popBoard()
    }
    func popBoard(){
        var count = 0
        let easySpots = [2, 6, 7, 9, 10, 11, 14, 17, 21, 22, 23, 24, 25, 26, 28, 30, 32, 34, 35, 36, 38, 40, 43, 44, 47, 48, 50, 54, 55, 56, 59, 62, 64, 65, 68, 69, 73, 76, 78, 79, 80, 81]
        let easyNum = [4, 7, 1, 8, 5, 3, 9, 7, 7, 1, 6, 3, 9, 4, 4, 6, 8, 7, 5, 1, 1, 4, 6, 9, 5, 3, 1, 2, 9, 6, 3, 1, 3, 7, 5, 1, 1, 2, 9, 3, 6, 7]
        let medSpots = [3, 7, 9, 10, 15, 17, 22, 24, 25, 29, 32, 33, 36, 37, 38, 44, 45, 47, 48, 50, 58, 60, 64, 66, 68, 76, 80, 81]
        let medNum = [7, 3, 2, 2, 5, 1, 8, 1, 4, 1, 9, 6, 8, 7, 6, 4, 9, 2, 8, 3, 1, 3, 8, 1, 6, 7, 6, 3]
        let hardSpots = [1, 3, 5, 8, 12, 16, 17, 21, 22, 23, 28, 29, 32, 40, 44, 45, 46, 49, 54, 55, 60, 62, 69, 72, 74, 81]
        let hardNum = [9, 4, 5, 2, 7, 8, 1, 3, 2, 8, 3, 7, 9, 8, 3, 6, 5, 7, 2, 1, 3, 4, 6, 5, 4, 9]
        
        switch finalDifficult {
        case "Easy":
            for i in easySpots {
                if let but =  self.view.viewWithTag(i) as? UIButton {
                    but.setTitle(String(easyNum[count]), for: [])
                }
                count = count + 1
            }
            break
        case "Medium":
            for p in medSpots {
                if let but =  self.view.viewWithTag(p) as? UIButton {
                    but.setTitle(String(medNum[count]), for: [])
                }
                count = count + 1
            }
            break
        case "Hard":
            for q in hardSpots {
                if let but =  self.view.viewWithTag(q) as? UIButton {
                    but.setTitle(String(hardNum[count]), for: [])
                }
                count = count + 1
            }
            break
        default:
            for i in easySpots {
                if let but =  self.view.viewWithTag(i) as? UIButton {
                    but.setTitle(String(easyNum[count]), for: [])
                }
                count = count + 1
            }
            break
        }
    }
    @IBAction func menu(_ sender: UIButton) {
        performSegue(withIdentifier: "menu", sender: self)
    }
}

