//
//  SelectViewController.swift
//  代理人傳資料練習
//
//  Created by 翁燮羽 on 2021/7/10.
//

import UIKit

//設定規則
protocol SelectViewControllerDelegate {
    func selectViewController(controller:SelectViewController,didselect animal:Animal)
}

class SelectViewController: UIViewController {
    
    var delegate:SelectViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectAnimal(_ sender: UIButton) {
        switch sender.currentTitle {
        case "dog":
            delegate?.selectViewController(controller: self, didselect: .dog)
        case "cat":
            delegate?.selectViewController(controller: self, didselect: .cat)
        case "pig":
            delegate?.selectViewController(controller: self, didselect: .pig)
        default:
            break
        }
        navigationController?.popViewController(animated: true)
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
