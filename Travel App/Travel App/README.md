# Avino Internship
CONTENTS OF THIS FILE
<ul>
<li>Introduction to the Salesforce Platform</li>
<li>Introduction to the Travelling App</li>
</ul>

**Introduction about the Platform**


Salesforce is a Custom Relationship Management (CRM) platform. It is a cloud based technology. Being cloud based, it allows users to access the platform from anywhere in the world all they need is connection to the Internet. It is efficient as it has multi-tenency functionality. It helps the companies to connect with customers more efficiently. Companies can collect all the requirements from the customers and build the app accordingly with maximum functioality.

**Description about Objects and Fields**

**Objects**

Objects in salesfroce can be seen as table in databases. It tells what part of information will it be containing.
There are two types of objects in Salesforce:
1) Standard Objects - They are built in and comes with the platform. Eg: Account, Opportunities, Leads, etc.
2) Custom Objects - Users of Salesforce build these according to requirements.

                    Steps:
                        
                        
                    Setup -> Object Manager -> Create new Custom Obejcts
                         
**Fields**

Fields are contained in an obejct. Fields are of specific data type which ensures which data can be stored in the fields.
There are two types of fields in Salesfoece:
1) Standard Fields - These are the fields which can not be deleted and exist by default in the Object. Eg: Last modified by, Created By, etc
2) Custom Fields - These fields are created according to the requirements.

                   Steps:
                   
                   Setup -> Object Manager -> Choose the Object in which field is to be created -> New Filds and Relationships -> New Field -> Choose data type -> Next -> Fill in the details



**Validation Rule**

Validations rules are used to validate the data that user will enter while creating the records. For eg. Contach number must containg only numbers, Name must not contain any numbers, etc.

                   Steps:

                   Obejct Manager -> Choose the object -> Scroll down to Validation rules -> Create New -> Create the rule and make sure actice button is marked -> Save


**Roll Up Summary**

This is created only when two objects are related to each pther through Master-Detail relationship. This is created on Master side, it allows to summarize the related fields on detail object through various functions like, Sum, Count, Max, Min.


                   Steps:

                   Object Manager -> Choose the Object(must be a master) -> Fields and Relatipnships -> New -> Choose Roll up summary -> Choose field -> Choose function -> Save

These is also a functionality called filter records, it helps to filder records based on some criteria that user will specify and the records that will pass that criteria will be summarized. 


**Formula Fields**

These fields are used to create fields that are to be calculated through some formula using object's own fields or cross object fields. The values in these fiedls are calculated upn saving the record according to the formula. They are read only fields.

                   Steps:
                   
                   Object Mamnager -> Choose Object -> Fields and Relationships -> New -> Formula -> Enter name and choose which data type will field return -> Write formula using functions -> Check Synatax -> Save
                   
**Automation tools**

These tools are used to automate the process in one way or the other. There are four tools:
<ul>
  <li>Workflow: Actions are- Update records, create task, email alrets, outbond messages</li>
  <li>Approval Process: used to create a process to approve/reject a request and actions are same like workflow</li>
  <li>Process Builder: it is used to perform more complex functionality and it can be called using apex also.</li>
  <li>Lightning Flows: used to build a more complex flow on objects</li>
</ul>


**Introduction to the App**


In the given project, a **Travelling App** is built with various functionalities. 

Everyone loves to travel be it official or casual. Hvaing said that of course official travelling needs permissions and approvals.

Here is the travelling app to the rescue, it allows you schedule your trip and attach approxiamte expenses for the trip. Once scheduled the trip, the employee has to submit the trip details for approvals from higher authorities. On submission the authoritues get emails regarding the request and they can approve or reject accordingly. Whatever the reply is, the emplyee gets intimidates by an email and also the status of requst is updated.
This helps in easy tracking of requests and everyone is notified.

Other advantages of the app are, if employee has the trip outside the state then the checkbox for the out-of-state is checked autmatically. In addition, if by mistake employee sets trip end date lesser than start date, employee is notified this reducing the chances of error. Other one is once expenses are ceated they are summed up and shown in record which helps to track the total amount and saves from summing up expenses manually.

All the functionality of the app are tested and ready to use.
