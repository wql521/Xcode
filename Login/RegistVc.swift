//
//  RegistVcViewController.swift
//  Login
//
//  Created by 王钱龙 on 2022/12/8.
//

import UIKit

class RegistVc: UIViewController {

    @IBOutlet weak var clickloginbutton: UIButton!
    @IBOutlet weak var passwduser: UITextField!
    @IBOutlet weak var usertext: UILabel!
    @IBOutlet weak var username: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "success",
           let destinaton = segue.destination as? searchuser {
            destinaton.text = "我的公主,你终于来了"
           }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier == "success"){
            let userName = username.text ?? ""
            if userName.isEmpty {
                usertext.text = "请输入用户名"
                return false
            }
            
            let passWduser = passwduser.text ?? ""
            if passWduser.isEmpty {
                usertext.text = "请输入密码"
                return false
            }
        }else {
            usertext.text = nil
        }
        return true
        
        
    }
    

    
    @IBAction func clickloginbutton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
