//
//  ViewController.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artistSearchTextField: UITextField!
    @IBOutlet weak var musicActivityIndicator: UIActivityIndicatorView!
    
    var musicVM: MusicViewModel?
    //var detailsVM: MusicDetailsVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicActivityIndicator.alpha = 0
    }
    
    @IBAction func searchArtistButton(_ sender: UIButton) {
        guard let musicLookup = artistSearchTextField.text, !musicLookup.isEmpty else { return }
        musicActivityIndicator.startAnimating()
        musicActivityIndicator.alpha = 1
        
        NetworkManager.fetchMusic(searchTerm: musicLookup) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                
                case .success(let response):
                    guard let vc = self?.storyboard?.instantiateViewController(identifier: "ArtistDetailVC") as? ArtistDetailViewController else { return }
                    vc.musicVM = MusicViewModel(musicResponse: response)
                    //vc.cellVM = MusicDetailsVM(musicDetails: response)
                    self?.musicActivityIndicator.stopAnimating()
                    self?.navigationController?.pushViewController(vc, animated: true)
                    //print(response)
                case .failure(let error):
                    print(error, error.localizedDescription)
                }
            }
        }
        
    }
    
} //End of class

