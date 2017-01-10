//
//  ViewController.swift
//  SampleTextView
//
//  Created by Hitesh on 1/10/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var txtDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //To open keyboard automatically
        txtDescription.becomeFirstResponder()
        txtDescription.returnKeyType = .Done
        
        txtDescription.textContainerInset = UIEdgeInsetsMake(10,15,10,15); // top, left, bottom, right
    }
    
    //MARK: UITextView Delegate
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            //For dismiss keyboard
            textView.resignFirstResponder()
        }
        
        return true
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        print("Begin edit in text view")
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        print("End editing in text view")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

