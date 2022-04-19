//
//  ViewController.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 18/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //interface builder
    @IBOutlet weak var tabelaMain : UITableView!
    let customCell = FaseTableViewCell()
    
    struct CelulaDasFases{
        let nivel: String
    }
    struct Tabuada{
        let multiplicador: Int
        let multiplicando: Int
        let resposta: Int
        let repostaErrada1: Int
        let repostaErrada2: Int
        let repostaErrada3: Int
    }
    
    let tabuadaDoUm : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoDois : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoTres : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoQuatro : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoCinco : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoSeis : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoSete : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoOito : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    let tabuadaDoNove : [Tabuada] = [
        Tabuada(multiplicador: 1, multiplicando: 1, resposta: 1, repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 2, resposta: 2,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 3, resposta: 3,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 4, resposta: 4,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 5, resposta: 5,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 6, resposta: 6,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 7, resposta: 7,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 8, resposta: 8,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 9, resposta: 9,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3),
        Tabuada(multiplicador: 1, multiplicando: 10, resposta: 10,repostaErrada1: 11,repostaErrada2: 11,repostaErrada3: 3)
    ]
    
    let fases : [CelulaDasFases] = [
        CelulaDasFases(nivel:"1x?"),
        CelulaDasFases(nivel:"2x?"),
        CelulaDasFases(nivel:"3x?"),
        CelulaDasFases(nivel:"Desafio"),
        CelulaDasFases(nivel:"4x?"),
        CelulaDasFases(nivel:"5x?"),
        CelulaDasFases(nivel:"6x?"),
        CelulaDasFases(nivel:"Desafio"),
        CelulaDasFases(nivel:"7x?"),
        CelulaDasFases(nivel:"8x?"),
        CelulaDasFases(nivel:"9x?"),
        CelulaDasFases(nivel:"Desafio")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tabelaMain.register(customCell.nib(), forCellReuseIdentifier: customCell.identifier)
        tabelaMain.separatorStyle = .none        
        tabelaMain.dataSource = self
        tabelaMain.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fases.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelaMain.dequeueReusableCell(withIdentifier: customCell.identifier, for: indexPath) as! FaseTableViewCell
        
        cell.nomeFase.text = fases[indexPath.row].nivel
        cell.pontuacao.text = "\u{1F512}"
                                
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tabelaMain.deselectRow(at: indexPath, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

