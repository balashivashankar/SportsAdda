//
//  ActivityTableViewCell.swift
//  SportsAdda
//
//  Created by Bala Shiva on 09/03/20.
//  Copyright © 2020 BalaShivaShankar. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

   lazy  var cellView:UIView = {
          
          let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width, height: 150))
          view.backgroundColor = UIColor.white
          return view
          
      }()
      lazy var hostName:UILabel = {
          let label = UILabel(frame: CGRect(x:10 , y: 10, width:cellView.frame.width - 30, height: 30))
          label.textAlignment = .left
          return label
         
      }()
    lazy var activityName:UILabel = {
             let label = UILabel(frame: CGRect(x:10 , y: 40, width:cellView.frame.width - 30, height: 30))
             label.textAlignment = .left
             return label
             
         }()
    lazy var venueName:UILabel = {
             let label = UILabel(frame: CGRect(x:10 , y: 70, width:cellView.frame.width - 30, height: 30))
             label.textAlignment = .left
             return label
             
         }()
    lazy var area:UILabel = {
             let label = UILabel(frame: CGRect(x:10 , y: 100, width:cellView.frame.width - 30, height: 30))
             label.textAlignment = .left
             return label
             
         }()
      

      override func awakeFromNib() {
          super.awakeFromNib()
          // Initialization code
      }
      
      override func layoutSubviews() {
          
          contentView.backgroundColor = UIColor.clear
          
          backgroundColor = UIColor.clear
          
          cellView.layer.cornerRadius = 5
          
          cellView.clipsToBounds = true
          
          
      }

      override func setSelected(_ selected: Bool, animated: Bool) {
          super.setSelected(selected, animated: animated)
          
          addSubview(cellView)

        cellView.addSubview(hostName)
        cellView.addSubview(activityName)
          cellView.addSubview(venueName)
          cellView.addSubview(area)
      }

  }
