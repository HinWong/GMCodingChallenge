//
//  MsuicTableViewCell.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/4/21.
//

import UIKit

class MsuicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var primaryGenreNameLabel: UILabel!
    @IBOutlet weak var trackPriceLabel: UILabel!
    
    var viewModel: MusicDetailsVM? {
        didSet {
            artistLabel.text = viewModel?.getArtistName()
            trackNameLabel.text = viewModel?.getTrackName()
            releaseDateLabel.text = viewModel?.getReleaseDate()
            primaryGenreNameLabel.text = viewModel?.getPrimaryGenreName()
            trackPriceLabel.text = "\(String(describing: viewModel?.getTrackPrice()))"
        }
    }
    
    
}
