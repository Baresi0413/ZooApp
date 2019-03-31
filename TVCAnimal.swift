//
//  TVCAnimal.swift
//  ZooApp
//
//  Created by Francisco on 3/20/19.
//  Copyright © 2019 Francisco. All rights reserved.
//

import UIKit

class TVCAnimal: UITableViewCell {

    @IBOutlet weak var ivAnimalImage: UIImageView!
    
    
    @IBOutlet weak var laAnimalDes: UITextView!
    @IBOutlet weak var lbAnimalName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func SetAnimal(animal:Animal){
        self.lbAnimalName.text = animal.name!
        self.laAnimalDes.text = animal.des!
        self.ivAnimalImage.image = UIImage(named:animal.image!)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
