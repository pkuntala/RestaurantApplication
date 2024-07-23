//
//  RestaurantTableViewController.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 14/10/21.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    

    // MARK: - Table view data source
    
    
    
   /* var restaurantNames = ["Cafe Deadend", "Home1", "Teakha", "Cafe lois1", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats and Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]

        var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var restaurantIsVisited=Array(repeating: false, count: 21)
 */
    var restaurants:[Restaurant] = [
            Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", image: "cafedeadend.jpg", isVisited: false),
            Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phone: "348-233423", description: "A little gem hidden at the corner of the street is nothing but fantastic! This place is warm and cozy. We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of coffee drinks and specialties including lattes, cappuccinos, teas, and more. We serve breakfast, lunch, and dinner in an airy open setting. Come over, have a coffee and enjoy a chit-chat with our baristas.", image: "homei.jpg", isVisited: false),
            Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "354-243523", description: "Take a moment to stop and smell tealeaves! We are about the community, our environment, and all things created by the warmth of our hands. We open at 11 AM, and close at 7 PM. At teakha, we sell only the best single-origin teas sourced by our sister company Plantation directly from small tea plantations. The teas are then either cooked to perfection with milk in a pot or brewed.", image: "teakha.jpg", isVisited: false),
            Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "453-333423", description: "A great cafe in Austrian style. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. We also serve breakfast and light lunch. Come over to enjoy the elegant ambience and quality coffee..", image: "cafeloisl.jpg", isVisited: false),
            Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "983-284334", description: "An upscale dining venue, features premium and seasonal imported oysters, and delicate yet creative modern European cuisines. Its oyster bar displays a full array of freshest oysters imported from all over the world including France, Australia, USA and Japan.", image: "petiteoyster.jpg", isVisited: false),
            Restaurant(name: "For Kee Restaurant", type: "Hong Kong", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phone: "232-434222", description: "A great local cafe for breakfast and lunch! Located in a quiet area in Sheung Wan, we offer pork chop buns, HK french toast, and many more. We open from 7 AM to 4:30 PM.", image: "forkeerestaurant.jpg", isVisited: false),
            Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phone: "234-834322", description: "A boutique bakery focusing on artisan breads and pastries paired with inspiration from Japan and Scandinavia. We are crazy about bread and excited to share our artisan bakes with you. We open at 10 every morning, and close at 7 PM.", image: "posatelier.jpg", isVisited: false),
            Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343", description: "We make everything by hand with the best possible ingredients, from organic sourdoughs to pastries and cakes. A combination of great produce, good strong coffee, artisanal skill and hard work creates the honest, soulful, delectable bites that have made Bourke Street Bakery famous. Visit us at one of our many Sydney locations!", image: "bourkestreetbakery.jpg", isVisited: false),
            Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", phone: "734-232323", description: "Haigh's Chocolates is Australia's oldest family owned chocolate maker. We have been making chocolate in Adelaide, South Australia since 1915 and we are committed to the art of premium chocolate making from the cocoa bean. Our chocolates are always presented to perfection in our own retail stores. Visit any one of them and you'll find chocolate tasting, gift wrapping and personalised attention are all part of the service.", image: "haighschocolate.jpg", isVisited: false),
            Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Shop 1 61 York St Sydney New South Wales", phone: "872-734343", description: "We offer an assortment of on-site baked goods and sandwiches. This place has always been a favourite among office workers. We open at 7 every morning including Sunday, and close at 4 PM. Come over, have a coffee and enjoy a chit-chat with our baristas.", image: "palominoespresso.jpg", isVisited: false),
            Restaurant(name: "Upstate", type: "Seafood", location: "95 1st Ave New York, NY 10003", phone: "343-233221", description: "The absolute best seafood place in town. The atmosphere here creates a very homey feeling. We open at 5 PM, and close at 10:30 PM. ", image: "upstate.jpg", isVisited: false),
            Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", phone: "985-723623", description: "A young crowd populates this pork-focused American eatery in an older Williamsburg neighborhood. We open at 6PM, and close at 11 PM. If you enjoy a shared small plates dinner experience, come over and have a try.", image: "traif.jpg", isVisited: false),
            Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", phone: "455-232345", description: "Classic Italian deli & butcher draws patrons with meat-filled submarine sandwiches. We use the freshest meats and veggies to create the perfect panini for you. We look forward to seeing you!", image: "grahamavenuemeats.jpg", isVisited: false),
            Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", phone: "434-232322", description: "Small shop, some seating, definitely something different! We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of waffles with choices of sweet & savory fillings. If you are gluten free and craving waffles, this is the place to go.", image: "wafflewolf.jpg", isVisited: false),
            Restaurant(name: "Five Leaves", type: "Bistro", location: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", description: " Great food, cocktails, ambiance, service. Nothing beats having a warm dinner and a whiskey. We open at 8 every morning, and close at 1 AM. The ricotta pancakes are something you must try.", image: "fiveleaves.jpg", isVisited: false),
            Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", description: "Good place, great environment and amazing food! We open at 10 every morning except Sunday, and close at 9 PM. Give us a visit! Enjoy mushroom raviolis, pumpkin raviolis, meat raviolis with sausage and peppers, pork cutlets, eggplant parmesan, and salad.", image: "cafelore.jpg", isVisited: false),
            Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", phone: "643-332323", description: "Most delicious cocktail you would ever try! Our menu includes a wide range of high quality internationally inspired dishes, vegetarian options, and local cuisine. We open at 10 AM, and close at 10 PM. We welcome you into our place to enjoy a meal with your friends.", image: "confessional.jpg", isVisited: false),
            Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", description: "a collection of authentic Spanish Tapas bars in Central London! We have an open kitchen, a beautiful marble-topped bar where guests can sit and watch the chefs at work and stylish red leather stools. Lunch starts at 1 PM. Dinners starts 5:30 PM.", image: "barrafina.jpg", isVisited: false),
            Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", description: "Very good basque food, creative dishes with terrific flavors! Donostia is a high end tapas restaurant with a friendly relaxed ambiance. Come over to enjoy awesome tapas!", image: "donostia.jpg", isVisited: false),
            Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", description: "Specialise in great pub food. Established in 1872, we have local and world lagers, craft beer and a selection of wine and spirits for people to enjoy. Don't forget to try our range of Young's Ales and Fish and Chips.", image: "royaloak.jpg", isVisited: false),
            Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", description: "With kitchen serving gourmet burgers. We offer food every day of the week, Monday through to Sunday. Join us every Sunday from 4:30 – 7:30pm for live acoustic music!", image: "caskpubkitchen.jpg", isVisited: false)
        ]
    
    
    var searchController:UISearchController?
    var searchResults :[Restaurant] = []
    var ticked = Array(repeating: false, count: 21)
    //var imageView:UIImageView!
    var image:UIImage!
    
    
    
    
  /*  override var prefersStatusBarHidden: Bool{
        
        return true
    }
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
        
        searchController?.searchResultsUpdater = self
        searchController?.dimsBackgroundDuringPresentation = false
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if let customFont = UIFont(name: "Rubik-Medium", size: 40.0){
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor(displayP3Red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0), NSAttributedString.Key.font:customFont]
        }
            
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func filterContent(for searchText:String)
    {
        searchResults = restaurants.filter({ (restaurant) -> Bool in
          //  let name = restaurant.name
            let location = restaurant.location
            let isMatch = location.localizedCaseInsensitiveContains(searchText)
            return isMatch
        })
    }
    
    
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue)
    {
        dismiss(animated: true, completion: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return restaurantNames.count
        if searchController != nil, searchController?.isActive == true{
            
            return searchResults.count
            
        }
        else{
        return restaurants.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cellIdentifier="Cell"
        let cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantCell
        
        //configure the cell
        var restaurant = Restaurant()
        if searchController != nil, searchController?.isActive == true{
            restaurant = searchResults[indexPath.row]
            
        }
        else{
            restaurant = restaurants[indexPath.row]
        }
        
       /* cell.textLabel?.text=restaurantNames[indexPath.row]
        //cell.imageView?.image=UIImage(named: "restaurant")
        cell.imageView?.image=UIImage(named: restaurantImages[indexPath.row])
 */
        cell.nameLbl.text=restaurant.name
        cell.thumbnailImgView.image=UIImage(named:restaurant.image)
        cell.locationLbl.text=restaurant.location
        cell.typeLbl.text=restaurant.type
       // cell.heartImg.isHidden = restaurant.isVisited ? false :true
        
        
        //cell.heartTick.image=UIImage(named:"heart-tick")
        
        image = UIImage(named:"heart-tick" )
       //imageView = UIImageView(image: image)
        //cell.accessoryView = imageView
      /* if restaurantIsVisited[indexPath.row]
        {
            cell.heartTick.image=image
        }
        else
        {
            cell.heartTick.image = .none
        }
 */
        if restaurants[indexPath.row].isVisited
        {
            cell.accessoryView = UIImageView(image:image)
        }
        else{
            cell.accessoryView = .none
        }
        
        if ticked[indexPath.row]
        {
            cell.accessoryView = UIImageView(image:image)
        }
        else{
            cell.accessoryView = .none
        }
    
       // cell.accessoryType = restaurantIsVisited[indexPath.row] ? .checkmark: .none
        
        
        return cell

        // Configure the cell...
    }
    
    
  /*  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionsMenu=UIAlertController(title: nil, message: "Choose the option", preferredStyle: .actionSheet)
        
        
        let cancelAction=UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        //Preparing the handler for callAction to display another alert
        
        let callActionHandler={(action:UIAlertAction)-> Void in
            let alertMessage=UIAlertController(title: "Service Unavailable", message:"Sorry the call feature is not available yet" , preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
        }
        
        //Create Call action for the alert controller
        
        let callAction=UIAlertAction(title: "Call" + "+91-9988776666", style: .default, handler: callActionHandler)
        
        
        let checkInAction=UIAlertAction(title: "Check-In", style: .default, handler: {(action:UIAlertAction)->Void in
            
            let cell=tableView.cellForRow(at: indexPath)
            cell?.accessoryView=UIImageView(image:self.image)
            //cell?.accessoryType = .checkmark
            //cell.heartTick.image=image
            self.restaurantIsVisited[indexPath.row] = true
            //print("Check-IN")
            
        })
        
        //Creating the check-out action
        
        let checkOutAction=UIAlertAction(title: "Undo Check-In", style: .default, handler: {(action:UIAlertAction)->Void in
            let cell=tableView.cellForRow(at: indexPath)
            cell?.accessoryView = .none
            self.restaurantIsVisited[indexPath.row] = false
            //print("Check-out")
        })
        
        //for checking whether the device is an ipad or iphone so that the alert wont crash
        
        // the activityController.popoverPresentationController will return a value for ipad and returns no value for iphone
        if let popoverController = optionsMenu.popoverPresentationController{
            if let cell=tableView.cellForRow(at: indexPath){
                popoverController.sourceView = cell
                popoverController.sourceRect=cell.bounds
            }
            
        }
        
        
        optionsMenu.addAction(cancelAction)
        optionsMenu.addAction(callAction)
        //checking if the row is marked or not to display check-out or check-in
        if self.restaurantIsVisited[indexPath.row]{
        optionsMenu.addAction(checkOutAction)
        }
        else{
            optionsMenu.addAction(checkInAction)
        }
        
        
        present(optionsMenu, animated: true, completion: nil)
        
    }
 */
    
    
  /*  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            restaurantNames.remove(at: indexPath.row)
            restaurantImages.remove(at: indexPath.row)
            restaurantTypes.remove(at: indexPath.row)
            restaurantLocations.remove(at: indexPath.row)
            restaurantIsVisited.remove(at: indexPath.row)
        }
        tableView.deleteRows(at: [indexPath], with: .fade)
        //tableView.reloadData()
        
    }
 */
    
    
    /*if editingStyle == .delete {
        // Delete the row from the data source
        tableView.deleteRows(at: [indexPath], with: .fade)
    } else if editingStyle == .insert {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
 */
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    
    
   
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showRestaurantDetail"
        {
        if let indexPath = tableView.indexPathForSelectedRow{
            let destinationController = segue.destination as! RestaurantDetailViewController
            
            if searchController != nil, searchController?.isActive == true{
                destinationController.restaurant = searchResults[indexPath.row]
            }
            else{
                destinationController.restaurant = restaurants[indexPath.row]
            }
            /*destinationController.restaurantImgName = restaurantImages[indexPath.row]
            destinationController.restaurantName = restaurantNames[indexPath.row]
            destinationController.restaurantLocation = restaurantLocations[indexPath.row].location
            
            destinationController.restaurantType = restaurantTypes[indexPath.row].type*/
           // destinationController.restaurant=restaurants[indexPath.row]
            destinationController.hidesBottomBarWhenPushed = true
            }
        }
    }
    

}
/*extension RestaurantTableViewController{
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
       let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){(action,sourceView,completionHandler) in
            self.restaurantNames.remove(at: indexPath.row)
            self.restaurantImages.remove(at: indexPath.row)
            self.restaurantTypes.remove(at: indexPath.row)
            self.restaurantLocations.remove(at: indexPath.row)
            self.restaurantIsVisited.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        let shareAction = UIContextualAction(style:.normal , title: "Share"){
            (action,sourceView,completionHandler) in
            
            let defaultText = "Just checking in at " + self.restaurantNames[indexPath.row]
            
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
            completionHandler(true)
            
        }
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        return swipeConfiguration
    }
}
 */
