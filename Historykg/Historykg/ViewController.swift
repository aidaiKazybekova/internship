//
//  ViewController.swift
//  Historykg
//
//  Created by Декс on 10/2/19.
//  Copyright © 2019 Dex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EnterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EnterButton.backgroundColor = Colors.greem
        EnterButton.setTitleColor(.white, for: .normal)
        EnterButton.layer.cornerRadius = 20

    }
    
    @IBAction func EnterButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CategoryID") as! CategoryViewController
        let nvc = UINavigationController(rootViewController: vc)
        nvc.modalPresentationStyle = .fullScreen
        self.present(nvc, animated: true, completion: nil)
        
    }
    @IBAction func RegistrationButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegistrationID") as! RegistrationViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
        
    
    }
    @IBAction func DescriptionButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DescriptionID") as! DescritionViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    
    }
    
}

