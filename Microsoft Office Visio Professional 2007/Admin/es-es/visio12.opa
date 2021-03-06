;// _lcid="1033" _version="12.0.4518"
CLASS MACHINE

CATEGORY !!L_MicrosoftVisiomachine 
POLICY !!L_DonotopeninIE 
KEYNAME "Software\Classes\Visio.Drawing.11"
		VALUENAME "BrowserFlags"
		VALUEON NUMERIC 0
		VALUEOFF NUMERIC 8
	EXPLAIN !!L_DonotopeninIEexplain 
	END POLICY
END CATEGORY
CLASS USER

CATEGORY !!L_MicrosoftVisio
CATEGORY !!L_ToolsOptions
CATEGORY !!L_View
KEYNAME Software\Microsoft\Office\12.0\Visio
POLICY !!L_Textquality
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Textquality DROPDOWNLIST
	VALUENAME TextDisplayQuality
	ITEMLIST
		NAME	!!L_ClearTypetextdisplay	VALUE "2"
		NAME	!!L_Higherqualitytextdisplay	VALUE "1" DEFAULT
		NAME	!!L_Fastertextdisplay	VALUE	"0"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_TextqualityExplain
	END POLICY
CATEGORY !!L_Show
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_ChooseDrawingTypePane
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ShowTemplatePaneByDefault
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_ShowsthecatalogoftemplateswhenyouopenVisio
	END POLICY
POLICY !!L_Statusbar
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME StatusDisplay
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_StatusbarExplain
	END POLICY
POLICY !!L_SmartTags
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ShowSmartTags
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_SmartTagsExplain
	END POLICY
POLICY !!L_StencilwindowScreenTips
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME TipsStencil
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_StencilwindowScreenTipsExplain
	END POLICY
POLICY !!L_OtherScreenTips
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME TipsDrawing
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_OtherScreenTipsExplain
	END POLICY
END CATEGORY
CATEGORY !!L_Displayoptions
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_Smoothdrawing
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME DrawOffscreen
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_IfCheckedwhenyoustretchabitmaporanothernonVisioo
	END POLICY
POLICY !!L_Higherqualityshapedisplay
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME HighQualityShapeDisplay
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_DetermineswhetherantialiasingisusedtodrawshapesA
	END POLICY
POLICY !!L_Greektext
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_DisplayGreektextwhenfontsizeisunder NUMERIC
	VALUENAME GreekTextSize
	SPIN 1
	MIN 0
	MAX 24
	DEFAULT 4
	END PART
	EXPLAIN !!L_Specifiesthatwhenthetextonthescreenissmallerthan
	END POLICY
END CATEGORY
CATEGORY !!L_Stencilspacing
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_Charactersperline
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Charactersperline NUMERIC
	VALUENAME MasterTextWidth
	SPIN 1
	MIN 5
	MAX 20
	DEFAULT 12
	END PART
	EXPLAIN !!L_Forashapeonastencilspecifiesapproximatelyhowmany
	END POLICY
POLICY !!L_Linespermaster
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Linespermaster NUMERIC
	VALUENAME MasterTextHeight
	SPIN 1
	MIN 1
	MAX 4
	DEFAULT 2
	END PART
	EXPLAIN !!L_Forashapeonastencilspecifiesapproximatelyhowmany
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_General
CATEGORY !!L_Generaloptions
KEYNAME Software\Microsoft\Office\12.0\Visio
POLICY !!L_Undolevels
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
	PART !!L_Undolevels NUMERIC
	VALUENAME MaxUndo
	SPIN 1
	MIN 0
	MAX 99
	DEFAULT 20
	END PART
	EXPLAIN !!L_Specifiesthenumberofconsecutiveactionsyoucanundo
	END POLICY
POLICY !!L_Recentlyusedfilelist
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Sizeofrecentlyusedfilelist NUMERIC
	VALUENAME MaxRecentFiles
	SPIN 1
	MIN 0
	MAX 9
	DEFAULT 4
	END PART
	EXPLAIN !!L_Specifiesthenumberofrecentlyusedfilestolistonthe
	END POLICY
END CATEGORY
CATEGORY !!L_Drawingwindowoptions
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_ZoomonrollwithIntelliMouse
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ZoomOnRoll
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Ifselectedletsyouzoominoroutfromadrawingbyrollin
	END POLICY
POLICY !!L_Centerselectiononzoom
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ZoomMode
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_Specifiesthatwhenyouzoominwhatevershapewasselect
	END POLICY
POLICY !!L_Selectshapespartiallywithinarea
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME AreaSelection
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_Ifyouselectshapesbyusingaselectionnetdraggingabo
	END POLICY
POLICY !!L_Enablelivedynamics
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME LiveMouseDynamics
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Whenyouresizeorrotateashapeyoucanseetheshapeasit
	END POLICY
POLICY !!L_Enalbeconnectorsplitting
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME AllowShapeSplitting
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Whenyouplaceashapeonthelineofaconnectoritsplitsa
	END POLICY
POLICY !!L_Automaticallyzoomwheneditingtext
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Zoomwheneditingtextwithsizeunder NUMERIC
	VALUENAME TextAutoZoomFontSize
	SPIN 1
	MIN 0
	MAX 24
	DEFAULT 8
	END PART
	EXPLAIN !!L_andspecifiesthatiftextissettothespecifiedpointsi
	END POLICY
POLICY !!L_EnableAutoConnect
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME EnableAutoConnect
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_SetsthevalueinthecorrespondingUIoption
	END POLICY
POLICY !!L_ShowMoreHandles
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME HandleBehavior
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_SetsthevalueinthecorrespondingUIoption
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_SaveOpen
KEYNAME Software\Microsoft\Office\12.0\Visio 
POLICY !!L_SaveVisiofilesas
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_SaveVisiofilesas DROPDOWNLIST
	VALUENAME SaveFileFormat
	ITEMLIST
		NAME !!L_VisioDocument 	VALUE "0"		DEFAULT
						NAME !!L_VisioXMLDocument 		VALUE	"2"
						NAME !!L_Visio2002  	VALUE	"1"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_IdentifiesthedefaultfileformatinwhichVisiofilesa
	END POLICY
CATEGORY !!L_Saveoptions
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_Promptfordocumentpropertiesonfirstsave
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME PromptForSummaryInfo
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Indicateswhetherthepropertiesdialogboxopenswhena
	END POLICY
POLICY !!L_SaveAutoRecoverinfo
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_EnableAutoRecoveryinfo CHECKBOX
	VALUENAME AutoRecovery
	VALUEON "1"
	VALUEOFF "0"
	END PART
	PART !!L_AutoRecoversavefrequencyminutes NUMERIC
	VALUENAME AutoRecoveryInterval
	SPIN 1
	MIN 1
	MAX 20
	DEFAULT 10
	END PART
	EXPLAIN !!L_Indicateswhetheradocumentrecoveryfileiscreatedat
	END POLICY
END CATEGORY
CATEGORY !!L_Languageforfileconversion 
KEYNAME Software\Microsoft\Office\12.0\Visio 
POLICY !!L_Languageforfileconversion 
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Languageforfileconversion DROPDOWNLIST
	VALUENAME FileConversionMode
	ITEMLIST
		NAME	!!L_LetVisiodecidelanguage 	VALUE "0" DEFAULT
		NAME	!!L_Promptforlanguage 	VALUE "1" 
		NAME	!!L_Usethefollowinglanguage 	VALUE	"2"
	END ITEMLIST
	NOSORT
	END PART
	PART !!L_Uselanguage EDITTEXT
	DEFAULT "0"
	VALUENAME FileConversionLanguage
	END PART
	EXPLAIN !!L_SpecifiesthatVisioshoulddeterminewhichlanguageto
	END POLICY
