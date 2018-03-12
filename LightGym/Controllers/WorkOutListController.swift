//
//  ViewController.swift
//  LightGym
//
//  Created by Pavel Gerasimov on 12.03.2018.
//  Copyright © 2018 Pavel Gerasimov. All rights reserved.
//

import UIKit
import RealmSwift

class WorkOutListController: UITableViewController {

    let realm = try! Realm()
    
    var workOuts : Results<WorkOut>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        do{
//            try realm.write {
//                
//                let workOut = WorkOut()
//                realm.add(workOut)
//            }
//        } catch {
//            
//            print("Error tryeing to create new realm item \(error)")
//            
//        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        load()
        
    }
    
    //MARK: - Table View Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workOuts?.count ?? 1
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkOutListCell", for: indexPath)
        
        if let workOut = workOuts?[indexPath.row] {
            
            cell.textLabel?.text = String.dateFromString(with: workOut.date)
        }
        
        return cell
        
    }
    
    //MARK - List manipulation methods
    
    func load() {
        
        workOuts = realm.objects(WorkOut.self)
        
        tableView.reloadData()
        
    }

    

}

