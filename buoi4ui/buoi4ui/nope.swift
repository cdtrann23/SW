//
//  nope.swift
//  Buoi4UI
//
//  Created by Duy  Tran on 16/12/2021.
//

import UIKit
import Photos

class nope: UIViewController {

    @IBOutlet weak var photoImgV: UIImageView!
    @IBOutlet weak var choosePhotoButton: UIButton!
    
    var imgPicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgPicker = UIImagePickerController()

        imgPicker.delegate = self
    }
    


    @IBAction func pressChoosebt(_ sender: Any) {
    }
    
    
    func selectImg(){
        let alert = UIAlertController(title: "My app", message: "Choose photo", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title:"Cancel", style: .cancel, handler: nil)
        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            print("Camera")
        }
        let library = UIAlertAction(title: "Library", style: .default) { _ in
            print("Library")
        }
        
        alert.addAction(camera)
        alert.addAction(cancel)
        alert.addAction(library)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func fromLibrary(){
        func choosephoto(){
            DispatchQueue.main.async {
                self.imgPicker.allowsEditing = false
                self.imgPicker.sourceType = .photoLibrary
                self.imgPicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
                self.imgPicker.modalPresentationStyle = .popover
                self.present(self.imgPicker, animated: true, completion: nil)
            }
        }
        
        choosephoto()
        //let status = PHPhotoLibrary.authorizationStatus()
    }
}


extension nope: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let selectedImage = info[.originalImage] as? UIImage else {
                print("error: \(info)")
                return
            }
            
            self.photoImgV.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
}
