# Action Controller: 
### Used for < 25 view projects
* Buit around an ActionController(inhareted from UIViewController) that has a dynamic view at the bottom ''' ~100px''' That changes Based on the contentViews, well, content.  Applications will include /global/ TabBarComponents that can be initiated and instantiated from any controller at any time. 

* ActionView has another view directly above that is used as a complimentary display to the ContentView, and is mostly hidden. Initiate /ActionComplimentaryView as a ''' lazy ''' object.  

* /ActionDelegate connects the ActionController to the contentView, actionComplimentaryView, and actionView.  ''' UpdateState() ''' takes in parameters of 
	* ActionView components [[ActionViewComponent]]
	* ActionViewBackgroundColor (uicolor)
	* ActionComplimentaryView (uiview)
	* ContentView component Updates (uiview, action)
	* sender (uiview)

MasterViewController's contentView is overlayed MasterControllerView to give the effect that the view and the tabs are disconnected physically.  ContentView will be an extension of IUView that will be insaantiated with '''  init(frame: CGRect, view: viewType)

ContentView will have a delegate shared with the view at the bottom of the MAsterViewController, who inturn will controll BOTH the MasterViewView and the ContentView

Heirarchy: 
ActionViewController 
	|
    ActionDelegate
	|
    ActionView 
        |
     Delegate
     /      \
ContentView  MasterViewView


Architecture:

 * Model
	* TableCell Data Model (struct)
	* UserModel (struct)
	* API Response Model (decodable struct)
	* ActionView Components (struct)
	* ComplimentaryView (enum)
	* updates (data)
* Components
	* TextViews
	* Buttons
	* Table/collection view cell's
	* ComplimentaryView views
	* ActionView components
* Pages/
	* PageOne/
		* index/
			* index
			* layout
			* ActionViewReq's
				*connects index to tabbar
				* includes all tabbar componnents used in index
			* Networking
			* analytics
	* PageTwo/
		* index/
			* index
                        * layout                      
                        * ActionViewreq's
                                *connects index to tabbar
                                * includes all tabbar componnents used in index
                        * Networking
                        * analytics
* MasterControllerView/
	* index
		* initiate ActionView 
		* UPDATE_ACTION_CONTROLLER()
		* Switch statement controlling what gets displayed
		* delegate that connects to tabbed pages
	* layout/
		* components_inividual_layout_here
	* pages/
		* pageOne/
			* delegate
		* pageTwo/
			* delegate

