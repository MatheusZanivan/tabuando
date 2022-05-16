//
//  Score+CoreDataProperties.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 13/05/22.
//
//

import Foundation
import CoreData


extension Score {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Score> {
        return NSFetchRequest<Score>(entityName: "Score")
    }

    @NSManaged public var fase: Int64
    @NSManaged public var pontuacao: Int64
    @NSManaged public var data: Date?

}

extension Score : Identifiable {

}