END CATEGORY
CATEGORY !!L_Warningsoptions
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_Showfilesavewarnings
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ShowXMLSaveWarnings
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Indicateswhetherawarningmessageisdisplayedwhenyo
	END POLICY
POLICY !!L_Showfileopenwarnings
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME ShowXMLOpenWarnings
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Indicateswhetherawarningmessageisdisplayedwhenyo
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_Units
KEYNAME Software\Microsoft\Office\12.0\Visio 
CATEGORY !!L_Defaultunits
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
POLICY !!L_Text
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
	PART !!L_Text DROPDOWNLIST
	VALUENAME MeasurementSystem_Text
	ITEMLIST
		NAME !!L_Picas	VALUE 	"51"
							NAME !!L_Points	VALUE	"50"			DEFAULT
							NAME !!L_Ciceros	VALUE	"54"
							NAME !!L_Didots  	VALUE	"53"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_Specifiestheunitofmeasureforindentslinespacingan
	END POLICY
POLICY !!L_Angle
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
	PART !!L_Angle DROPDOWNLIST
	VALUENAME MeasurementSystem_Angle
	ITEMLIST
		NAME !!L_Degrees 		VALUE 	"81"		DEFAULT
							NAME !!L_DegMinSec 	VALUE	"82"
							NAME !!L_MinSec  		VALUE	"84"
							NAME !!L_Seconds 		VALUE	"85"
							NAME !!L_Radians  		VALUE	"83"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_Specifiestheunitofmeasurefortheangleofrotation
	END POLICY
POLICY !!L_Duration
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
	PART !!L_Duration DROPDOWNLIST
	VALUENAME MeasurementSystem_Duration
	ITEMLIST
		NAME !!L_Weeks 	VALUE 	"43"		
							NAME !!L_Days	VALUE	"44"		DEFAULT
							NAME !!L_Hours	VALUE	"45"
							NAME !!L_Minutes	VALUE	"46"
							NAME !!L_Seconds 	VALUE	"47"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_Specifiestheunitofmeasurefordurationwhichiselaps
	END POLICY
POLICY !!L_AlwaysofferMetricandUSunitsfornewblankdrawingsan
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME OfferMetricAndUS
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_ShowsbothNewDrawingUSUnitsandNewDrawingMetricwhe
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_ShapeSearch
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_Showshapesearchpane
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
		VALUENAME ShowShapeSearchPane
		VALUEON "1"
		VALUEOFF "0"
	EXPLAIN !!L_Displaystheshapesearchuserinterfaceelements
	END POLICY
POLICY !!L_Searchfor
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Searchfor DROPDOWNLIST
	VALUENAME FindShapesAllWords
	ITEMLIST
		NAME	!!L_Allofthewords 	VALUE "1" DEFAULT
						NAME	!!L_Anyofthewords 	VALUE "0" 
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_SetsthevalueinthecorrespondingUIoption
	END POLICY
CATEGORY !!L_Results
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_Searchresults
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Searchresults DROPDOWNLIST
	VALUENAME FindShapesGrouping
	ITEMLIST
		NAME !!L_Alphabetically 		VALUE	"0" DEFAULT
							NAME !!L_ByGroup 		VALUE	"1"
	END ITEMLIST
	NOSORT
	END PART
	EXPLAIN !!L_Specifieswhetherresultsarereturnedinaphabeticalo
	END POLICY
POLICY !!L_Openresultsnewwindow
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME FindShapesRecycle
	VALUEON "0"
	VALUEOFF "1"
	EXPLAIN !!L_Indicateswhetheranewsearchresultsstenciliscreate
	END POLICY
POLICY !!L_Warnaboutresults
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	PART !!L_Enablewarningsaboutresults CHECKBOX
	VALUENAME FindShapesWarn
	VALUEON "1"
	VALUEOFF "0"
	END PART
	PART !!L_Warnwhenresultsaregreaterthan NUMERIC
	VALUENAME FindShapesWarnNumber
	SPIN 1
	MIN 1
	MAX 9999
	DEFAULT 100
	END PART
	EXPLAIN !!L_Indicateswhetherawarningmessageappearswhenthenum
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_Security
KEYNAME Software\Microsoft\Office\12.0\Visio
CATEGORY !!L_TrustCenter
KEYNAME Software\Microsoft\Office\12.0\Visio
POLICY !!L_VBAWarningsPolicy 
KEYNAME Software\Microsoft\Office\12.0\Visio\Security
	PART !!L_Empty DROPDOWNLIST
				VALUENAME VBAWarnings
	ITEMLIST
					NAME !!L_TrustBarwarningsforallmacros  VALUE NUMERIC 2 DEFAULT
					NAME !!L_TrustBarwarningfordigitallysigned  VALUE NUMERIC 3
					NAME !!L_Nowarningsforallmacrosbutdisable  VALUE NUMERIC 4
					NAME !!L_NoSecuritychecksformacros  VALUE NUMERIC 1
	END ITEMLIST
				NOSORT
	END PART
	EXPLAIN !!L_VBAWarningsExplain 
	END POLICY
POLICY !!L_Disableallapplicationextensions				
KEYNAME Software\Microsoft\Office\12.0\Visio\Security
					VALUENAME DisableAllAddins
					VALUEON NUMERIC 1
					VALUEOFF NUMERIC 0
	EXPLAIN !!L_Disableallapplicationextensions 
	END POLICY
POLICY !!L_RequirethatApplicationExtensionsaresigned 
KEYNAME Software\Microsoft\Office\12.0\Visio\Security
					VALUENAME RequireAddinSig
					VALUEON NUMERIC 1
					VALUEOFF NUMERIC 0
	EXPLAIN !!L_RequirethatApplicationExtensionsaresignedExplain
	END POLICY
POLICY !!L_DisableTrustBarNotificationforunsigned 
KEYNAME Software\Microsoft\Office\12.0\Visio\Security
					VALUENAME NoTBPromptUnsignedAddin
					VALUEON NUMERIC 1
					VALUEOFF NUMERIC 0
	EXPLAIN !!L_DisableTrustBarNotificationforunsignedExplain
	END POLICY
POLICY !!L_TrustedLocsnotonmachine 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations"
			VALUENAME AllowNetworkLocations 
			VALUEON NUMERIC 1
			VALUEOFF NUMERIC 0
	EXPLAIN !!L_TrustedLocsnotonmachineExplain 
	END POLICY
POLICY !!L_DisableTrustedLoc 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations"
			VALUENAME AllLocationsDisabled 
			VALUEON NUMERIC 1
			VALUEOFF NUMERIC 0
	EXPLAIN !!L_DisableTrustedLocExplain
	END POLICY
POLICY !!L_TrustedLoc1 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation1"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc2
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation2"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc3
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation3"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc4
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation4"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc5
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation5"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc6
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation6"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc7
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation7"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc8 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation8"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc9
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation9"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc10 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation10"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc11 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation11"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc12 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation12"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc13 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation13"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc14 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation14"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc15 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation15"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc16 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation16"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc17 
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation17"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc18
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation18"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc19
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation19"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
POLICY !!L_TrustedLoc20
KEYNAME "Software\Microsoft\Office\12.0\Visio\Security\Trusted Locations\PolLocation20"
	PART !!L_Pathcolon EDITTEXT
				VALUENAME Path	
	END PART
	PART !!L_Datecolon EDITTEXT
				VALUENAME Date
	END PART
	PART !!L_Descriptioncolon EDITTEXT
				VALUENAME Description
	END PART
	PART !!L_Allowsubfolders CHECKBOX
				VALUENAME AllowSubFolders
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	END PART
	EXPLAIN !!L_TrustedLocationsExplain 
	END POLICY
