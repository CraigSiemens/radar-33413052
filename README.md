## Summary:
When inserting a section into a tableview that has already been shown, it will add extra padding if the inserted section is at index 0 and is the first section to have a header title.

## Steps to Reproduce:
Create a non empty table view where none of the sections have a header title
After the table view is visible, insert a new section at index 0
Call reloadData or beginUpdates, insertSections, endUpdates on the table view


## Expected Results:
The table view to have the same visual appearance as one that started out with a section that has a header

Run the attached sample project and view the “Expected” tab.
See ExpectedViewController.swift

## Actual Results:
The table view shows the new section, but all the content is inset and extra 45 pt from the top of the table view

Run the attached sample project and view the “Actual” tab.
See ActualViewController.swift

Version:
11.0b3

## Notes:
The extra padding on the table view is only added the first time a section with a header is inserted at section 0. Every additional section inserted doesn’t add any additional padding.

In the sample project, a new section is inserted on viewDidAppear. Just go to the “Expected” tab then back to the “Actual” tab to insert another section.
