//
//  RightViewController.swift
//  LGSideMenuControllerDemo
//
import Social
class RightViewController: UITableViewController {
    
    private let titlesArray = ["     Support SkyCandy",
                               "",
                               "Premium Subcription",
                               "Donate",
                               "Share"
                               ]
    let str = "Hey, I use this really cool app to get alerts and know when the Sunrise and Sunset will be beautiful, amazing, and vibrant!https://vk.com/away.php?to=http%3A%2F%2Fwww.photographersarsenal.com%2Fmobile-apps-android-ios-iphone-ipad%2Fskycandy%2F&cc_key="

    init() {
        super.init(style: .plain)

        view.backgroundColor = .clear

        tableView.register(RightViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 44.0, left: 0.0, bottom: 44.0, right: 0.0)
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = .clear
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }

    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RightViewCell

        cell.textLabel!.text = titlesArray[indexPath.row]
        cell.textLabel!.font = UIFont.boldSystemFont(ofSize: indexPath.row == 0 ? 15.0 : 30.0)
        cell.separatorView.isHidden = (indexPath.row <= 1 || indexPath.row == titlesArray.count - 1)
        cell.isUserInteractionEnabled = (indexPath.row != 1)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 1 ? 50.0 : 100.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainViewController = sideMenuController!

        if indexPath.row == 0 {
            if mainViewController.isRightViewAlwaysVisibleForCurrentOrientation {
                mainViewController.showLeftView(animated: true, completionHandler: nil)
            }
            else {
                mainViewController.hideRightView(animated: true, completionHandler: {
                    mainViewController.showLeftView(animated: true, completionHandler: nil)
                })
            }
        }
        else {
            
            if(indexPath.row == 2){
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Storyboard", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "SubscripController") as! SubscripController
            self.present(newViewController, animated: true, completion: nil)
            }
            if(indexPath.row == 4){
                let vc = UIActivityViewController(activityItems: [str], applicationActivities: nil)
                self.present(vc, animated: true, completion: nil)
            }
        }
    }

}

