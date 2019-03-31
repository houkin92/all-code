//
//  SeondViewController.swift
//  纯代码写
//
//  Created by 方瑾 on 2019/3/29.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SeondViewController: UIViewController {
    let goButton : UIButton = {
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Go", for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        self.view.addSubview(goButton)
        goButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100.0).isActive = true
        goButton.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        goButton.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        goButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10.0).isActive = true
        goButton.addTarget(self, action: #selector(backHome), for: .touchUpInside)
    }
    
    @objc func backHome(_ sender:UIButton) {
//        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }

}