extension RestaurantTableViewController{
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
       let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){(action,sourceView,completionHandler) in
            /*self.restaurantNames.remove(at: indexPath.row)
            self.restaurantImages.remove(at: indexPath.row)
            self.restaurantTypes.remove(at: indexPath.row)
            self.restaurantLocations.remove(at: indexPath.row)
            self.restaurantIsVisited.remove(at: indexPath.row)*/
        self.restaurants.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        let shareAction = UIContextualAction(style:.normal , title: "Share"){
            (action,sourceView,completionHandler) in
            let activityController:UIActivityViewController
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name
            
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image)
            {
                activityController = UIActivityViewController(activityItems: [defaultText,imageToShare], applicationActivities: nil)
            }
            else
            {
                activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            // the activityController.popoverPresentationController will return a value for ipad and returns no value for iphone
            
            
            if let popoverController = activityController.popoverPresentationController{
                if let cell=tableView.cellForRow(at: indexPath){
                    popoverController.sourceView = cell
                    popoverController.sourceRect=cell.bounds
                }
                
            }
            self.present(activityController, animated: true, completion: nil)
            completionHandler(true)
            
        }
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        deleteAction.backgroundColor = UIColor(displayP3Red: 231.0/255.0, green: 26.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        
        shareAction.backgroundColor = UIColor(displayP3Red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        
        return swipeConfiguration
    }
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        //var ticked = Array(repeating: false, count: 21)
        let checkInActionTitle = (ticked[indexPath.row]) ? "undo Check-In" : "Check-In"
        let checkInAction = UIContextualAction(style: .normal, title: checkInActionTitle, handler:{(action, sourceView,completionHandler) in
            let cell=tableView.cellForRow(at: indexPath)
            
            if !self.ticked[indexPath.row]
            {
            
            cell?.accessoryView=UIImageView(image:self.image)
                self.ticked[indexPath.row] = true
            }
            else
            {
                cell?.accessoryView = .none
                self.ticked[indexPath.row] = false
            }
            return completionHandler(true)
            
        })
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [checkInAction])
        
        checkInAction.backgroundColor = UIColor(displayP3Red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        
        return swipeConfiguration
    }
}
extension  RestaurantTableViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController:UISearchController){
        if let searchText = searchController.searchBar.text{
            filterContent(for: searchText)
            tableView.reloadData()
        }
    }
}
