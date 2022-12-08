//
//  ViewController.swift
//  numbuer
//
//  Created by 王钱龙 on 2022/12/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var intNbumber : Int = 0
    var doubleNumber : Double = 0
    var step : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updatUI()
    }

    @IBAction func clickbutton(_ sender: UIButton) {
        intNbumber += step
        doubleNumber += Double(step)
        if (intNbumber >= 10 || intNbumber <= 0){
            step *= -1
        }
        
        updatUI()
        
    }
    
    func updatUI(){
        label.text = "Int:\(intNbumber)\nDouble:\(doubleNumber)"
        let title : String = "+1"
        if (step > 0) {
            button.setTitle(title, for: .normal)
        }else{
            button.setTitle("\(step)", for: .normal)
        }
        writ()
    }
    
    func writ(){
        label1.numberOfLines = 0
        label1.lineBreakMode = .byCharWrapping
        if (intNbumber == 0){
            label1.text = "你好,我的公主殿下👑"
        }
        if intNbumber == 1 {
            label1.text = "你不用什么事都自己扛，你是我的公主殿下啊。"
        }else if (intNbumber == 2) {
            label1.text = "赌上这把剑的荣耀，我会守护你到最后。"
        }else if (intNbumber == 3) {
            label1.text = "公主得有双清高的眼睛，\n再来是一颗天真又脆弱的心，\n再加一点孤注一掷的冒险精神就更好。"
        }else if (intNbumber == 4) {
            label1.text = "公主就是要穿裙子。"
        }else if (intNbumber == 5) {
            label1.text = "你选我吧，我绝不背叛你。"
        }else if (intNbumber == 6) {
            label1.text = "你负责担心，我负责搞定一切。"
        }else if (intNbumber == 7) {
            label1.text = "我所贪恋的人间烟火不偏不倚正好是你。"
        }else if (intNbumber == 8){
            label1.text = "我的剑在这里，\n在我倒下前我和它将保护您，\n我死后我的灵魂也会守护在您的领土上，\n我的忠诚就是我的铠甲，\n为您流尽我的血液，\n我的剑放在这里，\n我将牢记谦卑、荣誉、牺牲\n英勇、怜悯、精神、诚实、公正的美德。"
        }else if (intNbumber == 9){
            label1.text = "我还在努力，你先不要喜欢其他人。"
        }else if (intNbumber == 10){
            label1.text = "我想用我的全部，换取一条通往你心里的路。"
        }
    }
    
}

