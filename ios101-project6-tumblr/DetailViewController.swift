//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Brody Haar on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    // Property to store the passed-in Post object
    var post: Post!

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photo = post.photos.first {
            let imageUrlString = photo.originalSize.url.absoluteString
            
            if let imageUrl = URL(string: imageUrlString) {
                Nuke.loadImage(with: imageUrl, into: backdropImageView)
            }
        }
        
        captionTextView.text = post.caption.trimHTMLTags()
        navigationItem.largeTitleDisplayMode = .never
    }
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
