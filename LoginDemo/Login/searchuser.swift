//
//  searchuser.swift
//  Login
//
//  Created by 王钱龙 on 2022/12/8.
//

import UIKit

class searchuser: UIViewController {
   
    
    @IBOutlet weak var textlogin: UILabel!
    var text : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textlogin.text = text

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
