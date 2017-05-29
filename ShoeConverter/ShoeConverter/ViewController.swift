//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Tejaswini Shastry on 5/28/17.
//  Copyright © 2017 Tejaswini Shastry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UILabel!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var mensShoeEntered: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertButtonPressed(_ sender: UIButton) {
        let sizeFromTextField = mensShoeEntered.text
        let numberFromTextField = Int(sizeFromTextField!)
        mensShoeEntered.resignFirstResponder()
        if numberFromTextField != nil {
            var integerFromTextField = numberFromTextField!
            let conversionConstant = 30
            integerFromTextField += conversionConstant
            mensConvertedShoeSizeLabel.isHidden = false
            mensConvertedShoeSizeLabel.text = "\(integerFromTextField) In European Shoe Size"
        }
        else {
            NSLog("You should enter a number");
        }
    }
}

