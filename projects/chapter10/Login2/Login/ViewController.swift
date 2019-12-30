//
//  ViewController.swift
//  Login
//
//  Created by Mike Jung on 2016. 5. 17..
//  Copyright © 2016년 Mike Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiIdInput: UITextField!
    @IBOutlet var uiPasswordInput: UITextField!
    
    @IBOutlet var uiResult: UILabel!
    
    let id = "test1"
    let password = "123456"
    
    @IBAction func loginClicked(sender: AnyObject) {
        let userId = uiIdInput.text!
        let userPassword = uiPasswordInput.text!
        
        let alert = UIAlertController(title:"알림", message:"아이디 : \(userId), 비밀번호 : \(userPassword)", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "확인", style: .Default) {
            (alert:UIAlertAction!) -> Void in NSLog("알림 대화상자의 확인 버튼이 눌렸습니다.")
            
            if (userId == self.id) && (userPassword == self.password) {
                self.uiResult.text = "로그인 성공"
            } else {
                self.uiResult.text = "로그인 실패"
            }
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

