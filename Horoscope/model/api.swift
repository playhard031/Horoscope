//
//  api.swift
//  Horoscope
//
//  Created by Андрей Сергеевич on 12.08.2021.
//

import Foundation

struct Api: Decodable {
    var sign: String?
    var date: String?
    var horoscope : String?
}


