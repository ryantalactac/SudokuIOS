//
//  StartViewController.swift
//  test_sudoku
//
//  Created by ry on 3/12/19.
//  Copyright © 2019 ry. All rights reserved.
//
import UIKit

class StartViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func start(_ sender: UIButton) {
        performSegue(withIdentifier: "settings", sender: self)
    }
}
