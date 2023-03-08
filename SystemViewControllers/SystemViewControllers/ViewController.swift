//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Ahmet Ali ÇETİN on 6.03.2023.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    
    //MARK: UIELEMENTS
    @IBOutlet weak var image: UIImageView!
    
    //MARK: PROPERTIES
    
    //MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: FUNCTIONS
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selecetedImage = info[.originalImage] as? UIImage else { return }
        image.image = selecetedImage
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: ACTIONS
    @IBAction func shareButtonTapped(_ button: UIButton) {
        guard let image = image.image else { return }
        //ADIM 1: ActivityController nesnesi oluşturmak
        //activity items; paylaşılacak olan nesneler (string, int, image vs...)
        //applicationActivities: Paylaşılacak olan nesnelerin hangi platformlarda paylaşılmasına izin verileceği.
        //Örneğin; Örn:(Twitter, Messages, Email
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
        
    }
    
    @IBAction func cameraButtonTapped(_ button: UIButton) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let alertController = UIAlertController(title: "Görsel Kaynağınızı Seçin", message: "Seçeceğiniz fotoğrafın kaynağını seçiniz.", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true)
            
        }
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { action in
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true)
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        present(alertController, animated: true)
        
    }
    
    @IBAction func safariButtonTapped(_ button: UIButton) {
        if let url = URL(string: "https://www.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true)
        }
        
    }
    
    @IBAction func emailButtonTapped(_ button: UIButton) {
        //Öncelikle mail atabileceğimizden emin olduğumuz bir ortam olmalı. Simulatör içerisinden mail atmak mümkün değildir.
        //Dolayısıyla ilk başta bunu kontrol etmemiz gerekmektedir.
        guard MFMailComposeViewController.canSendMail() else { return }
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setToRecipients(["ahtctn@gmail.com"])
        mailComposer.setSubject("Ekibinize dahil olmak istiyorum!")
        mailComposer.setMessageBody("Merhaba, ekibinizi çok sevdim!", isHTML: true)
        
        present(mailComposer, animated: true, completion: nil)
        
    }
}
