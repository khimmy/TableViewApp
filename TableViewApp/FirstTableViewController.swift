//
//  FirstTableViewController.swift
//  TableViewApp
//
//  Created by MF839-008 on 5/19/16.
//  Copyright © 2016 SamsungSDS. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var books:[BookVO]=[BookVO]();

    override func viewDidLoad() {
        super.viewDidLoad()

        print ("FirstTableViewController.viewDidLoad");
        
        let book1=BookVO();
        book1.title="Originals" ;
        book1.cover="l9780091816971.jpg"
        book1.publisher="Viking Books"
        book1.url="http://www.kyobobook.co.kr/product/detailViewEng.laf?mallGb=ENG&ejkGb=ENG&linkClass=110303&barcode=9780399564192"
        book1.bookDesc="The New York Times bestselling author of 'Give and Take' examines how people can champion new ideas-and how leaders can encourage originality in their organizations"
        book1.writer="Grant, Adam M"
        
        books.append(book1);
        
        let book2=BookVO();
        book2.title="Who Moved My Cheese?"
        book2.cover="l9780385512275.jpg"
        book2.publisher="Vermillion"
        book2.url="http://www.kyobobook.co.kr/product/detailViewEng.laf?mallGb=ENG&ejkGb=ENG&linkClass=1115&barcode=9780091816971"
        book2.bookDesc="Cheese is a metaphor for what you want in life - be it a good job, a loving relationship, money or a possession. And the maze is where you look for what you want - your organization, family or community. This book shows how to anticipate change, adapt quickly, enjoy change, and be ready for more."
        book2.writer="Johnson, Spencer"
        
        books.append(book2);
        
        let book3=BookVO();
        book3.title="The Present";
        book3.cover="l9780399564192.jpg"
        book3.publisher="Doubleday"
        book3.url="http://www.kyobobook.co.kr/product/detailViewEng.laf?mallGb=ENG&ejkGb=ENG&linkClass=1115&barcode=9780385512275"
        book3.bookDesc="n extended retelling of the original classic parable follows a young man's search for an elusive gift that holds the promise of work fulfillment, a quest that is complicated by his fears about the future."
        book3.writer="Johnson, Spencer"
        
        books.append(book3);

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3;
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print ("tableView, indexPath=\(indexPath)")
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! BookTableViewTableViewCell;

        // Configure the cell...
        /*let row:String=String (indexPath.row);
        cell.textLabel?.text="TEST"+row;*/
        
        let row=books[indexPath.row];
        cell.txtBookTitle.text=row.title;
        cell.txtBookWriter.text=row.writer;
        cell.txtBookPublisher.text=row.publisher;
        cell.bookCoverImage.image=UIImage (named:row.cover!);
        
        
        /*cell.textLabel?.text=row.taitle;
        cell.detailTextLabel?.text=row.writer;
        cell.imageView?.image=UIImage (named: row.cover!);*/

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="book_webview" {
            let indexPath=self.tableView.indexPathForSelectedRow;
            segue.destinationViewController.title=books[(indexPath?.row)!].title;// as! WebViewController
            let view:WebViewController=segue.destinationViewController as! WebViewController;
            view.book=books[indexPath!.row];
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
