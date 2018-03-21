//
//  ColorsTableViewController.swift
//  Colors
//
//  Created by Mandy Rogers on 3/13/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var colorsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //let colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    let colors = [Color(name: "red", uiColor: UIColor.red), Color(name: "orange", uiColor: UIColor.orange), Color(name: "yellow", uiColor: UIColor.yellow), Color(name: "green", uiColor: UIColor.green), Color(name: "blue", uiColor: UIColor.blue), Color(name: "purple", uiColor: UIColor.purple), Color(name: "brown", uiColor: UIColor.brown)]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = colorsTable.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        cell?.textLabel?.text = colors[indexPath.row].name
        cell?.backgroundColor = colors[indexPath.row].uiColor
        cell?.selectionStyle = .none
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTable.indexPathForSelectedRow?.row  {
            destination.color = colors[row]
            
        }
    }
    
    


}
