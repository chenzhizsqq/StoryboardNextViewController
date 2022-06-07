//
//  ViewController.swift
//  StoryboardNextViewController
//
//  Created by chenzhizs on 2022/06/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkInBtn: UIButton!
    
    
    //从下往上弹出
    @IBAction func checkInBtnClick(_ sender: UIButton) {
        
        print("从下往上弹出")
        
        
        
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.present(nextViewController, animated: true, completion: nil)
        
    }
    
    //新的页面
    @IBAction func checkInBtnClick2(_ sender: UIButton) {
        print("checkInBtnClick2")
        
        
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        nextViewController.modalPresentationStyle = .fullScreen // ★この行追加
        self.present(nextViewController, animated: true, completion: nil)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

