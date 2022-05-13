//
//  ViewController.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 18/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//     Variáveis da tela
    private weak var backgroundImage: UIImageView?
//    private weak var titleImage: UIImageView?
    private weak var tableView: UITableView?
    
    var score : Int?

    let customCell = FaseTableViewCell()
    
    struct CelulaDasFases{
        let nivel: String
//        let score : Int
        var isLocked : Bool = true
    }
    
//    var scoreFases: [(fase1: Int, fase2: Int, fase3: Int, desafio1: Int, fase4: Int, fase5: Int,fase6: Int, desafio2: Int, fase7: Int, fase8: Int, fase9: Int,desafio3: Int)] = [(-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1)]
    
    
    
    var scores: [(modo1: Int, modo2: Int)] = []
    
    let fases : [CelulaDasFases] = [
        CelulaDasFases(nivel:"1x?",isLocked: false),
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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let list = Score().getAllScores()
        
        print("=====================================================\nLista de pontuação:")

        for score in list {
            print("fase: \(score.fase)\tpontuação: \(score.pontuacao)\tdata: \(score.data ?? Date.distantPast)")
        }

        print("=====================================================")
        
        
        self.tableView?.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scores.append((modo1: 10, modo2: 0))
        print(scores)
        
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
        tableView.canCancelContentTouches = true
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
        
        let score = Score().getLatestScoreByFase(fase: indexPath.row + 1)
        
        print(score)
        
        cell.backgroundColor = .clear
        cell.faseBotao?.nomeFase?.text = fases[indexPath.row].nivel
        cell.faseBotao?.tag = indexPath.row
        
        if(score > -1){
//            cell.faseBotao?.isLocked = false
//            cell.faseBotao?.pontuacao?.text = String(.fase1)
        }
//        cell.isUserInteractionEnabled = false
        
        
        
        cell.faseBotao?.addTarget(self, action: #selector(teste(_:)), for: .touchUpInside)
        
        return cell
    }
    
    @objc func teste(_ sender: FaseBotao) {
        switch sender.tag {
        case 0:
            openGame1(numeroDaTabuada: 1)
            
            break
        case 1:
            openGame2(numeroDaTabuada: 2)
            
            break
        case 2:
            openGame1(numeroDaTabuada: 3)
            break
        case 3:
            openGame2(numeroDaTabuada: -1)
            break
        case 4:
            openGame2(numeroDaTabuada: 4)
            break
        case 5:
            openGame1(numeroDaTabuada: 5)
            break
        case 6:
            openGame2(numeroDaTabuada: 6)
            break
        case 7:
            openGame1(numeroDaTabuada: -2)
            break
        case 8:
            openGame1(numeroDaTabuada: 7)
            break
        case 9:
            openGame2(numeroDaTabuada: 8)
            break
        case 10:
            openGame1(numeroDaTabuada: 9)
            break
        default:
            openGame2(numeroDaTabuada: -3)
        }
        
        // mudar a cor do botão
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            sender.alpha = 1.0
        }
    }
    
    func openGame1(numeroDaTabuada: Int) {
        guard let gameViewController = storyboard?.instantiateViewController(withIdentifier: "Game1ViewController") as? Game1ViewController else { return }
        gameViewController.numeroDaLista = numeroDaTabuada     //numeroDaLista: seta numero lido no switch case da Game1
        
        navigationController?.pushViewController(gameViewController, animated: true)
    }
    
    func openGame2(numeroDaTabuada: Int) {
        guard let gameViewController = storyboard?.instantiateViewController(withIdentifier: "Game2ViewController") as? Game2ViewController else { return }
        gameViewController.numeroDaLista = numeroDaTabuada
        
        navigationController?.pushViewController(gameViewController, animated: true)
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: false)
//
//        tableView.cellForRow(at: indexPath)?.backgroundColor = .clear
//
//    }

    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        tableView.cellForRow(at: indexPath)?.selectionStyle = .none
        return nil
    }
    
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
  
    
//    func save(){
//            UserDefaults().setValue(scoreFases[0].fase1, forKey: "saveG1")
//
//    }
//
//    func load(){
//          if let loadSocre = UserDefaults().value(forKey: "saveG1") as? Int{
//            scoreFases[0].fase1 = loadSocre}
//    }
}

