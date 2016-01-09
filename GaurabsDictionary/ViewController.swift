//
//  ViewController.swift
//  GaurabsDictionary
//
//  Created by Gaurab Luitel on 1/5/16.
//  Copyright © 2016 Gaurab Luitel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        theWordToSearchFor.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var theWordToSearchFor: UITextField!
    
    //The code for presenting the dictionary is from http://iosdevelopertips.com/core-services/ios-5-look-up-definitions-using-dictionary-service.html
    func textFieldDidEndEditing(textField: UITextField) {
        if(UIReferenceLibraryViewController.dictionaryHasDefinitionForTerm(textField.text!)) {
            let rlvc: UIReferenceLibraryViewController  = UIReferenceLibraryViewController(term: textField.text!)
            presentViewController(rlvc, animated: true, completion: nil)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //The code for hiding the keyboard is from http://stackoverflow.com/questions/1456120/hiding-the-keyboard-when-losing-focus-on-a-uitextview
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if(theWordToSearchFor.isFirstResponder()) {
            theWordToSearchFor.resignFirstResponder()
        }
    }
}