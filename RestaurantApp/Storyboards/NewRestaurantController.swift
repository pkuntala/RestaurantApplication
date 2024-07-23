//
//  NewRestaurantController.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 22/10/21.
//

import UIKit

class NewRestaurantController: UITableViewController,UITextFieldDelegate{
    
    @IBOutlet weak var photoImage:UIImageView!
    
    
    @IBOutlet weak var nameTextField: UITextField!{
        didSet{
            nameTextField.tag = 1
            nameTextField.becomeFirstResponder()
            nameTextField.delegate = self
        }
    }
    
    
    @IBOutlet weak var typeTextField: UITextField!{
        didSet{
            typeTextField.tag = 2
            typeTextField.delegate = self
        }
    }
    
    
    
    @IBOutlet weak var addressTextField: UITextField!{
        didSet{
            addressTextField.tag = 3
            addressTextField.delegate = self
        }
    }
    
    
    @IBOutlet weak var phoneTextField: UITextField!{
        didSet{
            phoneTextField.tag = 4
            phoneTextField.delegate = self
        }
    }
    
    @IBOutlet weak var descriptionTextView: UITextView!{
        didSet{
            descriptionTextView.tag = 5
            descriptionTextView.layer.cornerRadius = 5.0
            descriptionTextView.layer.masksToBounds = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextTextField = view.viewWithTag(textField.tag+1){
            textField.resignFirstResponder()
            nextTextField.becomeFirstResponder()
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
       // if let customFont = UIFont(name: "Rubik-Medium", size: 35.0){
         //   navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.key.foregroundColor:]
    }
}

extension NewRestaurantController:UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let photoSourceController = UIAlertController(title:"", message: "Choose your photo source", preferredStyle: .actionSheet)
        //create action for camer source
            let cameraAction = UIAlertAction(title: "camera", style:.default , handler: {
                (action) in
                if UIImagePickerController.isSourceTypeAvailable(.camera){
                    let imagePicker  = UIImagePickerController()
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .camera
                    imagePicker.delegate = self
                    self.present(imagePicker, animated: true, completion: nil)
                }
            })
            //create action for photo library source
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: {
                (action) in
                if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                    let imagePicker = UIImagePickerController()
                    imagePicker.allowsEditing = false
                    imagePicker.sourceType = .photoLibrary
                    imagePicker.delegate = self
                    self.present(imagePicker, animated: true, completion: nil)
                }
            })
            //Add the actions to the alert controller
            photoSourceController.addAction(cameraAction)
            photoSourceController.addAction(photoLibraryAction)
            present(photoSourceController,animated: true,completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            photoImage.image = selectedImage
            photoImage.contentMode = .scaleAspectFill
            photoImage.clipsToBounds = true
        
        
    }
        let leadingConstraint = NSLayoutConstraint(item: photoImage!, attribute: .leading, relatedBy: .equal, toItem: photoImage.superview, attribute:.leading, multiplier: 1, constant: 0)
        leadingConstraint.isActive = true
        
        let trailingConstraint = NSLayoutConstraint(item: photoImage!, attribute: .trailing, relatedBy: .equal, toItem: photoImage.superview, attribute:.trailing, multiplier: 1, constant: 0)
        trailingConstraint.isActive = true
        
        let topConstraint = NSLayoutConstraint(item: photoImage!, attribute: .top, relatedBy: .equal, toItem: photoImage.superview, attribute:.top, multiplier: 1, constant: 0)
        topConstraint.isActive = true
        
        let bottomConstraint = NSLayoutConstraint(item: photoImage!, attribute: .bottom, relatedBy: .equal, toItem: photoImage.superview, attribute:.bottom, multiplier: 1, constant: 0)
        bottomConstraint.isActive = true
        dismiss(animated: true, completion: nil)
        
    }

    
}
