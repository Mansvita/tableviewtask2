
import UIKit

class Cell: UITableViewCell {
    
    //outlet
    @IBOutlet weak var lbl: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
