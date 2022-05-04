//
//  Tabuada2.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 28/04/22.
//

import Foundation

struct Tabuada2{
    let multiplicando: Int
    let multiplicador: Int
    let produto: Int
    let answer: String
    let fase: String
}

class Game2 {
    static let quizDois : [Tabuada2] = [
        Tabuada2(multiplicando: 2 , multiplicador: 1, produto: 2, answer: "True", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 2, produto: 8, answer: "False", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 3, produto: 5, answer: "False", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 4, produto: 8, answer: "True", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 5, produto: 10, answer: "True", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 6, produto: 12, answer: "True", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 7, produto: 21, answer: "False", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 8, produto: 12, answer: "False", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 9, produto: 19, answer: "True", fase: "2x1"),
        Tabuada2(multiplicando: 2 , multiplicador: 10, produto: 20, answer: "True", fase: "2x1")
    ]
}
