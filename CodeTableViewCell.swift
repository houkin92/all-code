//
//  CodeTableViewCell.swift
//  纯代码写
//
//  Created by 方瑾 on 2019/3/29.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class CodeTableViewCell: UITableViewCell  {
    let displayLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    let inputTextField : UITextField = {
       let textField = UITextField()
        textField.layer.borderColor = UIColor.brown.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .yellow
        return textField
    }()
    let goButton : UIButton = {
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Go", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupCell() {
        self.contentView.addSubview(goButton)
        goButton.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20.0).isActive = true
        goButton.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        goButton.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        goButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10.0).isActive = true
        
        self.contentView.addSubview(displayLabel)
        displayLabel.topAnchor.constraint(equalTo:self.contentView.topAnchor,constant:20.0).isActive = true
        displayLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10.0) .isActive = true
        displayLabel.trailingAnchor.constraint(equalTo: goButton.trailingAnchor, constant: -50).isActive = true
        displayLabel.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        
        self.contentView.addSubview(inputTextField)
        inputTextField.topAnchor.constraint(equalTo: displayLabel.bottomAnchor, constant: 10.0).isActive = true
        inputTextField.widthAnchor.constraint(equalTo: displayLabel.widthAnchor).isActive = true
        inputTextField.heightAnchor.constraint(equalTo:displayLabel.heightAnchor).isActive = true
        inputTextField.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,constant: 10.0).isActive = true
        
        
    }
    

}
