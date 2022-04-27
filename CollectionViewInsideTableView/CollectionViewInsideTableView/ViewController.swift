//
//  ViewController.swift
//  CollectionViewInsideTableView
//
//  Created by Abhiraj Thakore on 18/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblData.delegate = self
        tblData.dataSource = self
        // Do any additional setup after loading the view.
    }

    //MARK: - UITableView Delegates and Datasource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 131.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListingTblCell", for: indexPath) as! ListingTblCell
        
        cell.clsOptions.reloadData()
        
        return cell
    }
}
