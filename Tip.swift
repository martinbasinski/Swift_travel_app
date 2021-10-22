//
//  Tip.swift
//  Travel_app
//
//  Created by Marcin Basinski on 12/10/2021.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