END CATEGORY
CATEGORY !!L_MacroSecurity
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_EnableMicrosoftVisualBasicforApplications
KEYNAME Software\Microsoft\Office\12.0\Visio\Security
	VALUENAME NoVBA
	VALUEON NUMERIC 0
	VALUEOFF NUMERIC 1
	EXPLAIN !!L_EnablesMicrosoftVisualBasicforApplicationsIfclea
	END POLICY
POLICY !!L_LoadMicrosoftVisualBasicforApplicationsprojectsf
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME LoadVBAProjectsFromText
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_IfyouwanttobeabletohaveyourVBAprojectworkindrawi
	END POLICY
POLICY !!L_EnableMicrosoftVisualBasicforApplicationsproject
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	VALUENAME CreateVBAProjects
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_EnablescreationsofVBAprojectswhenyouopenorcreate
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_Advanced
KEYNAME Software\Microsoft\Office\12.0\Visio
CATEGORY !!L_Advancedoptions
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
POLICY !!L_EnableMicrosoftVisualBasicforApplicationsproject
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME CreateVBAProjects
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_EnablescreationsofVBAprojectswhenyouopenorcreate
	END POLICY
POLICY !!L_Runindevelopermode
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME Developer
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_Enablescertainuserinterfacefunctionsforthedevelo
	END POLICY
POLICY !!L_OpeneachShapeSheetinthesamewindow
KEYNAME Software\Microsoft\Office\12.0\Visio\Document
	VALUENAME RecycleShapeSheetWindow
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_OpensmultipleShapeSheetsinthesamewindowrathertha
	END POLICY
POLICY !!L_RecordactionsinMicrosoftOfficeOutlookjournal
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME JournalToOutlook
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_Specifiesthatyouractionssuchaseditingafilebereco
	END POLICY
POLICY !!L_PutallsettingsinWindowsregistry
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME PutAllInRegistry
	VALUEON "1"
	VALUEOFF "0"
	EXPLAIN !!L_AddsallpossibleapplicationsettingsintotheWindows
	END POLICY
POLICY !!L_EnableAutomationevents
KEYNAME Software\Microsoft\Office\12.0\Visio\Application 
	VALUENAME EventsEnabled
	VALUEON "1"
	VALUEOFF "0"	
	EXPLAIN !!L_EnablesVisioeventstobesenttoVisioaddonsandVBAmac
	END POLICY
END CATEGORY
CATEGORY !!L_Freeformdrawing
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_Precision
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Precisioncolon NUMERIC
	VALUENAME LineTolerance
	SPIN 1
	MIN 0
	MAX 10
	DEFAULT 5
	END PART
	EXPLAIN !!L_ControlsthemarginoferrorallowedwhiletheFreeformt
	END POLICY
POLICY !!L_Smoothing
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Smoothing NUMERIC
	VALUENAME CubicTolerance
	SPIN 1
	MIN 0
	MAX 10
	DEFAULT 5
	END PART
	EXPLAIN !!L_Controlshowpreciselythemousemovementsaresmoothed
	END POLICY
END CATEGORY
CATEGORY !!L_Inktool
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_Autocreatespeed
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Autocreatespeedcolon NUMERIC
	VALUENAME InkToolSpeed
	SPIN 1
	MIN 0
	MAX 4
	DEFAULT 2
	END PART
	EXPLAIN !!L_ControlsthemarginofdelayafterinkdraawnwiththeINK
	END POLICY
END CATEGORY
CATEGORY !!L_FilePaths
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_Drawings
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Drawingscolon EDITTEXT
	VALUENAME DrawingsPath
	END PART
	EXPLAIN !!L_DisplaystheadditionallocationofdrawingsWhenyouad
	END POLICY
POLICY !!L_Templates
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Templatescolon EDITTEXT
	VALUENAME TemplatePath
	END PART
	EXPLAIN !!L_DisplayestheadditionallocationoftemplatesWhenalo
	END POLICY
POLICY !!L_Stencils
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Stencilscolon EDITTEXT
	VALUENAME StencilPath
	END PART
	EXPLAIN !!L_DisplaystheadditionallocationofstencilsWhenaloca
	END POLICY
POLICY !!L_Help
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Helpcolon EDITTEXT
	VALUENAME HelpPath
	END PART
	EXPLAIN !!L_DisplaystheadditionallocationofHelpfiles
	END POLICY
POLICY !!L_Addons
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Addonscolon EDITTEXT
	VALUENAME AddonsPath
	END PART
	EXPLAIN !!L_Displaystheadditionallocationofmacrosandaddons
	END POLICY
POLICY !!L_Startup
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_Startupcolon EDITTEXT
	VALUENAME StartUpPath
	END PART
	EXPLAIN !!L_Displaystheadditionallocationformacrosandaddonso
	END POLICY
POLICY !!L_MyShapes
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_MyShapescolon EDITTEXT
	VALUENAME MyShapesPath
	END PART
	EXPLAIN !!L_Displaysthepathofthemyshapesfolder
	END POLICY
POLICY !!L_FavoritesStencilName
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_FavoritesStencilNamecolon EDITTEXT
	VALUENAME FavoritesStencilName
	END PART
	EXPLAIN !!L_Displaysthenameofthestencilcreatedinthe
	END POLICY
END CATEGORY
CATEGORY !!L_Colorsettings
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
POLICY !!L_Drawingwindow
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Drawingwindow EDITTEXT
	DEFAULT "255 255 255"
	VALUENAME ColorPage
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_Drawingbackgroundstart
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Drawingbackgroundstart EDITTEXT
	VALUENAME ColorNonPageGradStart
	DEFAULT "192 255 255"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_Drawingbackgroundend
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Drawingbackgroundend EDITTEXT
	VALUENAME ColorNonPageGradEnd
	DEFAULT "0 204 204"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_Stencilwindow
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Stencilwindow EDITTEXT
	VALUENAME ColorMasterName
	DEFAULT "0 0 0"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_Stencilbackgroundstart
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Stencilbackgroundstart EDITTEXT
	VALUENAME ColorStencilGradStart
	DEFAULT "128 255 128"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_Stencilbackgroundend
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_Stencilbackgroundend EDITTEXT
	VALUENAME ColorStencilGradEnd
	DEFAULT "0 214 134"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_PrintPreviewbackground
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_PrintPreviewbackground EDITTEXT
	VALUENAME ColorPreviewBackground
	DEFAULT "128 128 128"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
POLICY !!L_FullScreenbackground
KEYNAME Software\Microsoft\Office\12.0\Visio\Colors
	PART !!L_FullScreenbackground EDITTEXT
	VALUENAME ColorFullScreenBackground
	DEFAULT "0 0 0"
	END PART
	EXPLAIN !!L_groupoftheColorSettingsdialogintheAdvancedtaboft
	END POLICY
END CATEGORY
END CATEGORY
END CATEGORY
CATEGORY !!L_ToolsAutoCorrectOptions
KEYNAME Software\Microsoft\Office\12.0\Visio 
CATEGORY !!L_AutoFormatasyoutype
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
POLICY !!L_Straightquoteswithsmartquotes
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
				VALUENAME SmartQuotes
				VALUEON NUMERIC 1
				VALUEOFF NUMERIC 0
	EXPLAIN !!L_ChecksUnchecksthecorrespondingUIoption
	END POLICY
