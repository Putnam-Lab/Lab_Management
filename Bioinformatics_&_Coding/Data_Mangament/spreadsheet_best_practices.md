### If you are really interested in how to organize/gather data in spreadsheets please consult this paper: [Data Organization in Spreadsheets](https://www.tandfonline.com/doi/full/10.1080/00031305.2017.1375989). This page is a basic overview of the concepts in that paper.

### Another good resource is the [Data Organization in Spreadsheets for Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/) Data Carpentry module.

---

### Guidelines

1. Keep your raw data **separate** from any modifications.  This means a separate datasheet of just measurements/observations. Once all the data is collected you can write protect your file so that it cannot be modified
![](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/images/write-protect.png)
2. **Be consistent in anything you do.** Once you pick a name for a sample/variable don't change it! This means capitols or numbers or anything. If you can keep the naming convention the same across projects even better! Keep formats for different datasheets as consistent as possible as well. It is better to make separate files instead of multiple tabs/sheets in one document (see below) and those need to be organized/laid out in the same way.
2. Use naming conventions that work well for transferring to different formats or analysis methods. Don't use spaces, use underscores _ or dashes -. Be consistent for which one you use. Don't use any special characters like * $ % # & in names because they can be considered to mean specific functions in other programs.
3. Be very careful about dates. Excel notoriously will change date formats or view certain terms as dates when they're not. The best thing to do is write out dates as YYYY-MM-DD or YYYYMMDD only. You can also specify rows/columns in excel to be only text, then the program won't change them into other date formats.
![text cells ex](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/text-cells.png)
![text cells ex2](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/text-cells2.png)
4. Do not ever leave a cell blank. If there is no data for that instance put in NA. If there is a reason for an NA make a column for comments and put the description there, not in the actual cell.
5. Put only one piece of information in a cell. If things can be separated out into two columns, do it! This goes for units, don't put grams or ng/ul in the cell. Either put it in the column name or in a separate column just for units.
6. Try to keep datasheets in rectangular format as much as possible, this will help remove blank cells because of formatting. It's easiest to think about formatting your sheet so that it would nicely be read into R. Look at this paper by Hadley Wickham about [Tidy Data formats](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/Papers/Tidy_Data.pdf). In short, **each variable is a column and each observation is a row.** See these examples:
Formatting that will cause you analysis problems:
![Bad Table Format](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/bad-table.png)
Good table format:
![Good Table Format](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/good-table.png)
You don't want to be trying to read the first table into a program like R  
![read fail](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/excel-fail.gif)  
7. It's good to use abbreviations or shortened words in your datasheet. You just need to make sure the full information is contained in your **metadata** which is the data about the data. You can include a data dictionary that explains abbreviations in your metadata.
8. Avoid highlighting cells (only readable in excel or google sheets) and making calculations in your raw data. If these are necessary only do this in separate copied datasheets.
9. Backup your versions of datasheets if they get continuously added to and save them in plain text formats like .csv, .tsv. or .txt. Using those formats are an extra check that you aren't introducing fancy syntax into your file (colors, etc).
