//
//  ViewController.swift
//  Reconcile
//
//  Created by JS on 12/10/14.
//  Copyright (c) 2014 JS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func link1Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    @IBAction func link2Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    @IBAction func link3Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    @IBAction func link4Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    @IBAction func link5Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    @IBAction func link6Tapped(sender: AnyObject) {
        self.performSegueWithIdentifier("PresentWebView", sender: sender)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "PresentWebView") {
            let webviewVC = segue.destinationViewController as WebViewController
            
            println(sender?.tag)
            if sender?.tag == 1001 {
                webviewVC.linkText = "http://www.crr-thai.org/mobile1.html"
            } else if sender?.tag == 1002 {
                webviewVC.linkText = "http://www.crr-thai.org/mobile2.html"
            } else if sender?.tag == 1003 {
                webviewVC.linkText =  "http://www.crr-thai.org/mobile3.html"
            } else if sender?.tag == 1004 {
                webviewVC.linkText = "http://www.crr-thai.org/mobile4.html"
            } else if sender?.tag == 1005 {
                webviewVC.linkText = "http://www.crr-thai.org/mobile.html"
            } else if sender?.tag == 1006 {
                webviewVC.linkText = "http://www.crr-thai.org/mobileinfo.html"
            }
            
        }
    }
    
}

