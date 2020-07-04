//
//  ViewController.swift
//  Swift5seni
//
//  Created by watar on 2020/07/04.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func action(_ sender: Any) {
        
        count += 1
        
        label.text = String(count)
        
        if(count == 10)
        {
//            performSegue(withIdentifier: "next", sender: nil)
//            let nextVC = segue.destination as! NextViewController
            let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            
            nextVC.count2 = count
            
            navigationController?.pushViewController(nextVC, animated: true)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.count2 = count
    }

}

