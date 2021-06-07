//
//  ArtistDetailViewController.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/4/21.
//

import UIKit

class ArtistDetailViewController: UIViewController {

    @IBOutlet weak var artistDetailsTable: UITableView!
    
    var musicVM: MusicViewModel?
//    var cellVM: MsuicTableViewCell?
//    var cellVM: MusicDetailsVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistDetailsTable.delegate = self
        artistDetailsTable.dataSource = self
        artistDetailsTable.rowHeight = 300
    
    }

}

extension ArtistDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(musicVM?.getNumberOfResults() ?? 0)
        return musicVM?.getNumberOfResults() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = artistDetailsTable.dequeueReusableCell(withIdentifier: "musicCell") as? MsuicTableViewCell else { return UITableViewCell() }
        let musicDetails = musicVM?.resultsInformation?.results[indexPath.row]
        let cellVM = MusicDetailsVM(musicDetails: musicDetails!)
        
        cell.artistLabel.text = cellVM.getArtistName()
        cell.primaryGenreNameLabel.text = cellVM.getPrimaryGenreName()
        cell.releaseDateLabel.text = cellVM.getReleaseDate()
        cell.trackPriceLabel.text =  "$" + String(cellVM.getTrackPrice())
        cell.trackNameLabel.text = cellVM.getTrackName()
        
        //print(cellVM.getArtistName())
        return cell
    }
    
    
}
