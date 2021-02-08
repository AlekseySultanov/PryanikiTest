//
//  PrynyakTableViewCell.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var imageTitleLabel: UILabel!
    
    var imageURL: String?
    
    override func prepareForReuse() {
        cellImageView.image = nil
        imageTitleLabel.text = ""
    }
    
    func setup(response: MainResponse) {
        downloadImage(from: response.url ?? "")
        imageTitleLabel.text = response.text ?? ""
    }
    
    private func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    private func downloadImage(from stringUrl: String) {
        guard let url = URL(string: stringUrl)  else {
            return
        }
        
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.cellImageView.image = UIImage(data: data)
            }
        }
    }
    
}
