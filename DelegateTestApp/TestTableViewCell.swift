//
//  TestTableViewCell.swift
//  DelegateTestApp
//
//  Created by RyoNagai on 2021/06/06.
//

import UIKit

protocol TestTableViewCellDelegate: class {
    func tappedPleaseTapButton()
}

class TestTableViewCell: UITableViewCell {

    @IBAction func tappedPleaseTapButton(_ sender: Any) {
        
        print("1: tappedPleaseTapButton")
        testTableViewCellDelegate?.tappedPleaseTapButton()
        
    }
    
    weak var testTableViewCellDelegate: TestTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
