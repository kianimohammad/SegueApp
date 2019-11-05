//
//  TaskDetailViewController.swift
//  SegueApp
//
//  Created by Mohammad Kiani on 2019-11-04.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var textString: String?
    weak var taskTable: TaskTableViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = textString ?? ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        taskTable?.updateText(text: textView.text)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
