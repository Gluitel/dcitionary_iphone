# dcitionary_iphone

Dictionary_For_iPhone
A dictionary based on iphone's dictionary.

I don't understand why would apple not make its dictionary easily accessible. One has to go through at least 5 steps to find the meaning of a word in an iphone: 1) open notes app, 2) create a new note, 3) type the word, 4) double tap the word, 5) select "define" from list of UIMenuItems, and then see the meaning of the word. If you say, "use third party apps", I believe why use a third party app when you already have a dictionary installed in your iphone that you can't uninstall. What I did was following: 1) Created a UITextField 2) Made the ViewController class that storyboard created for me the delegate of UITextFieldDelegate Protocol. 3) Implemented the textFieldDidEndEditing() method of the protocol and presented the dictionary there

This app reduces the number of steps to 1) open the app 2) type the word 3) hit "Go"

This is a dictionary that can be installed on iphones with ios 9.2 or greater. It is technically an app because it looks like one but in fact it is not. What I have done here is created an interface to access the system dictionary manipulating UIReferenceLibraryViewController (Apple says I should not be using it and I created this only for my use, so please do not download/install it). It works and makes it easier for me to look up words. There are free dictionaries available in app store but what I created has been sufficient for my purpose.
