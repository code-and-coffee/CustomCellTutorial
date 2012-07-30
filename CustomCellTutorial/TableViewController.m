//
//  TableViewController.m
//  CustomCellTutorial
//
//  Created by Nick on 7/25/12.
//  Copyright (c) 2012 MyCompanyName. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize images = _images;

-(NSArray *)images
{
    if (!_images)
        _images = [NSArray arrayWithObjects:@"1.jpeg", @"2.jpeg", @"3.jpeg",@"4.jpeg", @"5.jpeg", @"6.jpeg", @"7.jpeg", @"8.jpeg", nil];
    return _images;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if ([[self images] count] % 3)
        return ([[self images] count] / 3) + 1;
    else
        return [[self images] count] / 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    //we need to get three images starting at index?
    NSInteger imageIndex = [indexPath row] * 3;

    //get size of the array
    NSInteger size = [self.images count];
    
    //add image to first button
    UIImage *image = [UIImage imageNamed:[self.images objectAtIndex:imageIndex]];
    if (image){
        [cell.buttonView1 setImage:image forState:UIControlStateNormal];
    }
    
    //if we are at the end of the array just return the cell
    if (size == imageIndex + 1) {
        return cell;
    }
    
    //add image for second button
    image = [UIImage imageNamed:[self.images objectAtIndex:imageIndex+1]];
    if (image){
        [cell.buttonView2 setImage:image forState:UIControlStateNormal];
    }
    
    //if we are at the end of the array just return the cell
    if (size == imageIndex + 2) {
        return cell;
    }
    
    //add image for third button
    image = [UIImage imageNamed:[self.images objectAtIndex:imageIndex+2]];
    if (image){
        [cell.buttonView3 setImage:image forState:UIControlStateNormal];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200.0;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end