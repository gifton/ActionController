# Action Controller: 
* Master View controller that has a view at the bottom ''' ~100px'''.  View at bottom of MasterViewController is variable.  Applications will include /global/ TabBarComponents that can be initiated and instantiated from any controller at any time.  MasterViewController has another view directly above the TabBarView That is used as a secondary display to the mainView, and is mostly hidden.  The initiate /MasterControllerView as a ''' lazy ''' object.  MasterViewController will have a number of delegates that define button actions, text input, database responses etc.  MasterViewController's contentView is overlayed MasterControllerView to give the effect that the view and the tabs are disconnected physically.  ContentView will be an extension of IUView that will be insaantiated with '''  init(frame: CGRect, view: viewType)

ContentView will have a delegate shared with the view at the bottom of the MAsterViewController, who inturn will controll BOTH the MasterViewView and the ContentView

Heirarchy: 
MasterViewController 
	|
	|
    ActionView 
        |
actionDelegate
   /         \
ContentView   MasterViewView


Architecture:

 * Model
	* FeedCell
	* UserModel
	* API Response Model
* Components
	* Customized text, UI, label views etc.  
	* All TabBar components(global)
* Pages/
	* PageOne/
		* index/
			* index
			* layout
			* tabBarRequirements
				*connects index to tabbar
				* includes all tabbar componnents used in index
			* Networking
			* analytics
	* PageTwo/
		* index/
			* index
                        * layout                      
                        * tabBarRequirements
                                *connects index to tabbar
                                * includes all tabbar componnents used in index
                        * Networking
                        * analytics
* MasterControllerView/
	* index
		* standard display
		* UPDATE_ACTION_CONTROLLER()
		* Switch statement controlling what gets displayed
		* delegate that connects to tabbed pages
	* layout/
		* components_inividual_layout_here
	* pages/

