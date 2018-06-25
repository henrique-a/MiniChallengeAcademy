//
//  SettingsViewController.swift
//  MiniChanllenge
//
//  Created by Ada 2018 on 21/06/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var txtNameUser: UILabel!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        ivPhoto.image = image
        
        ivPhoto.layer.cornerRadius = self.ivPhoto.frame.width / 2
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectPicture(_ sender: Any) {
        var userNameTf: UITextField?
        
        let alertController = UIAlertController(title: "Alterar nome de usuário", message: "Digite o novo nome", preferredStyle: .alert)
        let nameAction = UIAlertAction(title: "Concluído", style: .default) { (action) in
            if let userName = userNameTf?.text {
                print("Nome de usuário = \(userName)")
                self.txtNameUser.text = userName
            } else {
                print("Sem nome de usuário")
            }
        }
        alertController.addTextField { (txtUserName) in
            userNameTf = txtUserName
            userNameTf!.placeholder = "Digite seu nome aqui"
        }
        alertController.addAction(nameAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func selectSource(_ sender: Any) {
        let alert = UIAlertController(title: "Selecionar foto", message: "De onde você quer escolher sua foto", preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAction = UIAlertAction(title: "Câmera", style: .default, handler: { (action) in
                self.selectPicture(sourceType: .camera)
            })
            alert.addAction(cameraAction)
        }
        let libraryAction = UIAlertAction(title: "Biblioteca de fotos", style: .default) { (action) in
            self.selectPicture(sourceType: .photoLibrary)
        }
        alert.addAction(libraryAction)
        
        let photosAction = UIAlertAction(title: "Album de fotos", style: .default) { (action) in
            self.selectPicture(sourceType: .savedPhotosAlbum)
        }
        alert.addAction(photosAction)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func selectPicture(sourceType: UIImagePickerControllerSourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
        
    }
}


extension SettingsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
            let originalWidth = image.size.width
            let aspectRatio = originalWidth / image.size.height
            var smallSize: CGSize
            
            if aspectRatio > 1 { //verificando se a imagem está no formato de paisagem
                smallSize = CGSize(width: 1000, height: 1000/aspectRatio)
            } else {
                smallSize = CGSize(width: 1000*aspectRatio, height: 1000)
            }
            
            UIGraphicsBeginImageContext(smallSize)
            image.draw(in: CGRect(x: 0, y: 0, width: smallSize.width, height: smallSize.height))
            let smallImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            dismiss(animated: true, completion: {
                self.ivPhoto.image = smallImage
            })
        }
    }
}