POLICY !!L_Fractionswithfractioncharacter
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
	VALUENAME Fractions
	VALUEON NUMERIC 1
	VALUEOFF NUMERIC 0
	EXPLAIN !!L_ChecksUnchecksthecorrespondingUIoption
	END POLICY
POLICY !!L_Ordinalswithsuperscript
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
	VALUENAME Ordinals
	VALUEON NUMERIC 1
	VALUEOFF NUMERIC 0
	EXPLAIN !!L_ChecksUnchecksthecorrespondingUIoption
	END POLICY
POLICY !!L_Hyphenswithdash
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
	VALUENAME Dashes
	VALUEON NUMERIC 1
	VALUEOFF NUMERIC 0
	EXPLAIN !!L_ChecksUnchecksthecorrespondingUIoption
	END POLICY
POLICY !!L_Smileyfacesandarrowswithspecialsymbols
KEYNAME "Software\Microsoft\Office\12.0\Visio\AutoFormat As You Type"
	VALUENAME Smileys
	VALUEON NUMERIC 1
	VALUEOFF NUMERIC 0
	EXPLAIN !!L_ChecksUnchecksthecorrespondingUIoption
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_Customizableerrormessages
KEYNAME Software\Microsoft\Office\12.0\Visio\CustomizableAlerts
POLICY !!L_Listoferrormessagestocustomize
KEYNAME Software\Microsoft\Office\12.0\Visio\CustomizableAlerts
	PART !!L_Listoferrormessagestocustomize LISTBOX
	EXPLICITVALUE
	END PART
	PART !!L_EntererrorIDforValueNameandcustombuttontextforVa TEXT
	END PART
	ACTIONLISTON
	VALUENAME PolicyOn VALUE NUMERIC 1
	END ACTIONLISTON
	ACTIONLISTOFF
	VALUENAME PolicyOn VALUE DELETE
	END ACTIONLISTOFF
	EXPLAIN !!L_Definesalistofcustomerrormessagestoactivate
	END POLICY
END CATEGORY
CATEGORY !!L_Disableitemsinuserinterface
KEYNAME Software\Microsoft\Office\12.0\Visio
CATEGORY !!L_Predefined
KEYNAME Software\Microsoft\Office\12.0\Visio
POLICY !!L_Disablecommandbarbuttonsandmenuitems
KEYNAME Software\Microsoft\Office\12.0\Visio\DisabledCmdBarItemsCheckBoxes
	PART !!L_FileSaveasWebPage CHECKBOX
	VALUENAME FileSaveAsWebPage
	VALUEON 3823
	VALUEOFF 0
	END PART
	PART !!L_FileSendToMailRecipient CHECKBOX
	VALUENAME FileSendToMailRecipient
	VALUEON 3738
	VALUEOFF 0
	END PART
	PART !!L_InsertHyperlink CHECKBOX
	VALUENAME InsertHyperlink
	VALUEON 1576
	VALUEOFF 0
	END PART
	PART !!L_ToolsMacrosMacros CHECKBOX
	VALUENAME ToolsMacrosMacros
	VALUEON 186
	VALUEOFF 0
	END PART
	PART !!L_ToolsMacrosVisualBasicEditor CHECKBOX
	VALUENAME ToolsMacrosVBE
	VALUEON 1695
	VALUEOFF 0
	END PART
	PART !!L_ToolsCustomize CHECKBOX
	VALUENAME ToolsCustomize
	VALUEON 797
	VALUEOFF 0
	END PART
	PART !!L_ToolsOptions CHECKBOX
	VALUENAME ToolsOptions
	VALUEON 522
	VALUEOFF 0
	ACTIONLISTON
	VALUENAME WebOptions VALUE 4107
	VALUENAME GeneralOptions VALUE 4108
	END ACTIONLISTON
	ACTIONLISTOFF
	VALUENAME WebOptions VALUE DELETE
	VALUENAME GeneralOptions VALUE DELETE
	END ACTIONLISTOFF
	END PART
	PART !!L_HelpMicrosoftOfficeVisioHelp CHECKBOX
	VALUENAME HelpVisio
	VALUEON 984
	VALUEOFF 0
	END PART
	PART !!L_HelpMicrosoftOfficeOnline CHECKBOX
	VALUENAME HelpOfficeOnline
	VALUEON 3775
	VALUEOFF 0
	END PART
	PART !!L_HelpActivateProduct CHECKBOX
	VALUENAME HelpRegistration 
	VALUEON 5933
	VALUEOFF 0
	END PART
	PART !!L_CheckForUpdates CHECKBOX
	VALUENAME CheckForUpdates
	VALUEON 9340
	VALUEOFF 0
	END PART
	PART !!L_CustomerFeedbackOptions CHECKBOX
	VALUENAME CustomerFeedbackOptions
	VALUEON 347131
	VALUEOFF 0
	END PART
	EXPLAIN !!L_PredefinedExplain 
	END POLICY
POLICY !!L_Disableshortcutkeys
KEYNAME Software\Microsoft\Office\12.0\Visio\DisabledShortcutKeysCheckBoxes
	PART !!L_CtrlFFind CHECKBOX
	VALUENAME Find
	VALUEON 70,8
	VALUEOFF 0
	END PART
	PART !!L_CtrlKInsertHyperlink CHECKBOX
	VALUENAME InsertHyperlink
	VALUEON 75,8
	VALUEOFF 0
	END PART
	PART !!L_AltF8ToolsMacrosMacros CHECKBOX
	VALUENAME ToolsMacrosMacros
	VALUEON 119,16
	VALUEOFF 0
	END PART
	PART !!L_AltF11ToolsMacrosVisualBasicEditor CHECKBOX
	VALUENAME ToolsMacrosVBE
	VALUEON 122,16
	VALUEOFF 0
	END PART
	EXPLAIN !!L_Specifythevirtualkeycodeandmodifierfortheshortcu
	END POLICY
END CATEGORY
CATEGORY !!L_Custom
KEYNAME Software\Microsoft\Office\12.0\Visio
POLICY !!L_SpecifytheIDforacommandbartodisable
KEYNAME Software\Microsoft\Office\12.0\Visio\DisabledCmdBarItemsList
	PART !!L_EnteracommandbarIDtodisable LISTBOX
	VALUEPREFIX TCID
	END PART
	EXPLAIN !!L_SpecifytheIDforacommandbartodisable
	END POLICY
POLICY !!L_Disableshortcutkeys
KEYNAME Software\Microsoft\Office\12.0\Visio\DisabledShortcutKeysList
	PART !!L_Enterakeyandmodifiertodisable LISTBOX
	VALUEPREFIX KeyMod
	END PART
	EXPLAIN !!L_Specifythevirtualkeycodeandmodifierfortheshortcu
	END POLICY
END CATEGORY
END CATEGORY
CATEGORY !!L_Miscellaneous
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
POLICY !!L_EmailmessageforSendtocommands 
KEYNAME Software\Microsoft\Office\12.0\Visio\Application
	PART !!L_EmailmessageforSendtocommands EDITTEXT
	VALUENAME SendToEmailMsgString
	DEFAULT !!L_Empty
	END PART
	EXPLAIN !!L_commandintheSendTosubmenuoftheFilemenu
	END POLICY
END CATEGORY
END CATEGORY


