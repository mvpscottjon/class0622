//
//  ViewController.swift
//  MyApp07
//
//  Created by user on 2017/6/21.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var btnOK:UIButton?
    
 //********** 程式加button 不用拉的
    //程式上去 元件還沒上去時
    override func viewDidLoad() {
        super.viewDidLoad()
            btnOK = UIButton(type: UIButtonType.system)
    //btn 屬性
        //單位用點數來算  約1/2.8倍像素
        btnOK?.frame = CGRect(x:0, y:20, width: 40, height: 40)
        btnOK?.setTitle("OK", for: UIControlState.normal)
        
        //Float:0-1 alpha =>透明度
        btnOK?.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        
        
        
        
        
       
        //將btn addSubView 進去 view裡面去
        //UIButton is a UIView
        self.view.addSubview(btnOK!)
//       等同於 view.addSubview(btnOK!)
        
    //event
        //set/add  set會蓋掉前面的 add為附加上去
        //target誰會處理  什麼方法
        //touchupinside 按下去後在原地起來
        btnOK?.addTarget(self, action: #selector(clickBtnOK1), for: UIControlEvents.touchUpInside)
        
        btnOK?.addTarget(self, action: #selector(clickBtnOK2), for: UIControlEvents.touchUpInside)
        
        //位置
//        view.
        
     //imgview可以觸發事件嗎
        
        var img = UIImageView()
        
//        img.add... 真的沒有
        
        
        
        //裝置
        switch traitCollection.userInterfaceIdiom {
        case .pad:
            print("pad")
        case .phone:
            print("phone")
        case .tv:
            print("tv")
        case.carPlay:
            print("print")
        default:
            break
        }
        
        
        
        
    }
    //直的橫的
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        switch UIDevice.current.orientation{
        case .faceUp:
            print("faceup")
        case .faceDown:
            print("facedown")
        case .landscapeLeft:
            print("Home at right")
        case .landscapeRight:
            print("Home at left")
            //直的
        case .portrait:
            print("nomail")
        case .portraitUpsideDown:
            print("upsidedown")
        default:
            break
        }
        
        print("size => w = \(size.width), h = \(size.height)")
        
        
    }
    
    
    //方法
    
    @objc private func clickBtnOK1(sender: UIButton //or Any
        ) {
        print("click1")
    }
    @objc private func clickBtnOK2(sender: UIButton //or Any
        ) {
        print("click2")
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

