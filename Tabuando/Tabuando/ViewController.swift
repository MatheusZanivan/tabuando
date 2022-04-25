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
        return 100
    }
  
}

