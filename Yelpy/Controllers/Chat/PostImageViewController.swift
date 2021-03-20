//
//  PostImageViewController.swift
//  Yelpy
//
//  Created by Aditya Dixit on 3/20/21.
//  Copyright © 2021 memo. All rights reserved.
//

import Foundation

protocol PostImageViewControllerDelegate: class {
    func imageSelected(controller: PostImageViewController, image: UIImage)
}

class PostImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBOUtlet weak var selectedImageView: UIImageView!
    
    weak var delegate: PostImageViewControllerDelegate!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        createImagePicker()
        navigationController?.navigationBar.isHidden = true
    
        
    }
}
