//
//  DataController.swift
//  VirtualTourist
//
//  Created by Hadi Albinsaad on 23/10/2018.
//  Copyright © 2018 Hadi. All rights reserved.
//

import Foundation
import CoreData


class DataController {
    
    static let sharedInstance = DataController()
    
    let persistentContainer = NSPersistentContainer(name: "VirtualTourist")
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func load() {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
        }
    }
    
}

