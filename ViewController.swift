//
//  ViewController.swift
//  ZooApp
//
//  Created by Francisco on 3/20/19.
//  Copyright © 2019 Francisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var listOfKillerAnimal =  [Animal]()
    var listOfNotKillerAnimal =  [Animal]()
    var AnimalType =  ["Not killer", "Killer"]

    @IBOutlet weak var tvListAnimals: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfNotKillerAnimal.append(Animal(name: "baboon", des: "live in big place with tree....", image: "chango"))
        
        listOfNotKillerAnimal.append(Animal(name: "buldog", des: "live in big place with tree....", image: "buldog"))
        
        
        listOfKillerAnimal.append(Animal(name: "panda", des: "live in big place with tree....", image: "panda"))
        
        
        listOfNotKillerAnimal.append(Animal(name: "pajaro", des: "live in big place with tree....", image: "pajaro"))
        
        
        listOfKillerAnimal.append(Animal(name: "tiger", des: "live in big place with tree....", image: "tiger"))
        
        listOfNotKillerAnimal.append(Animal(name: "zebra", des: "live in big place with tree....", image: "zebra"))
        
        
        tvListAnimals.delegate = self
        tvListAnimals.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AnimalType[section]
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfNotKillerAnimal.count
        }else{
            return listOfKillerAnimal.count
            
        }
     
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal:TVCAnimal = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for: indexPath) as!  TVCAnimal
        
        if indexPath.section == 0{
            cellAnimal.SetAnimal(animal: listOfNotKillerAnimal[indexPath.row])
            
        }else{
              cellAnimal.SetAnimal(animal: listOfKillerAnimal[indexPath.row])
        }
        
        
        return cellAnimal
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0  {
            print(listOfNotKillerAnimal[indexPath.row].image!)
           listOfNotKillerAnimal.remove(at: indexPath.row)
            //listOfNotKillerAnimal.append(listOfNotKillerAnimal[indexPath.row])
            
            
        }else{
            print(listOfKillerAnimal[indexPath.row].image!)
            listOfKillerAnimal.remove(at: indexPath.row)
           // listOfKillerAnimal.append(listOfKillerAnimal[indexPath.row])
        }
        
        tvListAnimals.reloadData()
    }


}

