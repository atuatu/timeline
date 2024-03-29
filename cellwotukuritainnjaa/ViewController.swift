//
//  ViewController.swift
//  cellwotukuritainnjaa
//
//  Created by kiyolab02 on 2019/10/08.
//  Copyright © 2019 practice. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tablecell: UITableView!
    var stations:[Station] = [Station]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablecell.dataSource = self
        tablecell.delegate = self
        tablecell.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "StationTableViewCell")
        self.setupStations()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupStations() {
        stations = [Station(name: "飯田橋", prefecture: "東京都新宿区"), Station(name: "九段下", prefecture: "東京都千代田区"), Station(name: "御茶ノ水", prefecture: "東京都文京区") ];
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StationTableViewCell", for: indexPath ) as! TableViewCell
        
        cell.setCell(station: stations[indexPath.row])
        
        return cell
    }


}

