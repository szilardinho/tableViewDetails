//
//  ViewController.swift
//  tableViewDetails
//
//  Created by Szi Gabor on 4/1/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var nusyntaxNews = [NusyntaxDataModel]()
    
    override func viewDidLoad()
    {
        let news1 = NusyntaxDataModel(imageURL: "http://static.spin.com/files/2017/03/drake-more-life-1489328823.jpg", articleURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p4p0f592How\" frameborder=\"0\" allowfullscreen></iframe>", articleTitle: "Drake Video")
        
        //let URLTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p4p0f592How\" frameborder=\"0\" allowfullscreen></iframe>"
        
        nusyntaxNews.append(news1)
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: IndexPath) as? NewsCell {
            
            
            
             updateUserInterface(dataModel: NusyntaxDataModel)
            
        } else {
        
        
        return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nusyntaxNews.count
    }

}

