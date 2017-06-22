//
//  MyViewController.swift
//  MyApp06
//
//  Created by user on 2017/6/21.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var myswitch:UISwitch!
    
    @IBOutlet weak var mystepper:UIStepper!
    
    @IBOutlet weak var mybtn: UIButton!
    
//    private var isOn:Bool?
    
    
    
    
    @IBAction func clickSwitch(_ sender: Any) {
        print(myswitch.isOn)
    }
    
    @IBAction func clickStepper(_ sender: Any) {
        print(mystepper.value)
    }
    
    @IBAction func clickButton(_ sender: Any) {
            mybtn.isSelected = !mybtn.isSelected
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mystepper.maximumValue = 10
        mystepper.minimumValue = 0
        mystepper.value = 5
        //一次加0.5
        mystepper.stepValue = 0.5
        
        mybtn.setImage(UIImage(named:"on"), for: UIControlState.normal)
        
          mybtn.setImage(UIImage(named:"off"), for: UIControlState.selected)
//        initView()
    }
    
//    private func initView(){
//        
//        mystepper.maximumValue = 10
//        mystepper.minimumValue = 0
//        mystepper.value = 5
//        //一次加0.5
//        mystepper.stepValue = 0.5
//        
//        mybtn.setImage(UIImage(named:"on"), for: UIControlState.normal)
//        
//        mybtn.setImage(UIImage(named:"of"), for: UIControlState.selected)
//        
//        
//    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
