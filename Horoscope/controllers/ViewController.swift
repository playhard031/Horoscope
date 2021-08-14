//
//  ViewController.swift
//  Horoscope
//
//  Created by Андрей Сергеевич on 03.08.2021.
//


import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var youLabel: UILabel!
    @IBOutlet weak var bcImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideNavigationBar()
        youLabel.text = "Близнецы"
        bcImage.loadGif(name: "star")
        picker.setValue(UIColor.white, forKeyPath: "textColor")
    }

    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: StartViewController = segue.destination as! StartViewController
        destinationVC.text = youLabel.text!
    }
    @IBAction func pickerAction(_ sender: UIDatePicker) {
        let componenets = Calendar.current.dateComponents([.month, .day], from: sender.date)
        if let day = componenets.day, let month = componenets.month{
            if day >= 21 && month == 3{
                youLabel.text = "Овен"
            }
            if day <= 20 && month == 4{
                youLabel.text = "Овен"
            }
            if day >= 21 && month == 4{
                youLabel.text = "Телец"
            }
            if day <= 20 && month == 5{
                youLabel.text = "Телец"
            }
            if day >= 21 && month == 5{
                youLabel.text = "Близнецы"
            }
            if day <= 21 && month == 6{
                youLabel.text = "Близнецы"
            }
            if day >= 22 && month == 6{
                youLabel.text = "Рак"
            }
            if day <= 22 && month == 7{
                youLabel.text = "Рак"
            }
            if day >= 23 && month == 7{
                youLabel.text = "Лев"
            }
            if day <= 22 && month == 8{
                youLabel.text = "Лев"
            }
            if day >= 23 && month == 8{
                youLabel.text = "Дева"
            }
            if day <= 22 && month == 9{
                youLabel.text = "Дева"
            }
            if day >= 23 && month == 9{
                youLabel.text = "Весы"
            }
            if day <= 22 && month == 10{
                youLabel.text = "Весы"
            }
            if day >= 23 && month == 10{
                youLabel.text = "Скорпион"
            }
            if day <= 21 && month == 11{
                youLabel.text = "Скорпион"
            }
            if day >= 22 && month == 11{
                youLabel.text = "Стрелец"
            }
            if day <= 20 && month == 12{
                youLabel.text = "Стрелец"
            }
            if day >= 21 && month == 12{
                youLabel.text = "Козерог"
            }
            if day <= 19 && month == 1{
                youLabel.text = "Козерог"
            }
            if day >= 20 && month == 1{
                youLabel.text = "Водолей"
            }
            if day <= 19 && month == 2{
                youLabel.text = "Водолец"
            }
            if day >= 20 && month == 2{
                youLabel.text = "Рыбы"
            }
            if day <= 20 && month == 3{
                youLabel.text = "Рыбы"
            }
        }
    }
        
}
    

extension UIViewController {
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    func showNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
    
    
    

