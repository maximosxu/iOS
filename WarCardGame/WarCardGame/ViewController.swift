//
//  ViewController.swift
//  WarCardGame
//
//  Created by Max Xu on 7/7/20.
//  Copyright © 2020 Maximos Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var playerScoreValue = 0
    var cpuScoreValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTap(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            // Player Wins
            playerScoreValue += 1
            playerScore.text = String(playerScoreValue)
            // let session = URLSession.shared
            // let url = URL(string: "https://maximosxu.com")!
            //let task = session.dataTask(with: url) { data, response, error in
            //    print(data)
            //    print(response)
            //    print(error)
            //}
        }
        else if leftNumber < rightNumber {
            // CPU Wins
            cpuScoreValue += 1
            cpuScore.text = String(cpuScoreValue)
        }
        else {
            // Tie
        }
        
    }
}

