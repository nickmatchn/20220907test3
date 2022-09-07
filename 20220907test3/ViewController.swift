//
//  ViewController.swift
//  20220907test3
//
//  Created by 森川柏旭 on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameinput: UITextField!
    @IBOutlet weak var sexinput: UITextField!
    
    @IBOutlet weak var answertext: UILabel!
    @IBOutlet weak var startimage: UIImageView!
    
    var today =  ["大吉","中吉","小吉","兇"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerbutton(_ sender: Any) {
        if nameinput != nil,sexinput != nil{
            var index = 0
            let today = ["大吉","中吉","小吉","末吉","兇","大兇"]
            var todayList = ["1","2","3","4","5","6"]
            
//            var today = Int.random(in: 0...3)
            print(today)
            answertext.text = String(today[Int.random(in: 0...today.count-1)])
//            startimage.view = ["start"]
            if answertext.text == "大吉"{
                print("大吉")
                
                startimage.image = UIImage(named:"大吉")
      
                
            }else if answertext.text == "中吉"{
                print("中吉")
                startimage.image = UIImage(named:"中吉")
            }else if answertext.text == "末吉"{
                print("末吉")
                startimage.image = UIImage(named:"末吉")
            }else if answertext.text == "小吉"{
                print("小吉")
                startimage.image = UIImage(named:"小吉")
            }else if answertext.text == "兇"{
                print("兇")
                startimage.image = UIImage(named:"兇")
            }else{
                print("大兇")
                startimage.image = UIImage(named:"大兇")
            }
        }
    }
    

}

