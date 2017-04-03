//
//  NewsDetailViewController.swift
//  tableViewDetails
//
//  Created by Szi Gabor on 4/1/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit
import WebKit

class NewsDetailViewController: UIViewController, WKUIDelegate  {


      var webView: WKWebView!
    
    
    var newsData : NusyntaxDataModel!

    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleLabel = UILabel(frame: CGRect(x: view.frame.midX, y: view.frame.midY, width: 100, height: 100))
        view.addSubview(titleLabel)
        titleLabel.text = newsData.articleTitle
        webView.loadHTMLString(newsData.articleURL, baseURL: nil)
        
    }


}
