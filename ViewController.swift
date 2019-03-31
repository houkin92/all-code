//
//  ViewController.swift
//  纯代码写
//
//  Created by 方瑾 on 2019/3/29.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let headView :UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false//如果加的是相对约数的话，就得加上这个属性，不让他自己去设置
        return view
    }()
    
    let mainTableView:UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .green
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    let avatarImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 30
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "性感")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let nameLable:UILabel = {
        let lable = UILabel()
        lable.font = UIFont.boldSystemFont(ofSize: 20)
        lable.text = "冬瓜"
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    let codeCell = "CodeCell"
    let xibCell = "NibCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(CodeTableViewCell.self, forCellReuseIdentifier: codeCell)
        mainTableView.register(UINib.init(nibName: "XibTableViewCell", bundle: nil), forCellReuseIdentifier: xibCell)
       
        setupView()
        
    }
    func setupView() {
        //设置头部视图
        self.view.addSubview(headView)
        headView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 88).isActive = true
        //isActive有效的
        headView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        //设置头部视图上的子视图
        headView.addSubview(avatarImageView)
        headView.addSubview(nameLable)
        
        avatarImageView.centerYAnchor.constraint(equalTo: headView.centerYAnchor).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: headView.leadingAnchor, constant: 20.0).isActive = true
        avatarImageView.heightAnchor.constraint(equalTo: headView.heightAnchor, multiplier: 0.6).isActive = true
        avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor).isActive = true
        
        nameLable.topAnchor.constraint(equalTo: avatarImageView.topAnchor).isActive = true
        nameLable.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20).isActive = true
        nameLable.trailingAnchor.constraint(equalTo: headView.trailingAnchor, constant: -20).isActive = true
        nameLable.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        self.view.addSubview(mainTableView)
        mainTableView.topAnchor.constraint(equalTo: headView.bottomAnchor).isActive = true
        mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainTableView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: codeCell, for: indexPath) as! CodeTableViewCell
            cell.setupCell()
            cell.selectionStyle = .none
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: xibCell, for: indexPath) as! XibTableViewCell
            cell.selectionStyle = .none
            return cell
        }
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextPage = SeondViewController()
//        self.present(nextPage,animated: true,completion: nil)//presentn的方式
        self.navigationController?.pushViewController(nextPage, animated: true)
        
        
    }
}
