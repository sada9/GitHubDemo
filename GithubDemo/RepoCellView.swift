//
//  RepoCellView.swift
//  GithubDemo
//
//  Created by Pattanashetty, Sadananda on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCellView: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var repoImage: UIImageView!
    @IBOutlet weak var repoBy: UILabel!
    @IBOutlet weak var repoId: UILabel!
    @IBOutlet weak var desc: UILabel!

    var gitRepo: GithubRepo? {
        didSet {
            name.text = gitRepo?.name
            starCount.text =  "\(gitRepo!.stars!)" //String(describing: gitRepo?.stars!)
            forkCount.text = "\(gitRepo!.forks!)" //String(describing: gitRepo?.forks!)
            repoImage.setImageWith(URL(string: (gitRepo?.ownerAvatarURL)!)!)
            repoId.text = gitRepo?.ownerHandle
            desc.text = gitRepo?.repoDescription
        }
    }



    override func awakeFromNib() {
        super.awakeFromNib()
        repoImage.layer.cornerRadius = 3
        repoImage.clipsToBounds = true
        desc.preferredMaxLayoutWidth = desc.frame.size.width
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        desc.preferredMaxLayoutWidth = desc.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state

    }

}
