# DocuShare Web Application

DocuShare is a web application to upload and share links to documents. We currently support displaying `.md` files as well as other types of files your browser may support (i.e. .pdf, .jpg, .etc). We also support user accounts that allow you to save all of your uploaded documents to view later as well as removing documents you no longer need.

## [Live Application](https://docu-share.onrender.com/)
Note: hosted on free Render tier so may require a few minutes to for the initial load

### Built With
- Ruby 3.0.3
- Rails 7.0.6
- Tailwind CSS 2+
- Rspec
- AWS S3

## Installation
1. Clone the repo
  ```sh
  git clone git@github.com:kat3kasper/docu_share.git
  ```
2. Bundle
  ```sh
  bundle install
  ```
3. Setup database
  ```sh
  bin/rails db:prepare
  ```

### Run the application
To run both the server and to have tailwind watch for changes:
```sh
./bin/dev
```

### Run the test suite
  ```sh
    rspec
  ```

## Roadmap

Initial roadmap was planned out in this [gist](https://gist.github.com/kat3kasper/bd7abeada54e9eb94c560b22307e3a1b)

- [X] Document upload and storage
- [X] Each file should be accessible on the public web via a unique URL
- [X] Upload and download other types of documents
- [X] Display Markdown documents as web pages
- [X] A way for teachers to sign up and create their accounts
- [X] Access controls (basic read & delete for documents associated with Users)
- [ ] Add more testing! especially around authorization
- [ ] Update views for mobile
- [ ] Admin interface for us to manage teacher accounts
- [ ] Folders of files
- [ ] More robust access controls
- [ ] Student accounts
- [ ] Students being able to view a list of files in a folder
- [ ] View metrics for documents
- [ ] Suggest changes to documents
- [ ] Version control
- [ ] Revision history
- [ ] Multiple simultaneous editors

## Deployment
Application and database are currently deployed on Render. All updates to main are automatically deployed.

[Production Web Service](https://dashboard.render.com/web/srv-cj3bj86nqql8v0fktkqg)

[AWS Bucket](https://s3.console.aws.amazon.com/s3/buckets/docu-share-production?region=us-west-1&tab=objects)
