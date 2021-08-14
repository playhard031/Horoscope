//
//  StartViewController.swift
//  Horoscope
//
//  Created by Андрей Сергеевич on 04.08.2021.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var bcImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var chooseSegment: UISegmentedControl!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var upButton: UIButton!
    var counter = 0
    var activityController : UIActivityViewController? = nil
    var text: String = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        bcImage.loadGif(name: "star")
        textLabel.text = text
        network()
    }
    

    
@IBAction func aAButton(_ sender: UIButton) {
    counter += 1
        switch counter {
        case 1:
            textView.font = textView.font?.withSize(22)
        case 2:
            textView.font = textView.font?.withSize(20)
            counter = 0
        default:
            break
        }
}

    
    @IBAction func shareButton(_ sender: Any) {
       let activityController = UIActivityViewController(activityItems: [self.textView.text as Any, textLabel.text as Any], applicationActivities: nil)
        self.present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func infoButton(_ sender: UIButton) {
    }
    
    @IBAction func menuButton(_ sender: UIButton) {
    }
    
    private func network(){
        let urlString = "https://ohmanda.com/api/horoscope/gemini/"
        
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if error != nil{
                    print("error")
                    return
                }
                guard let data = data else {return}
                let someString = String(data: data, encoding: .utf8)
                print(someString ?? "some")
            }
        } .resume()
        
        
    }
}
