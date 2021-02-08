//
//  SecondViewController.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!

    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        resultLabel.text = name
        
    }

}
