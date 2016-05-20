//
//  BookTableViewTableViewCell.swift
//  TableViewApp
//
//  Created by MF839-008 on 5/20/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class BookTableViewTableViewCell: UITableViewCell {

    @IBOutlet weak var bookCoverImage: UIImageView!
    @IBOutlet weak var txtBookTitle: UILabel!
    @IBOutlet weak var txtBookWriter: UILabel!
    @IBOutlet weak var txtBookPublisher: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        print ("BookTableViewTableViewCell.awakeFromNib");
        txtBookTitle.text="";
        txtBookWriter.text="";
        txtBookPublisher.text="";
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
