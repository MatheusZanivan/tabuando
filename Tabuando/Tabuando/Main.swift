//
//  ViewController.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 18/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Variáveis da tela
    private weak var backgroundImage: UIImageView?
//    private weak var titleImage: UIImageView?
    private weak var tableView: UITableView?
    
    
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
        
//        let titleImage = UIImageView()
        let backgroundImage = UIImageView()
        let tableView = UITableView()
        
//        self.title = "Tabuando"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.backgroundColor = .clear
        
        self.view.addSubview(backgroundImage)
//        self.view.addSubview(titleImage)
        self.view.addSubview(tableView)
        
        
        
        view.sendSubviewToBack(backgroundImage)
        
//        view.sendSubviewToBack(tableView)
        
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
//        titleImage.translatesAutoresizingMaskIntoConstraints = false
        
//        titleImage.image = UIImage(named: "Tabuando.png")
        backgroundImage.image = UIImage(named: "Fundo")
        backgroundImage.isUserInteractionEnabled = true
        backgroundImage.isMultipleTouchEnabled = true
        
//        titleImage.image = UIImage(named: "Tabuando.png")
        
        tableView.register(customCell.nib(), forCellReuseIdentifier: customCell.identifier)
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableHeaderView = tituloDaCell(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100))
        self.navigationController?.navigationBar.isHidden = true
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
//            titleImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            titleImage.leftAnchor.constraint(equalTo: view.leftAnchor),
//            titleImage.heightAnchor.constraint(equalToConstant: 47),
//            titleImage.widthAnchor.constraint(equalToConstant: 224),
            
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            
            
        ])
        
        self.backgroundImage = backgroundImage
        self.tableView = tableView
//        self.titleImage = titleImage
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCell.identifier, for: indexPath) as! FaseTableViewCell
        
        cell.backgroundColor = .clear
        cell.faseBotao?.nomeFase?.text = fases[indexPath.row].nivel
        cell.faseBotao?.tag = indexPath.row
        cell.faseBotao?.addTarget(self, action: #selector(teste(_:)), for: .touchUpInside)
        
        return cell
    }
    
    @objc func teste(_ sender: FaseBotao) {
        print("O botão no index \(sender.tag) foi apertado")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            sender.alpha = 1.0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        var rodrigo = "OSAKFKVSDJG"
//        return rodrigo
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
  
}

