//
//  ViewController.swift
//  Login
//
//  Created by Mike Jung on 2016. 5. 17..
//  Copyright © 2016년 Mike Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginClicked(sender: AnyObject) {
        let alert = UIAlertController(title:"알림", message:"로그인 버튼이 눌렸습니다.", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "확인", style: .Default) {
            (alert:UIAlertAction!) -> Void in NSLog("알림 대화상자의 확인 버튼이 눌렸습니다.")
        }
        alert.addAction(okAction)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

