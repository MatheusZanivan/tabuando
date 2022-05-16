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
        Tabuada2(multiplicando: 2 , multiplicador: 2, produto: 8, answer: "False", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 3, produto: 5, answer: "False", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 4, produto: 8, answer: "True", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 5, produto: 10, answer: "True", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 6, produto: 12, answer: "True", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 7, produto: 21, answer: "False", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 8, produto: 12, answer: "False", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 9, produto: 19, answer: "False", fase: "2x?"),
        Tabuada2(multiplicando: 2 , multiplicador: 10, produto: 20, answer: "True", fase: "2x?")
    ]
    static let quizQuatro : [Tabuada2] = [
        Tabuada2(multiplicando: 4 , multiplicador: 1, produto: 4, answer: "True", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 2, produto: 4, answer: "False", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 3, produto: 7, answer: "False", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 4, produto: 16, answer: "True", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 5, produto: 20, answer: "True", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 6, produto: 26, answer: "False", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 7, produto: 32, answer: "False", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 8, produto: 30, answer: "False", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 9, produto: 36, answer: "True", fase: "4x?"),
        Tabuada2(multiplicando: 4 , multiplicador: 10, produto: 40, answer: "True", fase: "4x?")
    ]
    static let quizSeis : [Tabuada2] = [
        Tabuada2(multiplicando: 6 , multiplicador: 1, produto: 6, answer: "True", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 2, produto: 8, answer: "False", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 3, produto: 18, answer: "True", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 4, produto: 10, answer: "False", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 5, produto: 30, answer: "True", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 6, produto: 36, answer: "True", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 7, produto: 43, answer: "False", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 8, produto: 46, answer: "False", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 9, produto: 54, answer: "True", fase: "6x?"),
        Tabuada2(multiplicando: 6 , multiplicador: 10, produto: 60, answer: "True", fase: "6x?")
    ]
    static let quizOito : [Tabuada2] = [
        Tabuada2(multiplicando: 8 , multiplicador: 1, produto: 8, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 2, produto: 16, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 3, produto: 25, answer: "False", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 4, produto: 32, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 5, produto: 40, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 6, produto: 46, answer: "False", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 7, produto: 56, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 8, produto: 65, answer: "False", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 9, produto: 72, answer: "True", fase: "8x?"),
        Tabuada2(multiplicando: 8 , multiplicador: 10, produto: 20, answer: "False", fase: "8x?")
    ]
    
    static let quizDesafio1 : [Tabuada2] = [
        Tabuada2(multiplicando: 2 , multiplicador: 3, produto: 6, answer: "True", fase: ""),
        Tabuada2(multiplicando: 3 , multiplicador: 1, produto: 1, answer: "False", fase: ""),
        Tabuada2(multiplicando: 2 , multiplicador: 3, produto: 5, answer: "False", fase: ""),
        Tabuada2(multiplicando: 3 , multiplicador: 7, produto: 21, answer: "True", fase: ""),
        Tabuada2(multiplicando: 2 , multiplicador: 9, produto: 18, answer: "True", fase: ""),
        Tabuada2(multiplicando: 1 , multiplicador: 6, produto: 6, answer: "True", fase: ""),
        Tabuada2(multiplicando: 3 , multiplicador: 8, produto: 26, answer: "False", fase: ""),
        Tabuada2(multiplicando: 2 , multiplicador: 5, produto: 11, answer: "False", fase: ""),
        Tabuada2(multiplicando: 1 , multiplicador: 9, produto: 9, answer: "True", fase: ""),
        Tabuada2(multiplicando: 3 , multiplicador: 10, produto: 30, answer: "True", fase: "")
    ]
    
    static let quizDesafio3 : [Tabuada2] = [
        Tabuada2(multiplicando: 7 , multiplicador: 6, produto: 42, answer: "True", fase: ""),
        Tabuada2(multiplicando: 9 , multiplicador: 9, produto: 82, answer: "False", fase: ""),
        Tabuada2(multiplicando: 7 , multiplicador: 4, produto: 28, answer: "False", fase: ""),
        Tabuada2(multiplicando: 8 , multiplicador: 7, produto: 56, answer: "True", fase: ""),
        Tabuada2(multiplicando: 8 , multiplicador: 2, produto: 16, answer: "True", fase: ""),
        Tabuada2(multiplicando: 9 , multiplicador: 6, produto: 54, answer: "True", fase: ""),
        Tabuada2(multiplicando: 7 , multiplicador: 8, produto: 32, answer: "False", fase: ""),
        Tabuada2(multiplicando: 9 , multiplicador: 5, produto: 40, answer: "False", fase: ""),
        Tabuada2(multiplicando: 8 , multiplicador: 8, produto: 64, answer: "True", fase: ""),
        Tabuada2(multiplicando: 7 , multiplicador: 5, produto: 35, answer: "True", fase: "")
    ]
}
