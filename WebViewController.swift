//
//  WebViewController.swift
//  Reconcile
//
//  Created by JS on 12/10/14.
//  Copyright (c) 2014 JS. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    var linkText = ""
    
    @IBOutlet weak var webView: UIWebView!
    
    func webViewDidStartLoad(webView: UIWebView!){
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView!){
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    func webView(webView: UIWebView!, didFailLoadWithError error: NSError!){
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        webView.scalesPageToFit = true
        
        let url = NSURL(string: linkText)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        
        layoutButton()
        
        let swipeGestureBack = UISwipeGestureRecognizer(target: self, action: "swipeBack")
        swipeGestureBack.direction = UISwipeGestureRecognizerDirection.Right
        webView.addGestureRecognizer(swipeGestureBack)
        
        let swipeGestureForward = UISwipeGestureRecognizer(target: self, action: "swipeForward")
        swipeGestureForward.direction = UISwipeGestureRecognizerDirection.Left
        webView.addGestureRecognizer(swipeGestureForward)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func layoutButton() {
        let buttonRect = CGRectMake(10, 10, 50.0, 50.0)
    }
    
    func swipeBack() {
        println("swipe")
        webView.goBack()
        self.popoverPresentationController
    }
    
    func swipeForward() {
        println("forward")
        webView.goForward()
    }

    @IBAction func stopPressed(sender: AnyObject) {
        webView.stopLoading()
    }
    @IBAction func backButtonPressed(sender: AnyObject) {
        webView.goBack()
    }
    @IBAction func refreshButtonPressed(sender: AnyObject) {
        webView.reload()
    }
    @IBAction func forwardButtonPressed(sender: AnyObject) {
        webView.goForward()
    }
    @IBAction func homeButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
