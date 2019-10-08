//
//  TableViewCell.swift
//  cellwotukuritainnjaa
//
//  Created by kiyolab02 on 2019/10/08.
//  Copyright © 2019 practice. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var prefecture: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setCell(station: Station) {
        self.name.text = station.name as String
        self.prefecture.text = station.prefecture as String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
