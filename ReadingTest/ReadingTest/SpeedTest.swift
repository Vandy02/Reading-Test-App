//
//  ViewController.swift
//  ReadingTest
//
//  Created by Vandana Kerketta on 7/7/22.
//

import UIKit

class SpeedTest: UIViewController {
    let paragraph = "Rosters were reconstructed by enlisting former NHLers, players from the KHL and other leagues in Europe and from the college ranks and major-junior level. There is enough of a mixture of guys who are a bit past their prime and others who are relatively unknown or waiting to be discovered to make the outcome more inscrutable than usual."
    
    var userList: [String] = []
    var scores: [Int] = []
    var time = 10
    var userName = "Guest"
    
    var timer = Timer()
    
  
    @IBOutlet weak var textdisp: UILabel!
    @IBOutlet weak var timerDisp: UILabel!
    @IBOutlet weak var uname: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var wpm: UITextField!
    @IBOutlet weak var msgBox: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addUser(_ sender: Any) {
        if let name = name.text {
            if name == "" {
                msgBox.text = "enter a name "
            }
            else {
                userList.append(name)
            }
        }
    }
    
    
    @IBAction func begin(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SpeedTest.action), userInfo: nil, repeats: true)
    }
    @objc func action(){
        
        time = 15
        let wpm = Int(String(wpm.text!))
        timerDisp.text = String(time)
        time -= 1
        let str1 = paragraph.components(separatedBy: " ")
        let c = paragraph.count
        let s = c / Int(wpm!)
            if let random = str1.randomElement() {
                
                    textdisp.text = random
                }
            }
            
            
    }
    

