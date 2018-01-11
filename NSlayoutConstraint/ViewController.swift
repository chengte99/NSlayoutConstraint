//
//  ViewController.swift
//  NSlayoutConstraint
//
//  Created by KevinLin on 2017/12/7.
//  Copyright © 2017年 KevinLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var containView1: UIView!
    var containView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        addContainView1()
    }
    
    fileprivate func addButton1() {
        let button1 = UIButton()
        button1.backgroundColor = UIColor.orange
        button1.setTitle("@1x", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        containView1.addSubview(button1)
        
        let centerX = NSLayoutConstraint(item: button1, attribute: .centerX, relatedBy: .equal, toItem: self.containView1, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let top = NSLayoutConstraint(item: button1, attribute: .top, relatedBy: .equal, toItem: self.containView1, attribute: .top, multiplier: 1.0, constant: 20.0)
        let width = NSLayoutConstraint(item: button1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60.0)
        let height = NSLayoutConstraint(item: button1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        NSLayoutConstraint.activate([centerX, top, width, height])
        
        let button2 = UIButton()
        button2.backgroundColor = UIColor.orange
        button2.setTitle("@2x", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        containView1.addSubview(button2)
        
        NSLayoutConstraint(item: button2, attribute: .centerX, relatedBy: .equal, toItem: button1, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .top, relatedBy: .equal, toItem: button1, attribute: .bottom, multiplier: 1.0, constant: 20.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .width, relatedBy: .equal, toItem: button1, attribute: .width, multiplier: 2.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .height, relatedBy: .equal, toItem: button1, attribute: .height, multiplier: 2.0, constant: 0.0).isActive = true
    }
    
    func addContainView1(){
        containView1 = UIView()
        containView1.backgroundColor = UIColor.black
        containView1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containView1)
        
        let top = NSLayoutConstraint(item: self.containView1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 50)
        let leading = NSLayoutConstraint(item: self.containView1, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 50)
        let trailing = NSLayoutConstraint(item: self.containView1, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -50)
        let height = NSLayoutConstraint(item: self.containView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150)
        self.view.addConstraints([top, leading, trailing, height])
        
        addButton1()
    }

}

