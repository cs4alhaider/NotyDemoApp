//
//  Noty+CoreDataProperties.swift
//  Noty
//
//  Created by Abdullah Alhaider on 18/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//
//

import Foundation
import CoreData


extension Noty {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Noty> {
        return NSFetchRequest<Noty>(entityName: "Noty")
    }

    @NSManaged public var text: String
    @NSManaged public var isImportent: Bool

}
