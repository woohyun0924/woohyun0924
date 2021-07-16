//
//  TableViewController.swift
//  Table VIew
//
//  Created by Woohyun Kim on 7/9/21.
//

import Foundation
import UIKit


struct Test{
    var title:String
    var price:String
    
}


class TableViewController : UITableViewController {
    
    var Tests:[Test] = []
    
    override func viewDidLoad() {
        
        let test1 = Test(title: "마요네즈", price: "6950")
        let test2 = Test(title: "갈릭마요", price: "8460")
        let test3 = Test(title: "토마토소스", price: "8040")
        let test4 = Test(title: "굴소스", price: "6590")
        let test5 = Test(title: "올리브 오일", price: "16500")
        let test6 = Test(title: "파슬리", price: "3890")
        let test7 = Test(title: "바질", price: "4680")
        let test8 = Test(title: "생크림", price: "3460")
        let test9 = Test(title: "파프리카", price: "17900")
        let test10 = Test(title: "새송이 버섯", price: "6500")
        
        Tests.append(test1)
        Tests.append(test2)
        Tests.append(test3)
        Tests.append(test4)
        Tests.append(test5)
        Tests.append(test6)
        Tests.append(test7)
        Tests.append(test8)
        Tests.append(test9)
        Tests.append(test10)
       
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Tests.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let test = Tests[indexPath.row]
        
        cell.textLabel?.text = test.title
        cell.detailTextLabel?.text = test.price
   
        
        
        return cell;
    }
}
