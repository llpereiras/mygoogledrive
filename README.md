https://github.com/gimite/google-drive-ruby#how-to-use

In this example, we use GoogleDrive.saved_session, the most simple way for authorization, which prompts the credential via command line. See the document of GoogleDrive.login_with_oauth method for more advanced ways for authorization e.g., OAuth in Web apps and service accounts.

First, follow Step 1 and 2 of "Authorizing requests with OAuth 2.0" in this page to get a client ID and client secret for OAuth. Set "Application type" to "Other" in the form to create a client ID if you use GoogleDrive.saved_session method as in the example below.

Next, create a file config.json which contains the client ID and client secret you got above, which looks like:

{
  "client_id": "xxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com",
  "client_secret": "xxxxxxxxxxxxxxxxxxxxxxxx"
}
