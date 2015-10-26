In order to support and simplify future research on the domain of implicit user preference mining, we designed a component for collecting implicit preference indicators. 
The component is written in JavaScript (client side) and PHP (server side) and communicating over AJAX requests. Client side collects implicit preference indicators, store them locally and aggregate them during the visit. 
The AJAX requests with current values of the preference indicators are posted periodically (and also just before closing of the current page) to the server and stored into the database. 
 
The IPIget component is free to use and modify, however comes with no varanty.

Key Parts of IPIget Component

The IPIget component itself consists of three files:

-	TraceUser.js contains source code identifying all context features and IPIs, populating them and arranging its dispatch to the server-side storage. Any changes on the set of collected behavior patterns should be done within this file. 
-	AjaxRequest.js handles asynchronous connection to the server-side storage
-	StoreVisit.php handles storing the traced behavior into the MySQL database

Another three files were created in order to support deployment process:
-	CreateTable.sql executes SQL query creating table for storage of the traced behavior
-	SampleCatalogue.html and SampleObjectDetail.html are sample pages illustrating deployment of the IPIget component

Deployment of IPIget Component

As the deployment of the IPIget component comprises of integration into uknown systems, possibly heterogenius, we can provide only general information about steps which needs to be executed in order to put the user tracing into operation. Following steps needs to be executed.
-	Download the IPIget component
-	Set database connection parameters on StoreVisit.php
-	Run sql query creating storage table (CreateTable.sql) on your server-side database
-	Link all client-side scripts to all pages, where the user tracing should be executed (see the examples in SampleCatalogue.html and SampleObjectDetail.html)
-	Update your webpages to properly identify blocks containing objects (add class attributes as shown in the SampleCatalogue.html)
-	Update your webpages to make informations about userID, pageID, objectID and pageType available. These information are beyond control of IPIget and must be assets from the server-side. PageID could be simple URL of the current page, users can be identified via cookie or login information.
-	Upload all changed files

Further information on IPIget can be found in
Peska, L.: IPIget – The Component for Collecting Implicit User Preference Indicators. In ITAT 2014, Ustav informatiky AV CR, 2014, 22-26, http://itat.ics.upjs.sk/workshops.pdf

If you use IPIget in your work, we will be happy, if you cite it - 
either paper above describing component or the paper 
which contained link to this component. 
Also, we will be happy to know about your work. If you write a paper using our 
component, please send us a copy.

Contact: 

Ladislav Peska,
Charles University in Prague, Czech Republic,
peska@ksi.mff.cuni.cz
