//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 임다혜 on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "끝나기 전에는 끝난게 아니다.", name: "키케로"),
        Quote(contents: "치킨은 옳다.", name: "배달의 민족"),
        Quote(contents: "배고프다.", name: "임다혜")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(3))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

