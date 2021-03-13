//
//  ColorsViewController.swift
//  Colors
//
//  Created by Robert Loch on 3/12/21.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: <#T##IndexPath#>)
        cell.textLabel?.text = colors[indexPath.row]
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
