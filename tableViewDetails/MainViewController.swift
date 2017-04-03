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
        let news1 = NusyntaxDataModel(imageURL: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/17757456_1499318626766522_6619791612085524008_n.png?oh=27035d99206b61c662a74cf7ba3d1a35&oe=599AF109",
                                      articleURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_lNF3_30lUE\" frameborder=\"0\" allowfullscreen></iframe>",
                                      articleTitle: "How small is an atom?")
        
        let news2 = NusyntaxDataModel(imageURL: "https://financialtribune.com/sites/default/files/field/image/december/11_d_cancer_300.jpg",
                                      articleURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DHyUYg8X31c\" frameborder=\"0\" allowfullscreen></iframe>",
                                      articleTitle: "The Truth about AI")
        
        let news3 = NusyntaxDataModel(imageURL: "https://i.ytimg.com/vi/iSe_R87kF6U/hqdefault.jpg",
                                      articleURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ijFm6DxNVyI\" frameborder=\"0\" allowfullscreen></iframe>" ,
                                      articleTitle: "The Most Destructive Entity in the Universe: The False Vacuum")
        
        let news4 = NusyntaxDataModel(imageURL:"http://static3.businessinsider.com/image/5531f3ed6bb3f7d80b8b4568/people-arent-ready-for-the-imminent-rise-of-genetic-engineering.jpg"
 ,                                     articleURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jAhjPd4uNFY\" frameborder=\"0\" allowfullscreen></iframe>",
                                      articleTitle: "The Future of Genetic Engineering")
        
        let news5 = NusyntaxDataModel(imageURL: "http://uploads1.yugioh.com/card_images/2674/detail/4366.jpg?1385126762",
                                      articleURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QOCaacO8wus\" frameborder=\"0\" allowfullscreen></iframe>",
                                      articleTitle: "What is life? What is Death?")

        
        
        
        
        nusyntaxNews.append(news1)
        nusyntaxNews.append(news2)
        nusyntaxNews.append(news3)
        nusyntaxNews.append(news4)
        nusyntaxNews.append(news5)
        
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: IndexPath) as? NewsCell {
            
            let nusyntaxNew = nusyntaxNews[IndexPath.row]
            
             cell.updateUserInterface(dataModel: nusyntaxNew)
            
            return cell
            
        } else {
        
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nusyntaxNews.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nusyntaxNew = nusyntaxNews[indexPath.row]
        
        performSegue(withIdentifier: "NewsDetailVC", sender: nusyntaxNew)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? NewsDetailViewController {
            
            if let news = sender as? NusyntaxDataModel {
                destinationViewController.newsData = news
                
            }
        }
    }
    
}

