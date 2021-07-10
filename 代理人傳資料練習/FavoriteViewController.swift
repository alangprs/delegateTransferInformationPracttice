//
//  FavoriteViewController.swift
//  代理人傳資料練習
//
//  Created by 翁燮羽 on 2021/7/10.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBSegueAction func show(_ coder: NSCoder) -> SelectViewController? {
        let selectViewController = SelectViewController(coder: coder)
        selectViewController?.delegate = self
        return selectViewController
    }
    
}

extension FavoriteViewController:SelectViewControllerDelegate{
    func selectViewController(controller: SelectViewController, didselect animal: Animal) {
        image.image = UIImage(named: animal.rawValue)
    }
}
