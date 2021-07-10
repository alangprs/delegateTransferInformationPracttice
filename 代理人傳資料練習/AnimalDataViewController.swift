//
//  AnimalDataViewController.swift
//  代理人傳資料練習
//
//  Created by 翁燮羽 on 2021/7/10.
//

import UIKit

class AnimalDataViewController: UIViewController {
    @IBOutlet weak var animalLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func show02(_ coder: NSCoder) -> SelectViewController? {
        let selectViewController = SelectViewController(coder: coder)
        selectViewController?.delegate = self
        return selectViewController
    }


}
extension AnimalDataViewController:SelectViewControllerDelegate{
    func selectViewController(controller: SelectViewController, didselect animal: Animal) {
        switch animal {
        case .cat:
            animalLable.text = "貓咪很可愛"
        case .dog:
            animalLable.text = "維尼不喜歡小狗"
        case .pig:
            animalLable.text = "每天睡覺跟小豬一樣"
        default:
            break
        }
        navigationController?.popViewController(animated: true)
    }
    
    
}
