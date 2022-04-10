//
//  HomeViewController.swift
//  Projekti1
//
//  Created by Rion on 30.3.22.
//

import UIKit


class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoeTableViewCell") as! ShoeTableViewCell
       
       cell.setDetails(shoeobj: shoeArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let passdataVC = storyboard.instantiateViewController(withIdentifier: "PassDetailsViewController") as! PassDataControllerViewController
        passdataVC.Shoe = shoeArray[indexPath.item]
        self.navigationController?.pushViewController(passdataVC, animated: true)
     
      
    }
    
    @IBOutlet weak var labelFirstName: UILabel!
    
    @IBOutlet weak var Passwordi: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var shoeArray : [Shoe] = []

    var firstname: String?
    var password : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFirstName.text = "Username-i: \(firstname ?? "")"
        Passwordi.text = "Passwordi: \(password ?? "")"
        
        tableselfmetodat()
        appendshoes()
        
       

       
    }
    
    func tableselfmetodat(){
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ShoeTableViewCell", bundle: nil), forCellReuseIdentifier: "ShoeTableViewCell")
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 110.0
    }

    func appendshoes(){
        
        var shoe = Shoe()
        shoe.image = "adidas-Ozweego-Black-Orange-EE5696-on-foot-front-1_w1000"
        shoe.title = "Shiten Nike Airmax nr 42"
        shoe.price = 100
        shoeArray.append(shoe)
        
        shoeArray.append(Shoe(image: "Adidas-Shoes-Free-Download-PNG", title: "Shitet Adidas1 nr 44 ", price: 120))
        shoeArray.append(Shoe(image: "6GOpaD", title: "Shitet Patikat nr 45 ", price: 80))
        shoeArray.append(Shoe(image: "0308eec4ae6bb222d2af3ed07073bee1", title: "Shitet Patikat nr 42 ", price: 100))
        shoeArray.append(Shoe(image: "adidas-Ozweego-Black-Orange-EE5696-on-foot-front-1_w1000", title: "Shitet Patikat nr 42 ", price: 113))
        shoeArray.append(Shoe(image: "5dc11b0cdfa3500ad859a068-large", title: "Shitet Cëcullat nr 46 ", price: 165))
        shoeArray.append(Shoe(image: "248-2488464_new-womens-adidas-duramo-ladies-purple-running-shoes", title: "Shitet Nike airmax 2.0 nr 42", price: 105))
        
        shoeArray += shoeArray
        tableView.reloadData()
        
      
    }
    @IBAction func buttonnav(_ sender: Any) {
        
       
        let storyboard1 = UIStoryboard(name: "Main", bundle: nil )
        let vc3 = storyboard1.instantiateViewController(withIdentifier: "ImagePickerViewController") as! ImgViewController
        
        self.navigationController?.pushViewController(vc3, animated: true)
        
        
        
    }
}
