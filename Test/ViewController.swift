//
//  ViewController.swift
//  Test
//
//  Created by Azoz Salah on 28/12/2023.
//

import UIKit

class ViewController: UITableViewController {
    let items = ["Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item", "Item"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        navigationController?.navigationBar.backgroundColor = .clear
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func translucentTabAndNavigationBars() {
        if let navigationBar = navigationController?.navigationBar {
            
            // Remove background and border
            navigationBar.setBackgroundImage(UIImage(), for: .default)
            navigationBar.shadowImage = UIImage()
            
            // Make navigation bar ultra-thin
            navigationBar.isTranslucent = true
            //navigationBar.tintColor = .yourTintColor // Set your preferred tint color
            
            // Optional: Customize title text attributes
//            navigationBar.titleTextAttributes = [
//                NSAttributedString.Key.foregroundColor: UIColor.yourTextColor,
//                NSAttributedString.Key.font: UIFont.yourFont
//            ]
        }
        
        // Configure Tab Bar
        if let tabBar = tabBarController?.tabBar {
            
            // Remove background and border
            tabBar.backgroundImage = UIImage()
            tabBar.shadowImage = UIImage()
            
            // Make tab bar ultra-thin
            tabBar.isTranslucent = true
            //tabBar.tintColor = .yourTabTintColor // Set your preferred tab tint color
            
            // Optional: Customize unselected tab item appearance
            //tabBar.unselectedItemTintColor = .yourUnselectedColor
        }
    }


}

