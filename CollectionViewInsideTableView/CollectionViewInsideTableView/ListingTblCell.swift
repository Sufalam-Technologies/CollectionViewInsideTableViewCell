//
//  ListingTblCell.swift
//  CollectionViewInsideTableView
//
//  Created by Abhiraj Thakore on 19/04/22.
//

import UIKit

class ListingTblCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
        
    @IBOutlet weak var clsOptions: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        clsOptions.delegate = self
        clsOptions.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - UICollectionView Delegate and DataSource Methods

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SideOptionsClsCell", for: indexPath) as! SideOptionsClsCell
        
        if indexPath.row % 2 == 0 { //Even Number
            cell.backgroundColor = .red
        }else{
            cell.backgroundColor = .green
        }
        
        return cell
    }
}
