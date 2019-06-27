//
// ViewController.swift
// ChainKitDemo
//
// Create by wooseng with company's MackBook Pro on 2019/6/26.
// Copyright © 2019 上海稍息网络科技有限公司. All rights reserved.
//


import UIKit
import ChainKit

fileprivate let KEY_CONTROL_TARGETS = UnsafeRawPointer(bitPattern: "key.control.targets.ViewController".hashValue)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        btn.addTo(view).config({
            $0.backgroundColor = UIColor.yellow
        }).addEvent(.touchUpInside, { (_) in
            print("点击事件：touchUpInside")
        }).addEvent(.touchUpOutside, { (_) in
            print("点击事件：touchDown")
        }).makeConstraints({
            $0.left.equalTo(20)
            $0.right.equalTo(-20)
            $0.top.equalTo(100)
            $0.height.equalTo(50)
        })
    }
    
    private let btn = UIButton()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}

