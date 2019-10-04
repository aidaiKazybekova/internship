//
//  RegistrationViewController.swift
//  Historykg
//
//  Created by Декс on 10/3/19.
//  Copyright © 2019 Dex. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var RegistrationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            RegistrationButton.backgroundColor =    Colors.greem
        RegistrationButton.setTitleColor(.white, for: .normal)
            
        RegistrationButton.layer.cornerRadius = 20
    }
    
    @IBAction func RegistrationButton(_ sender: UIButton) {
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "CategoryID") as! CategoryViewController
    let nvc = UINavigationController(rootViewController: vc)
    nvc.modalPresentationStyle = .fullScreen
          self.present(nvc, animated: true, completion: nil)
    }

}
