//
//  SecondViewController.swift
//  ToDoListV2
//
//  Created by Mary Grace Lucas on 11/11/15.
//  Copyright © 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    @IBAction func addButtonPressed(sender: UIButton) {
        
        toDoList.append(textField.text!)
        
        textField.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
       
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    
}

