//
//  WebViewController.swift
//  TableViewApp
//
//  Created by MF839-008 on 5/20/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var WebView: UIWebView!
    var book:BookVO?;
    
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let tempBook=book {
            if let urlStr=tempBook.url {
                let urlRequest=NSURLRequest (URL: NSURL(string:urlStr)!);
                WebView.loadRequest(urlRequest);
            }
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        //super.webViewDidStartLoad (webView);
        print ("webViewDidStartLoad");
        ActivityIndicator.startAnimating();
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        ActivityIndicator.stopAnimating();
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
