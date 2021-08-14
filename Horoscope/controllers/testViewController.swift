//
//  testViewController.swift
//  Horoscope
//
//  Created by Андрей Сергеевич on 04.08.2021.
//

import UIKit

class testViewController: UIViewController {
    
    @IBOutlet weak var picker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    



    @IBAction func pickerAction(_ sender: UIDatePicker) {
        
      if  sender.isEqual(self.picker){
        }
        let componenets = Calendar.current.dateComponents([.month, .day], from: sender.date)
        if let day = componenets.day, let month = componenets.month{
            if day >= 21 && month == 3{
                print("Овен")
            }
            if day <= 20 && month == 4{
                print("Овен")
            }
            if day >= 21 && month == 4{
                print("Телец")
            }
            if day <= 20 && month == 5{
                print("Телец")
            }
            if day >= 21 && month == 5{
                print("Близнецы")
            }
            if day <= 21 && month == 6{
                print("Близнецы")
            }
            if day >= 22 && month == 6{
                print("Рак")
            }
            if day <= 22 && month == 7{
                print("Рак")
            }
            if day >= 23 && month == 7{
                print("Лев")
            }
            if day <= 22 && month == 8{
                print("Лев")
            }
            if day >= 23 && month == 8{
                print("Дева")
            }
            if day <= 22 && month == 9{
                print("Дева")
            }
            if day >= 23 && month == 9{
                print("Весы")
            }
            if day <= 22 && month == 10{
                print("Весы")
            }
            if day >= 23 && month == 10{
                print("Скорпион")
            }
            if day <= 21 && month == 11{
                print("Скорпион")
            }
            if day >= 22 && month == 11{
                print("Стрелец")
            }
            if day <= 20 && month == 12{
                print("Стрелец")
            }
            if day >= 21 && month == 12{
                print("Козерог")
            }
            if day <= 19 && month == 1{
                print("Козерог")
            }
            if day >= 20 && month == 1{
                print("Водолей")
            }
            if day <= 19 && month == 2{
                print("Водолей")
            }
            if day >= 20 && month == 2{
                print("Рыбы")
            }
            if day <= 20 && month == 3{
                print("Рыбы")
            }
        }
    }
}
