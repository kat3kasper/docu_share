## Overall Questions?
- How do we expect the different types of users - Teachers, Students, Admin to access the application? Web or mobile?
- Do we have designs or mockups as to what any of the features will look like? Do we have access to someone who can or will we complete the development ourselves?
- Does this have to hook up with other school applications that already exist where we can utilize some of these features like authentication, user roles, etc?

## Individual Feature Thoughts and Questions
A way for teachers to sign up and create their accounts
- Devise 
- Utilize built in views to run quickly
- What does having an account mean? Teachers can view all the files they have uploaded? Can they delete them?

Document upload and storage
- Amazon S3

Display Markdown documents as web pages
- https://github.com/vmg/redcarpet ?

Each file should be accessible on the public web via a unique URL
- File needs a model in the DB
- can create unique URL associated


Upload and download other types of documents
- The students just need to be able to download the file? No viewer associated with the different file types?

Student accounts
- Can still use devise 
- Need roles associated with users
- Do students need to be logged in to see the documents? If so do we have to associated them with a teacher for authorization?

Admin interface for us to manage teacher accounts
- Railsadmin 
- additional 'Admin' role
- What do we need to "manage"? Actual documents or only account admininstation like resetting passwords? removing accounts?

Folders of files
- What does this interaction look like? What are the pages needed? Can we have nested folders? File should be able to be moved into folders later.

Students being able to view a list of files in a folder
- Do we also need links to the folders as well? 

View metrics for documents
- What metrics do we want to track? time on page? unique views? total views?
- Do we need info on particular students? timestamps associated with the views?
- How will the admin utilize this?

Suggest changes to documents
- How precise do we need to be on what we want available to change? Like Google Docs where you could highlight or click a particular line? Or starting with something simple like commenting on the document?


Version control
- How do we differentiate between versions of the same file? Teachers are uploading files still or can they edit them inline on the application? Teachers need to go to a particular file to update then? And they can view all versions? Do we need to keep the same unique URL and only show the most recent version then? Then we need to keep track of 2 URLs


Revision history
- Is this the diff between files? Easier to do with text based files if we stick to MD but would be harder if we allow "other types of documents" pdfs, etc. 


Access controls
- Pundit or Cancancan can work togetheer with railsadmin
- Questions in student accounts -- what controls need to be put in place? 

Multiple simultaneous editors
- Do you mean like Google docs where mutiple people can be editting one document at the same time? 
- What is this helpful for? 



## MVP Priorities in Order
1. Document upload and storage
2. Each file should be accessible on the public web via a unique URL (built in 'Upload and download other types of documents')
3. Display Markdown documents as web pages
4. A way for teachers to sign up and create their accounts

These seem like the most basic features -> "that allows teachers to upload documents to share with their students". 
We can get a super simple version working that is similar to bitly, upload a document and get a link that downloads. Then build up from there. Markdown files don't look great to download without the formatting to view it so I think displaying them as web pages so student can view the files on their phones is more important than teacher accounts to start. 


#### Rest of features rough ordering:
Admin interface for us to manage teacher accounts - Once accounts are able to be created on a platform, it's important to have the ability to manage those accounts. If we have developers that can easily do this, then maybe this could wait a bit. 

Folders of files - Likely that teachers want some sort of file organization quite quickly

Access controls - These may come into play quite quickly. If teachers are able to CRUD documents, only they and possibly admins should be able to have update/delete access. 

Student accounts - Need more understanding on what students need accounts for

Students being able to view a list of files in a folder

View metrics for documents

Suggest changes to documents

Version control --> this could be pushed up with editing? would have to understand the importance of this. Easier to send out a new link for now? Or more important to have the underlying file for viewing changed?

Revision history

Multiple simultaneous editors