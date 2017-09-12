# Xtend.Domain
Run the Scripts in the Database Folder to Set up the data
Build the application and run it.
Access the WebAPI using something like postman to see the data.

I was unable to spend uninterrupted time focused on this task as I had planned due to unexpected visit from family evacuating from
Hurricane Irma down in Florida.  Way to many distractions.

The retrieving of data works all the way up to the WEB API, which I just slapped together in a few minutes using boilerplate.

I did not get to work on the Front End Rich client, which would have been the most fun.
I also did not get to put together the export.

On the Export, my intention would have been to have an Export Service and inject a class specific to each of the clients which would 
inherit common functionality from an abstract class and override the method which controls the formatting of each line as well as the 
method which generates the file name, and the method that does the grouping of line items for each file 
(All the records for General Hospital in 1 file) (All the records for each Facility in a file for each facility for Veterans Hospital)

Certainly there is a lot more that I could have done with more time and less distractions.


