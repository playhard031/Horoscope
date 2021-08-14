//
//  InfoViewController.swift
//  Horoscope
//
//  Created by Андрей Сергеевич on 05.08.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var bcImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

      bcImage.loadGif(name: "star")
    }
    
}
