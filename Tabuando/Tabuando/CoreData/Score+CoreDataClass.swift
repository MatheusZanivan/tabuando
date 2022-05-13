//
//  Score+CoreDataClass.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 13/05/22.
//
//

import Foundation
import CoreData
import UIKit

@objc(Score)
public class Score: NSManagedObject {
    
    // Generate NSManagedObjectContext
    private func getContext() -> NSManagedObjectContext {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)}
        let context = appDelegate.persistentContainer.viewContext
        return context
    }
    
    private func save(context: NSManagedObjectContext) {
        do { try context.save() } catch { print(error) }
    }
    
    public func createScore(fase: Int, pontuacao: Int) {
        let context = getContext()
        
        let fase64 = Int64(fase)
        let pontuacao64 = Int64(pontuacao)
        
        let newScore = Score(context: context)
        newScore.setValue(fase64, forKey: "fase")
        newScore.setValue(pontuacao64, forKey: "pontuacao")
        newScore.setValue(Date.now, forKey: "data")
        
        save(context: context)
    }
    
    public func getLatestScoreByFase(fase: Int) -> Int {
        
        let context = getContext()
        
        let fetchRequest = Score.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "fase == %@", argumentArray: [fase])
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "pontuacao", ascending: false)]
        
        var auxList: [Score] = []
        
        do { auxList = try context.fetch(fetchRequest)} catch { print(error) }
        
        let resultado = (auxList.isEmpty) ? -1 : Int(auxList[0].pontuacao)
        
        return resultado
    }
    
    public func getAllScores() -> [Score] {
        
        let context = getContext()
        
        let fetchRequest = Score.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "data", ascending: false)]
        
        var auxList: [Score] = []
        
        do { auxList = try context.fetch(fetchRequest)} catch { print(error) }
        
        return auxList
    }
}