[Strings]
L_DonotopeninIEexplain="Esta directiva determina si los hipervínculos de los documentos de Office se abren en la aplicación o en una ventana del explorador. La opción predeterminada en Office 2007 y versiones posteriores (cambiada de versiones anteriores) consiste en abrir en las aplicaciones de Office. Este comportamiento también se puede controlar desde el shell de Windows (en Windows XP y versiones anteriores): Herramientas | Opciones de carpeta... | Tipos de archivo | <extensión de archivo>| Avanzadas | Explorar en la misma ventana."
L_DonotopeninIE="Abrir hipervínculos de los documentos en Windows Internet Explorer"
L_DisableTrustBarNotificationforunsignedExplain="Esta configuración significa que las aplicaciones de Office comprobarán la firma digital de cualquier archivo DLL que contenga una extensión de aplicación sin firma digital. Se utiliza junto con la opción 'Requerir que un editor de confianza firme las extensiones de aplicaciones', que se debe establecer primero para que la aplicación compruebe las firmas."
L_DisableTrustBarNotificationforunsigned="Deshabilitar la notificación de la barra de confianza para extensiones de aplicación no firmadas"
L_RequirethatApplicationExtensionsaresignedExplain="Esta configuración significa que las aplicaciones de Office comprobarán la firma digital de cualquier archivo DLL que contenga una extensión de aplicación y darán al usuario una notificación de seguridad en caso de un archivo DLL sin firmar o de un archivo DLL firmado por un certificado de editor que no se agregó a la lista Editores de confianza."
L_RequirethatApplicationExtensionsaresigned="Requerir que un editor de confianza firme las extensiones de aplicaciones"
L_TrustCenter="Centro de confianza"
L_Disableallapplicationextensions="Deshabilitar todas las extensiones de aplicaciones"
L_TrustedLocationsExplain="Advertencia: estas ubicaciones se utilizan como una fuente de confianza para abrir archivos en Word, Excel, PowerPoint, Access y Visio. Las macros y el código contenidos en estos archivos se ejecutarán sin previa advertencia al usuario. Si cambia o agrega una ubicación, asegúrese de que la nueva ubicación es segura y que sólo contiene permisos de usuario apropiados para agregar documentos o archivos."
L_Pathcolon="Ruta de acceso:"
L_Datecolon="Fecha:"
L_Descriptioncolon="Descripción:"
L_Allowsubfolders="Permitir subcarpetas:"
L_TrustedLoc1="Ubicación de confianza nº 1"
L_TrustedLoc2="Ubicación de confianza nº 2"
L_TrustedLoc3="Ubicación de confianza nº 3"
L_TrustedLoc4="Ubicación de confianza nº 4"
L_TrustedLoc5="Ubicación de confianza nº 5"
L_TrustedLoc6="Ubicación de confianza nº 6"
L_TrustedLoc7="Ubicación de confianza nº 7"
L_TrustedLoc8="Ubicación de confianza nº 8"
L_TrustedLoc9="Ubicación de confianza nº 9"
L_TrustedLoc10="Ubicación de confianza nº 10"
L_TrustedLoc11="Ubicación de confianza nº 11"
L_TrustedLoc12="Ubicación de confianza nº 12"
L_TrustedLoc13="Ubicación de confianza nº 13"
L_TrustedLoc14="Ubicación de confianza nº 14"
L_TrustedLoc15="Ubicación de confianza nº 15"
L_TrustedLoc16="Ubicación de confianza nº 16"
L_TrustedLoc17="Ubicación de confianza nº 17"
L_TrustedLoc18="Ubicación de confianza nº 18"
L_TrustedLoc19="Ubicación de confianza nº 19"
L_TrustedLoc20="Ubicación de confianza nº 20"
L_TrustedLocsnotonmachineExplain="De forma predeterminada, las ubicaciones de confianza de Office requieren que el usuario permita explícitamente que las ubicaciones que no se encuentren en el equipo o disco local sean de confianza. Con esta clave puede exigir que se cumpla la directiva por la que los usuarios solamente pueden confiar en ubicaciones de sus equipos. Nota: si también está implementando las ubicaciones de confianza mediante la directiva, debería comprobar si alguna de ellas es una ubicación remota. Si hay ubicaciones remotas y éstas no se permiten por medio de esta clave, las claves de directiva que señalen a ubicaciones remotas se omitirán en el cliente"
L_TrustedLocsnotonmachine="Permitir ubicaciones de confianza que no estén en el equipo"
L_DisableTrustedLoc="Deshabilitar todas las ubicaciones de confianza"
L_DisableTrustedLocExplain="Office permite que los documentos y soluciones basadas en documentos que se ejecutan desde una ubicación de confianza carguen y ejecuten macros sin advertencia. Con esta clave de directiva, puede deshabilitar TODAS las ubicaciones de confianza, incluidas las ubicaciones implementadas en Office durante la instalación, agregadas por el usuario desde la interfaz de usuario o implementadas mediante la propia directiva."
L_VBAWarningsPolicy="Configuración de advertencia de la macro de VBA"
L_VBAWarningsExplain="Office 2007 introduce un nuevo modelo de seguridad de usuario con dos objetivos, (1) mejorar los eventos de notificación de seguridad evitando el bloqueo de cuadros de diálogo modales cuando un usuario abre un documento y, en su lugar, abrir el documento proporcionando a los usuarios interesados la posibilidad de cambiar la configuración de confianza de éste mediante una barra de confianza, (2) simplificar la configuración de confianza para macros, extensiones de aplicación y ubicaciones de confianza. Esta clave de directiva le permite configurar las notificaciones de macros de VBA que ven los usuarios específicamente. Hay una configuración separada para las ubicaciones de confianza y extensiones de aplicación (como complementos Com etc.)"
L_TrustBarwarningsforallmacros="Advertencia de la barra de confianza para todas las macros"
L_TrustBarwarningfordigitallysigned="Advertencia de la barra de confianza únicamente para macros firmadas digitalmente (se deshabilitarán las macros sin firmar)"
L_Nowarningsforallmacrosbutdisable="Ninguna advertencia para todas las macros pero deshabilitar todas las macros"
L_NoSecuritychecksformacros="No hay comprobaciones de seguridad para macros de VBA (no recomendado, se puede ejecutar código en todos los documentos)"
L_Empty=" "
L_ChecksUnchecksthecorrespondingUIoption="Activa y desactiva la opción de la interfaz de usuario correspondiente."
L_CtrlFFind="Buscar (Ctrl+B)"
L_CtrlKInsertHyperlink="Ctrl+K (Insertar | Hipervínculos...)"
L_Custom="Personalizado"
L_Customizableerrormessages="Mensajes de error que se pueden personalizar"
L_Disablecommandbarbuttonsandmenuitems="Deshabilitar comandos"
L_Disableitemsinuserinterface="Deshabilitar elementos de la interfaz de usuario"
L_Disableshortcutkeys="Deshabilitar teclas de método abreviado"
L_EnteracommandbarIDtodisable="Escriba un Id. de barra de comandos para deshabilitar"
L_Enterakeyandmodifiertodisable="Escriba una clave y un modificador para deshabilitar"
L_General="General"
L_HelpActivateProduct="Ayuda | Activar producto..."
L_HelpMicrosoftOfficeOnline="Ayuda de Microsoft Office Online"
L_InsertHyperlink="Insertar | Hipervínculos..."
L_Listoferrormessagestocustomize="Lista de mensajes de error que se van a personalizar"
L_Miscellaneous="Varios"
L_Predefined="Predefinida"
L_Recentlyusedfilelist="Número de documentos de la lista de documentos recientes"
L_Security="Seguridad"
L_SpecifytheIDforacommandbartodisable="Especificar el Id. de una barra de comando que se va a deshabilitar."
L_ToolsCustomize="Herramientas | Personalizar..."
L_ToolsOptions="Herramientas | Opciones..."
L_View="Ver"
L_PredefinedExplain="Especificar los botones de la barra de comandos y elementos de menú que se van a deshabilitar."
L_Showshapesearchpane="Mostrar panel Buscar forma"
L_Displaystheshapesearchuserinterfaceelements="Muestra los elementos de la interfaz de usuario para buscar formas de la ventana de la galería de símbolos."
L_ShowsthecatalogoftemplateswhenyouopenVisio="Muestra el catálogo de plantillas al abrir Visio."
L_EnableAutoConnect="Habilitar autoconexión"
L_ShowMoreHandles="Mostrar más identificadores al desplazarse"
L_SaveOpen="Guardar/Abrir"
L_MyShapes="Mis formas"
L_MyShapescolon="Mis formas:"
L_Displaysthepathofthemyshapesfolder="Muestra la ruta de acceso de la carpeta Mis formas."
L_CheckForUpdates="Buscar actualizaciones"
L_CustomerFeedbackOptions="Opciones de comentarios del cliente"
L_Specifieswhetherresultsarereturnedinaphabeticalo="Especifica si los resultados se muestran en orden alfabético por nombre de forma o por nombre de galería de símbolos (grupo). Haga clic en Agrupar por para ayudar a distinguir entre las formas que tienen el mismo nombre pero aparecen en diferentes galerías de símbolos. Esta opción también es muy útil si desea ubicar la galería de símbolos que contiene la forma."
L_MicrosoftVisiomachine="Microsoft Office Visio 2007 (equipo)"
L_Textquality="Calidad de texto"
L_TextqualityExplain="Presentación de texto ClearType (con suavizado, para pantallas LCD): si se selecciona, Visio utiliza la Presentación de texto ClearType para mejorar la legibilidad de texto. ClearType se puede ver mejor en pantallas LCD (por ejemplo, monitores de pantalla plana y pantallas de portátiles). Esta opción sólo está disponible en equipos que ejecutan Microsoft Windows XP.\n\nMostrar formas de mejor calidad (con suavizado): Si se selecciona, Visio perfila la presentación del texto. Para mejorar la legibilidad, seleccione esta opción.\n\nMostrar texto más rápido (sin suavizado): Si se selecciona, aumenta la velocidad de presentación del texto."
L_Undolevels="Deshacer niveles"
L_Sizeofrecentlyusedfilelist="Tamaño de la lista de archivos utilizados recientemente"
L_Languageforfileconversion="Idioma para la conversión de archivo"
L_Uselanguage="Idioma para utilizar:"
L_Duration="Duración"
L_Searchresults="Resultados de búsqueda"
L_MacroSecurity="Seguridad de macros"
L_Advancedoptions="Opciones avanzadas"
L_Advanced="Avanzadas"
L_Help="Ayuda"
L_ToolsAutoCorrectOptions="Herramientas | Opciones de autocorrección..."
L_ToolsMacrosMacros="Herramientas | Macro | Macros..."
L_AltF8ToolsMacrosMacros="Alt+F8 (Herramientas | Macros | Macros...)"
L_EmailmessageforSendtocommands="Mensaje de correo electrónico para comandos 'Enviar a'"
L_Startupcolon="Inicio:"
L_Addonscolon="Complementos:"
L_Helpcolon="Ayuda:"
L_Stencilscolon="Galería de símbolos:"
L_Templatescolon="Plantillas:"
L_Drawingscolon="Dibujos:"
L_Autocreatespeedcolon="Velocidad de autocreación:"
L_Smoothing="Suavizado:"
L_Precisioncolon="Precisión:"
L_Enablewarningsaboutresults="Habilitar advertencia sobre resultados"
L_EnableAutoRecoveryinfo="Habilitar guardar información de autorrecuperación"
L_Zoomwheneditingtextwithsizeunder="Zoom cuando edita texto con tamaño en (puntos):"
L_DisplayGreektextwhenfontsizeisunder="Mostrar texto griego cuando el tamaño de la fuente es inferior a (Puntos):"
L_ByGroup="Agrupar por"
L_Alphabetically="Alfabéticamente"
L_Anyofthewords="Todas las palabras (OR)"
L_Allofthewords="Todas las palabras (AND)"
L_Days="Días"
L_Hours="Horas"
L_Minutes="Minutos"
L_Seconds="Segundos"
L_Weeks="Semanas"
L_Radians="Radianes"
L_MinSec="Min.-S"
L_DegMinSec="Grad.-Min.-S"
L_Degrees="Grados"
L_Didots="Didots"
L_Ciceros="Cíceros"
L_Picas="Picas"
L_Points="Puntos"
L_Usethefollowinglanguage="Utilizar el siguiente idioma"
L_Promptforlanguage="Preguntar por el idioma"
L_LetVisiodecidelanguage="Dejar que Visio decida el idioma"
L_Show="Mostrar"
L_Visio2002="Visio 2002"
L_VisioXMLDocument="Documento XML de Visio"
L_VisioDocument="Documento de Visio"
L_Fastertextdisplay="Mostrar texto más rápido (sin suavizado)"
L_Higherqualitytextdisplay="Mostrar formas de mejor calidad (con suavizado)"
L_ClearTypetextdisplay="Presentación de texto ClearType (con suavizado, para pantallas LCD)"
L_Ifyouselectshapesbyusingaselectionnetdraggingabo="Si selecciona formas utilizando una red de selección (arrastrando un cuadro por encima de las formas en la página de dibujos), puede cambiar la configuración de selección para que incluya también las formas parcialmente incluidas dentro de la red de selección."
L_Stencilspacing="Espacio de la galería de símbolos"
L_Precision="Precisión"
L_Stencilbackgroundend="Final del fondo de la galería de símbolos"
L_AddsallpossibleapplicationsettingsintotheWindows="Agrega todas las configuraciones posibles de la aplicación al registro de Windows. De forma predeterminada, solamente se agregan determinadas configuraciones (configuraciones no predeterminadas y alguna otra, como rutas de acceso de archivos, filtros de importación y exportación y los últimos archivos) para mantener la configuración del registro simple."
L_Drawingbackgroundstart="Inicio de fondo de dibujo"
L_SaveAutoRecoverinfo="Guardar información de autorrecuperación"
L_Promptfordocumentpropertiesonfirstsave="Preguntar sobre las propiedades del documento la primera vez que se guarda"
L_Addons="Complementos"
L_DisplayestheadditionallocationoftemplatesWhenalo="Muestra la ubicación adicional de las plantillas. Cuando se agrega aquí una ubicación, las plantillas de la misma se enumeran en el submenú Nuevo del menú Archivo, así como en la carpeta Categorías de plantillas en la ventana Introducción."
L_EnablesMicrosoftVisualBasicforApplicationsIfclea="Habilita Microsoft Visual Basic para aplicaciones. Al deshabilitarse se deshabilitará VBA. NOTA: si deshabilita esta opción, puede que algunos tipos de dibujo de Microsoft Office Visio que requieren macros para ejecutarse no tengan funcionalidad completa."
L_Smileyfacesandarrowswithspecialsymbols="Caras sonrientes y flechas por símbolos especiales"
L_Indicateswhetherthepropertiesdialogboxopenswhena="Indica si se abre el cuadro de diálogo de propiedades cuando se guarda un archivo la primera vez. Las propiedades del archivo incluyen el nombre del autor e información como el estado del archivo. La configuración de previsualización y otras propiedades."
L_Controlshowpreciselythemousemovementsaresmoothed="Controla la precisión con la que se suavizan los movimientos del mouse al dibujar una spline."
L_Indicateswhetheradocumentrecoveryfileiscreatedat="Indica si se crea un archive de recuperación de documentos en el intervalo del cuadro de minutos. (El rango válido es de 1 a 120 minutos). Si su equipo deja de responder o se apaga de forma inesperada, Visio abrirá el archivo de autorrecuperación la siguiente vez que abra Visio. El archivo de autorrecuperación puede contener información sin guardar. En caso contrario, esta información se habría perdido del documento original. Si se ha dañado el documento original, puede recuperar la información desde el archivo de autorrecuperación. Tenga en cuenta que la autorrecuperación no reemplaza el comando Guardar. Tiene que seguir guardando su documento de forma periódica y cuando termine de trabajar en él."
L_EntererrorIDforValueNameandcustombuttontextforVa="Escriba el Id. de error para el nombre del valor y el texto del botón personalizado para el valor"
L_AutoRecoversavefrequencyminutes="Frecuencia de guardado con autorrecuperación (minutos):"
L_Charactersperline="Caracteres por línea"
L_FilePaths="Rutas de acceso del archivo"
L_Openresultsnewwindow="Abrir ventana nueva de resultados"
L_Greektext="Texto griego"
L_Stencils="Galería de símbolos"
L_Enablescertainuserinterfacefunctionsforthedevelo="Habilitar algunas funciones de la interfaz de usuario para el entorno de desarrollo. Si se selecciona esta opción, se agregará el comando Mostrar Shapesheet al menú contextual de la forma."
L_Specifiestheunitofmeasurefortheangleofrotation="Especifica la unidad de medida del ángulo de rotación."
L_Displaystheadditionallocationformacrosandaddonso="Muestra la ubicación adicional para macros y complementos abiertos al iniciar Visio."
L_FileSendToMailRecipient="Archivo | Enviar a | Destinatario de correo"
L_Indicateswhetherawarningmessageappearswhenthenum="Indica si aparece un mensaje de aviso cuando el número de formas supera el límite especificado."
L_Displayoptions="Opciones de presentación"
L_commandintheSendTosubmenuoftheFilemenu="Comando en el submenú Enviar a del menú Archivo."
L_Enablelivedynamics="Habilitar dinámica activa"
L_Startup="Inicio"
L_andspecifiesthatiftextissettothespecifiedpointsi="Especifica que si el texto se establece en el tamaño de punto especificado, Microsoft Office Visio aumenta el tamaño de la forma mientras está editando el texto."
L_DisplaystheadditionallocationofHelpfiles="Deshabilita la ubicación adicional de los archivos de ayuda."
L_DisplaystheadditionallocationofdrawingsWhenyouad="Muestra la ubicación adicional de los dibujos. Cuando agrega aquí una ubicación, ésta se convierta en la ubicación de guardado predeterminada."
L_OtherScreenTips="Otra información en pantalla"
L_OtherScreenTipsExplain="Especifica si aparece otra información en pantalla (información en pantalla: información que aparece cuando detiene el puntero sobre determinados elementos en Visio, incluidos: patrones de símbolos, botones de barras de herramientas y la regla.) en Visio para ayudarle a identificar y utilizar varias funciones, entre ellas las reglas de la ventana de dibujo, los controladores y las celdas de ShapeSheet."
L_Warnaboutresults="Avisar sobre los resultados"
L_Specifiestheunitofmeasurefordurationwhichiselaps="Especifica la unidad de medida de duración, que es tiempo transcurrido en comparación con una fecha específica o una hora concreta."
L_Specifiesthenumberofconsecutiveactionsyoucanundo="Especifica el número de acciones consecutivas que puede deshacer. Cuanto mayor sea el número mayor memoria hace falta para almacenar las acciones."
L_Drawingwindow="Ventana de dibujo"
L_Angle="Ángulo"
L_Text="Texto"
L_Smoothdrawing="Dibujo suave"
L_Whenyouresizeorrotateashapeyoucanseetheshapeasit="Cuando cambia de tamaño o gira una forma, puede observar como ésta se transforma en lugar de ver únicamente el cuadro de límite hasta que se completa la acción"
L_ZoomonrollwithIntelliMouse="Hacer zoom al usar la rueda de IntelliMouse"
L_ToolsMacrosVisualBasicEditor="Herramientas | Macro | Editor de Visual Basic"
L_Runindevelopermode="Ejecutar en modo programador"
L_FileSaveasWebPage="Archivo | Guardar como página Web..."
L_AltF11ToolsMacrosVisualBasicEditor="Alt+F11 (Herramientas | Macros | Editor de Visual Basic)"
L_Stencilwindow="Ventana de galería de símbolos"
L_Templates="Plantillas"
L_Whenyouplaceashapeonthelineofaconnectoritsplitsa="Cuando coloca una forma en la línea de un conector, las divide y cada pieza se convierte en un conector separado pegado a la forma. No todos los tipos de dibujo admiten división de conectores."
L_Ordinalswithsuperscript="Ordinales con superíndice"
L_Displaystheadditionallocationofmacrosandaddons="Deshabilita la ubicación adicional de macros y complementos."
L_Specifiestheunitofmeasureforindentslinespacingan="Especifica la unidad de medida de las sangrías, espaciado de líneas y otras medidas de texto. La unidad predeterminada del tamaño de tipo son puntos (1 punto = 1/72 pulg.). Puede introducir el tamaño en otra unidad de medida (por ejemplo, 1 pie o 12 pulg.) pero no puede cambiar el predeterminado."
L_AutoFormatasyoutype="Autoformato mientras escribe"
L_HelpMicrosoftOfficeVisioHelp="Ayuda | Ayuda de Microsoft Office Visio"
L_Results="Resultados"
L_IfyouwanttobeabletohaveyourVBAprojectworkindrawi="Si desea poder conservar el trabajo del proyecto VBA en dibujos creados en otras versiones de Visio, seleccione esta opción para que el proyecto VBA se compile al cargar el archivo, pero no se guarde el proyecto compilado."
L_SetsthevalueinthecorrespondingUIoption="Establece el valor en la opción de la interfaz de usuario correspondiente."
L_LoadMicrosoftVisualBasicforApplicationsprojectsf="Cargar los proyectos de Microsoft Visual Basic para aplicaciones desde el texto"
L_Selectshapespartiallywithinarea="Seleccionar formas parcialmente en el área"
L_FullScreenbackground="Fondo de pantalla completo"
L_RecordactionsinMicrosoftOfficeOutlookjournal="Grabar acciones en el diario de Microsoft Office Outlook"
L_ShapeSearch="Buscar forma"
L_Defaultunits="Unidades predeterminadas"
L_ControlsthemarginofdelayafterinkdraawnwiththeINK="Controla el margen de tiempo después de que la entrada manuscrita con la herramienta Tinta se vuelva a dibujar automáticamente como forma."
L_Warnwhenresultsaregreaterthan="Avisar cuando los resultados sean mayores que:"
L_PutallsettingsinWindowsregistry="Colocar la configuración en el Registro de Windows"
L_EnableMicrosoftVisualBasicforApplications="Habilitar Microsoft Visual Basic para aplicaciones"
L_EnableAutomationevents="Habilitar eventos de Automatización"
L_Colorsettings="Configuración de color"
L_Specifiesthenumberofrecentlyusedfilestolistonthe="Especifica el número de archivos usados más recientemente para enumerar en el menú Archivo del panel de herramientas Nuevo dibujo (que aparece cuando inicia Visio. Puede especificar hasta 9 archivos. Puede hacer clic a continuación en los nombres de los archivos en el menú Archivo o en el panel de tareas."
L_Warningsoptions="Opciones de advertencia"
L_EnableMicrosoftVisualBasicforApplicationsproject="Permitir la creación de proyectos de Microsoft Visual Basic para aplicaciones"
L_Specifiesthatwhenthetextonthescreenissmallerthan="Especifica que cuando el texto en pantalla es más pequeño que el tamaño de punto especificado, el texto se muestra como lorem ipsum (el texto es aproximado con una línea ondulada). Si se establece en 0 el texto nunca se muestra como lorem ipsum."
L_Showfilesavewarnings="Mostrar advertencias al guardar archivos"
L_DetermineswhetherantialiasingisusedtodrawshapesA="Determina si se utiliza el suavizado para dibujar formas. Los dibujos con suavizado (predeterminado) producen una visualización de formas de mejor calidad, pero es más lenta que el dibujo sin suavizado."
L_Autocreatespeed="Velocidad de autocreación"
L_IdentifiesthedefaultfileformatinwhichVisiofilesa="Identifica el formato de archivo predeterminado en el que se guardan los archivos de Visio."
L_Indicateswhetherawarningmessageisdisplayedwhenyo="Indica si se muestra un mensaje de advertencia al abrir los archivos que contienen errores como código XML no válido."
L_groupoftheColorSettingsdialogintheAdvancedtaboft="A continuación se muestra la configuración de algunos colores comunes:\nNegro: 0 0 0\nRojo oscuro: 128 0 0\nVerde: 0 128 0\nOliva: 128 128 0\nAzul marino: 0 0 128\nPúrpura: 128 0 128\nVerde azulado: 0 128 128\nGris: 128 128 128\nPlata:192 192 192\nAmarillo: 255 255 204\nAzul: 0 0 255\nAzul nº2: 187 168 216\nAzul nº3: 0 153 255\nAzul nº4: 153 51 255\nMarrón/Verde: 204 204"
L_Linespermaster="Líneas por patrón"
L_Ifselectedletsyouzoominoroutfromadrawingbyrollin="Si está seleccionada, le permite acercarse o alejarse de un dibujo usando la rueda de Microsoft Intellimouse"
L_Indicateswhetheranewsearchresultsstenciliscreate="Indica si se ha creado para cada búsqueda una nueva galería de resultados de búsqueda. Si se borra, los resultados de buscar y reemplazar serán los de cualquier búsqueda anterior."
L_EnablescreationsofVBAprojectswhenyouopenorcreate="Habilita la creación de proyectos de VBA al abrir (o crear) un documento que aún no contenga un proyecto. Si borra esta casilla de verificación, no podrá crear una macro en un documento que no contenga un proyecto."
L_Stencilbackgroundstart="Inicio del fondo de la galería de símbolos"
L_Searchfor="Buscar:"
L_Specifythevirtualkeycodeandmodifierfortheshortcu="Especificar el código de tecla virtual y el modificador para deshabilitar la tecla de método abreviado."
L_Drawingbackgroundend="Fin de fondo de dibujo"
L_Inktool="Herramienta Tinta"
L_ControlsthemarginoferrorallowedwhiletheFreeformt="Controla el margen de error permitido cuando la herramienta Forma libre está dibujando una línea recta antes de cambiar a dibujar una spline."
L_OpeneachShapeSheetinthesamewindow="Abrir cada ShapeSheet en la misma ventana"
L_Statusbar="Barra de estado"
L_StatusbarExplain="Especifica si la barra de estado aparece en la parte inferior de la ventana de Visio."
L_DisplaystheadditionallocationofstencilsWhenaloca="Muestra la ubicación adicional de galerías de símbolos. Cuando se agrega una ubicación aquí, las galerías de símbolos de esta ubicación se enumeran en el submenú Formas desde el menú archivo."
L_Saveoptions="Opciones de guardado"
L_StencilwindowScreenTips="Información en pantalla de la ventana de la galería de símbolos"
L_StencilwindowScreenTipsExplain="Especifica si aparece otra información en pantalla (información en pantalla: información que aparece cuando detiene el puntero sobre determinados elementos en Visio, incluidos: patrones de símbolos, botones de barras de herramientas y la regla) en Visio para ayudarle a identificar formas en la ventana de galería de símbolos."
L_Definesalistofcustomerrormessagestoactivate="Define una lista de mensajes de error personalizados para activar."
L_Generaloptions="Opciones generales"
L_Centerselectiononzoom="Centrar la selección al hacer zoom"
L_Drawings="Dibujos"
L_EnablesVisioeventstobesenttoVisioaddonsandVBAmac="Habilita el envío de eventos de Visio a complementos de Visio y macros VBA. Si se borra, se deshabilitarán todos los eventos de Visio. Si borra esta opción, algunos tipos de dibujo de Visio que se basan en eventos de automatización no tendrán una funcionalidad completa."
L_SaveVisiofilesas="Guardar archivos de Visio como"
L_SpecifiesthatVisioshoulddeterminewhichlanguageto="Especifica que Visio debe determinar el idioma que tiene que utilizar cuando convierte desde o a una versión anterior de Visio."
L_Freeformdrawing="Dibujo de forma libre"
L_PrintPreviewbackground="Fondo de vista preliminar"
L_IfCheckedwhenyoustretchabitmaporanothernonVisioo="Si la opción está habilitada, al estirar un mapa de bits u otro objeto que no sea de Visio, no verá ningún parpadeo."
L_AlwaysofferMetricandUSunitsfornewblankdrawingsan="Preguntar siempre el sistema de unidades en los dibujos y galerías nuevos"
L_Forashapeonastencilspecifiesapproximatelyhowmany="Para una forma en una galería, especifica aproximadamente cuántos caracteres pueden aparecer en cada línea antes de que el texto se ajuste. Esta opción afecta al espaciado global de las formas en una galería, lo que afecta a la cantidad de formas que puede ver sin desplazarse por la ventana de la galería de símbolos."
L_ChooseDrawingTypePane="Pantalla Introducción"
L_Straightquoteswithsmartquotes="Comillas rectas con comillas tipográficas"
L_MicrosoftVisio="Microsoft Office Visio 2007"
L_Showfileopenwarnings="Mostrar advertencias al abrir archivos"
L_Drawingwindowoptions="Opciones de la ventana de dibujo"
L_ShowsbothNewDrawingUSUnitsandNewDrawingMetricwhe="Muestra tanto el Nuevo dibujo (unidades de EE.UU.) como el Nuevo dibujo (sistema métrico) cuando selecciona Nuevo en el menú Archivo. Estos dibujos se abren con las reglas apropiadas y la configuración de página y utilizan las unidades correctas par alas herramientas de dibujo. Esto no instala las plantillas y las formas en ambas unidades."
L_OpensmultipleShapeSheetsinthesamewindowrathertha="Abre varias ShapeSheets en la misma ventana en lugar de mostrar cada ShapeSheet en su propia ventana."
L_Higherqualityshapedisplay="Mostrar formas de mejor calidad"
L_Specifiesthatwhenyouzoominwhatevershapewasselect="Especifica que cuando se acerca, la forma seleccionada aparece en el centro de la ventana."
L_Enalbeconnectorsplitting="Habilitar división de conectores"
L_Hyphenswithdash="Guiones con guión"
L_Units="Unidades"
L_Automaticallyzoomwheneditingtext="Zoom automático al editar texto"
L_Specifiesthatyouractionssuchaseditingafilebereco="Especifica que sus acciones, como editar un archivo se grabarán en el diario de Microsoft Office Outlook."
L_Fractionswithfractioncharacter="Fracciones con carácter de fracción"
L_SmartTags="Etiquetas inteligentes"
L_SmartTagsExplain="Muestra etiquetas inteligentes si las activa en el dibujo."
L_FavoritesStencilName="Nombre de galería de símbolos favoritos"
L_FavoritesStencilNamecolon="Nombre de galería de símbolos favoritos:"
L_Displaysthenameofthestencilcreatedinthe="Muestra el nombre de la galería de símbolos creada en la carpeta Mis formas, que contiene las formas favoritas de un usuario."

