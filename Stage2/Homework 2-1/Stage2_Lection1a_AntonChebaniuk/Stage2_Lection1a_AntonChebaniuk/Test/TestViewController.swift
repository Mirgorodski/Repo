//
//  TestViewController.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 14.01.2021.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

//        let testView = TestView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        testView.backgroundColor = .lightGray
//        view.addSubview(testView)
        
        greenView.layer.cornerRadius = greenView.frame.width / 2
        greenView.layer.shadowColor = UIColor.black.cgColor
        greenView.layer.shadowOffset = CGSize(width: -10, height: 10)
        greenView.layer.shadowRadius = 20
        greenView.layer.shadowOpacity = 0.5
    }
    
    

}
