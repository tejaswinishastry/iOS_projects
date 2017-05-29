//
//  ViewController.swift
//  lionsAndTigers
//
//  Created by Tejaswini Shastry on 5/28/17.
//  Copyright © 2017 Tejaswini Shastry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var tigerList:[Tiger] = []
    var previous_tiger:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myTiger = Tiger(age: 2, name:"Tigger", breed:"Bengal", image:UIImage(named: "BengalTiger.jpg")!)
        let secondTiger = Tiger(age: 5, name: "Indo Indo", breed: "Indochinese", image:UIImage(named: "IndochineseTiger.jpg")!)
        let thirdTiger = Tiger(age: 3, name: "Mal Mal", breed: "Malayan", image:UIImage(named: "MalayanTiger.jpg")!)
        let fourthTiger = Tiger(age: 7, name: "Sibe Sib", breed: "Siberian", image:UIImage(named: "SiberianTiger.jpg")!)
    
        tigerList += [myTiger, secondTiger, thirdTiger, fourthTiger]
        
        NSLog("I have '\(tigerList.count)' tigers")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        previous_tiger = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonItemPressed(_ sender: Any) {
        
        var randomTiger:Int = Int(arc4random_uniform(UInt32(tigerList.count)))
        
//        myImageView.image = tigerList[randomTiger].image
//        nameLabel.text = tigerList[randomTiger].name
//        ageLabel.text = "\(tigerList[randomTiger].age)"
//        breedLabel.text = tigerList[randomTiger].breed
        
        repeat {
            randomTiger = Int(arc4random_uniform(UInt32(tigerList.count)))
        } while (previous_tiger == randomTiger)
        
        let tiger:Tiger = tigerList[randomTiger]
        previous_tiger = randomTiger
        
        UIView.transition(
            with: self.view,
            duration: 2,
            options: UIViewAnimationOptions.transitionCrossDissolve,
            animations: {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
        }, completion: {
            (finished:Bool) -> () in
        })

    }
}

