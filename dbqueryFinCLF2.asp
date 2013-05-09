<!-- #include file="connect.asp" -->
<!-- #include file="formatDateTime.asp" -->
<!-- #include file="docTypesConstants.inc" -->

<%
'declare variables
dim sHOST
dim sPROTOCOL
dim BodyTag
dim sTitle (3)
dim sHeadTitle (3)
dim sDisplayTitle (3)
dim sDescription (3)
dim sKeywords (3)
dim sPresenter (3)
dim sActivity (3)
dim sdocCategory (3)
dim sdocType (3)
dim sActivities (10,3)
dim sTopics (50,3)
dim ssubjects (50,3)
dim sContactUs (3)
dim sHelp (3)
dim sSearchLink (3)
dim sWhatsNew (3)
dim sAboutUs (3)
dim sPolicies (3)
dim sSiteMap (3)
dim sAudience (3)
dim sHomeLink (3)
dim sInstructionsLink(2)
dim sCreator (2)
dim sURL
dim sWhichService
dim sWhoServiceName
dim sWhoServiceURL
dim sPart
dim iResourceID
dim iLanguageID
dim iLang
dim iServiceID(3)
dim iFormatID (3)
dim iRdimS (3)
dim iResourceOrgID
dim sLanguage (3)
dim sFormatURLs (10,3)
dim sdDateCreated
dim sdDateModified
dim sdDateReviewed
dim sdDatePreserved
dim iPos
dim iPartNo (3)
dim idocTypeID (3)
dim sisBasedOn (3)
dim sisPartOf (3)
dim sReplaces (3)
dim iService (3)
dim iGOCService
dim sCellText
dim sCellTitle
dim sService (3)
dim sWebType
dim sRobots (3)
dim sPrevPart (3)
dim sNextPart (3)
dim sImportantNotices (3)
dim sTableOfContents (3)
dim sPrintableVersion (3)
dim iPartCount (3)
dim sBodyClass (3)
dim searchrank(2)
dim auxData
dim resourceData
dim resourceAudience
dim resourceMetaData
dim resourceServicePagedata
dim sLinksData
dim sClassInst
dim sClassService
dim resourceCreators ()
dim resourcePresenters
dim resourceRelations
dim resourceTopic
dim bresourceData
dim bresourceAudience
dim bresourceMetaData
dim bresourceCreators
dim bresourcePresenters
dim bresourceRelations
dim bresourceTopic
dim bHideLine
dim bGOCFIP
dim bPartsBar
dim serviceDomain
dim sPrintable
dim bDisableMainMenu
dim bDisableServiceLink
dim bTitle
dim bOld
dim resourceTopics()
dim iTotalTopics
dim inumTopics
dim bAlive
dim bresourceServicePagedata
dim inumCreators
dim iTotalRecords
dim inumActivities
dim iNumFormats
dim i
dim sView
dim sAuxiliaryFile
dim GOC_Identifier(3)
dim sLangParameter
dim sLanguageSuffix
dim inumberOfColumns
dim rightSideBar
dim bannerClass(2)
dim backBannerMainOpenDiv
dim backBannerDocumentOpenDiv
dim backBannerMainCloseDiv
dim sLocalFilename
dim altPrintClass(2)
dim CLF2AltlanguageAcronym
dim smmFormats(2)
dim displayDocTitleBreadCrumb
dim sSearchDomain

dim Msg_Unavailable (3)
dim Msg_Archived (3)
dim Msg_PreviousPart (3)
dim Msg_TableOfContents (3)
dim Msg_NextPart (3)
dim Msg_Part1 (3)
dim Msg_Part2 (3)
dim Msg_GOC (3)
dim MSG_SymbolGOC(3)
dim Msg_PSHRMAC (3)
dim Msg_Extension (3)
dim Msg_ExtensionName (12,3)
dim Msg_ImportantNoticesText (3)
dim Msg_ImportantNotices (3)
dim Msg_Flag (3)
dim Msg_PrintableVersion (3)
dim Msg_Modified(3)
dim Msg_Top (3)
dim Msg_Anchor (3)
dim Msg_AnchorTop (3)
dim Msg_ReadMe(3)
dim MSG_FIN(3)
dim MSG_HRMAemployees(2)
dim MSG_Manager(2)
dim MSG_HRProfessionals(2)
dim MSG_Tools(2)
dim MSG_A_Z_Index(2)
dim MSG_CLF_VERSION(2)
dim MSG_HEADER_BEGINS(2)
dim MSG_TITLE_BEGINS(2)
dim MSG_TITLE_ENDS(2)
dim MSG_METADATA_BEGINS(2)
dim MSG_METADATA_ENDS(2)
dim MSG_TEMPLATE_SCRIPTS_BEGIN(2)
dim MSG_TEMPLATE_SCRIPTS_END(2)
dim MSG_PROGRESSIVE_ENHANCEMENT_BEGINS(2)
dim MSG_PROGRESSIVE_ENHANCEMENT_ENDS(2)
dim MSG_TEMPLATE_PRINT_CSS_BEGINS(2)
dim MSG_TEMPLATE_PRINT_CSS_ENDS(2)
dim MSG_FIP_HEADER_BEGINS(2)
dim MSG_FIP_HEADER_ENDS(2)
dim MSG_INSTITUTIONAL_BANNER_STARTS(2)
dim MSG_INSTITUTIONAL_BANNER_ENDS(2)
dim MSG_SKIP_NAVIGATION_BEGINS(2)
dim MSG_SKIP_NAVIGATION_ENDS(2)
dim MSG_COMMON_MENU_BAR_BEGINS(2)
dim MSG_COMMON_MENU_BAR_ENDS(2)
dim MSG_COMMON_MENU_BAR_TITLE_BEGINS(2)
dim MSG_COMMON_MENU_BAR_LINKS(2)
dim MSG_COMMON_MENU_BAR_TITLE_ENDS(2)
dim MSG_HEADER_ENDS(2)
dim MSG_SKIP_TO_CONTENT(2)
dim MSG_SKIP_TO_INSTITUTIONAL_LINKS(2)
dim MSG_CUSTOM_SCRIPTS_BEGIN(2)
dim MSG_CUSTOM_SCRIPTS_END(2)
dim MSG_LANGUAGE_LINK_BEGINS(2)
dim MSG_LANGUAGE_LINK_ENDS(2)
dim MSG_BREAD_CRUMB_BEGINS(2)
dim MSG_BREAD_CRUMB_ENDS(2)
dim MSG_ONE_COLUMN_LAYOUT_BEGINS(2)
dim MSG_TWO_COLUMN_LAYOUT_BEGINS(2)
dim MSG_THREE_COLUMN_LAYOUT_BEGINS(2)
dim MSG_ONE_COLUMN_LAYOUT_ENDS(2)
dim MSG_TWO_COLUMN_LAYOUT_ENDS(2)
dim MSG_THREE_COLUMN_LAYOUT_ENDS(2)
dim MSG_LEFT_SIDE_MENU_BEGINS(2)
dim MSG_LEFT_SIDE_MENU_ENDS(2)
dim MSG_CONTENT_BEGINS(2)
dim MSG_CONTENT_ENDS(2)
dim MSG_RIGHT_SIDE_MENU_BEGINS(2)
dim MSG_RIGHT_SIDE_MENU_ENDS(2)
dim MSG_FOOTER_BEGINS(2)
dim MSG_DATE_MODIFIED_BEGINS(2)
dim MSG_DATE_MODIFIED(2)
dim MSG_DATE_MODIFIED_ENDS(2)
dim MSG_RETURN_TO_TOP_OF_PAGE(2)
dim MSG_FOOTER_ENDS(2)
dim MSG_Institutional_Links(2)
dim MSG_Versions(2)
dim MSG_LanguageButton(2)
dim MSG_HomePage(2)
dim MSG_ContactUsButton(2)
dim MSG_HelpButton(2)
dim MSG_SearchButton(2)
Dim MSG_RSS_NEWS_Feeds(2)

dim MSG_BCAboutUs (2)
dim MSG_BCNews(2)
dim MSG_BCPublications(2)
dim MSG_BCReports(2)
dim MSG_BCActivities(2)
dim MSG_BCBudgets(2)
dim MSG_BCLegislation(2)
dim MSG_BCSiteMap(2)
dim MSG_BCProactiveDisclosure(2)

dim MSG_LanguageTitle(2)
dim MSG_HomeTitle(2)
dim MSG_ContactUsTitle(2)
dim MSG_HelpTitle(2)
dim MSG_SearchTitle(2)
dim MSG_CanadaSiteTitle(2)
dim MSG_DocTypesList(2)
dim sHelpFile (3)
dim sContactUsFile (3)
dim sAboutUsFile (3)
dim sPoliciesFile (3)
dim sSiteMapFile (3)
dim Img_GOC_FIP(3)
dim Img_GOC_FIP_Printable(3)
dim Img_noFIP (3)
dim sPath
dim TBSIMConnectionString
dim TBSIMconn
dim TBSIMcm
dim TBSIMRS
dim TBSIMdb
dim bgcolor
dim numcols
dim numrows
dim colcounter
dim rowcounter
dim thisfield
dim sQueryString
dim sAltLangQueryString
dim sScriptsVar
dim sString
dim sGoc
dim sOrigURL
dim sType
dim noPrintableLink
dim sParameter
dim sAccessKeyMenuText(3)
dim sAccessKey1Text(3)
dim sAccessKey2Text(3)
dim sNavigationMenu(3)
dim institutionName(3)
dim fipImage(2)
dim rootWeb
dim cssFolder
dim imagesFolder
dim CLF2imagesFolder
dim styleFolder
dim importantNotices(2)

Msg_ExtensionName (0,0) = "Extended Markup Language"
Msg_ExtensionName (0,1) = "Extended Markup Language"
Msg_ExtensionName (1,0) = "RTF"
Msg_ExtensionName (1,1) = "RTF"
Msg_ExtensionName (2,0) = "PDF"
Msg_ExtensionName (2,1) = "PDF"
Msg_ExtensionName (3,0) = "Text"
Msg_ExtensionName (3,1) = "Texte"
Msg_ExtensionName (6,0) = "PPT"
Msg_ExtensionName (6,1) = "PPT"
Msg_ExtensionName (7,0) = "DOC"
Msg_ExtensionName (7,1) = "DOC"
Msg_ExtensionName (8,0) = "XLS"
Msg_ExtensionName (8,1) = "XLS"
Msg_ExtensionName (9,0) = "Application"
Msg_ExtensionName (9,1) = "Application"
Msg_ExtensionName (10,0) = "WPD"
Msg_ExtensionName (10,1) = "WPD"
MSG_RSS_NEWS_Feeds(0) = "RSS News Feeds"
MSG_RSS_NEWS_Feeds(1) = "Fils de nouvelles RSS"

sAboutUsFile (0) = "/admin/abu-ans-eng"
sAboutUsFile (0) = "/admin/abu-ans-fra"
sContactUsFile (0) = "/admin/contact-eng"
sContactUsFile (1) = "/admin/contact-fra"
SHelpFile (0) = "/admin/help-aide-eng"
SHelpFile (1) = "/admin/help-aide-fra"
sHomeLink(0) = "/fin-eng.asp"
sHomeLink(1) = "/fin-fra.asp"
importantNotices(0) = "<a href=""/admin/notices-avis-eng.asp"">"
importantNotices(1) = "<a href=""/admin/notices-avis-fra.asp"">"
sPoliciesFile (0) = "/admin/policies-politiques-eng"
sPoliciesFile (1) = "/admin/policies-politiques-fra"
sSiteMapFile (0) = "/admin/map-carte-eng"
sSiteMapFile (1) = "/admin/map-carte-fra"
institutionName(0) = "Department of Finance Canada"
institutionName(1) = "Ministère des Finances Canada"
Msg_TableOfContents (0) = "Table of Contents"
Msg_TableOfContents (1) = "Table des matières"
MSG_Versions(0) = "Versions: "
MSG_Versions(1) = "Versions : "
altPrintClass(0) = "altPrint"
altPrintClass(1) = "altPrintF"
' leave them blank as they are used only for hrma
backBannerMainOpenDiv = ""
backBannerDocumentOpenDiv = ""
backBannerMainCloseDiv = ""

rootWeb = FINRoot
cssFolder = "/css/"
styleFolder = "/css/"
imagesFolder  = "/images/"
CLF2imagesFolder  = "/images/"
fipImage(0) = "/images/finfipe.gif"
fipImage(1) = "/images/finfipf.gif"
sInstructionsLink(0) = "/admin/instruction-eng.asp"
sInstructionsLink(1) = "/admin/instruction-fra.asp"
bannerClass(0) = "banner"
bannerClass(1) = "banner"
sCreator(0) = "Government of Canada, Department of Finance"
sCreator(1) = "Gouvernement du Canada, Ministère des finances"

MSG_CLF_VERSION(0) = "<!-- CLF 2.0 TEMPLATE VERSION 1.04 | VERSION 1.04 DU GABARIT NSI 2.0 -->"
MSG_CLF_VERSION(1) = "<!-- VERSION 1.04 DU GABARIT NSI 2.0 | CLF 2.0 TEMPLATE VERSION 1.04  -->"
MSG_HEADER_BEGINS(0) = "<!-- HEADER BEGINS | DEBUT DE L'EN-TETE -->"
MSG_HEADER_BEGINS(1) = "<!-- HEADER BEGINS | DEBUT DE L'EN-TETE -->"
MSG_TITLE_BEGINS(0) = "<!-- TITLE BEGINS | DEBUT DU TITRE -->"
MSG_TITLE_BEGINS(1) = "<!-- DEBUT DU TITRE | TITLE BEGINS -->"
MSG_TITLE_ENDS(0) = "<!-- TITLE ENDS | FIN DU TITRE -->"
MSG_TITLE_ENDS(1) = "<!-- FIN DU TITRE | TITLE ENDS -->"
MSG_METADATA_BEGINS(0) = "<!-- METADATA BEGINS | DEBUT DES METADONNEES -->"
MSG_METADATA_BEGINS(1) = "<!-- DEBUT DES METADONNEES | METADATA BEGINS -->"
MSG_METADATA_ENDS(0) = "<!-- METADATA ENDS | FIN DES METADONNEES -->"
MSG_METADATA_ENDS(1) = "<!-- FIN DES METADONNEES | METADATA ENDS -->"
MSG_TEMPLATE_SCRIPTS_BEGIN(0) = "<!-- TEMPLATE SCRIPTS/CSS BEGIN | DEBUT DES SCRIPTS/CSS DU GABARIT -->"
MSG_TEMPLATE_SCRIPTS_BEGIN(1) = "<!-- DEBUT DES SCRIPTS/CSS DU GABARIT | TEMPLATE SCRIPTS/CSS BEGIN -->"
MSG_TEMPLATE_SCRIPTS_END(0) = "<!-- TEMPLATE SCRIPTS/CSS END | FIN DES SCRIPTS/CSS DU GABARIT -->"
MSG_TEMPLATE_SCRIPTS_END(1) = "<!-- FIN DES SCRIPTS/CSS DU GABARIT | TEMPLATE SCRIPTS/CSS END -->"
MSG_PROGRESSIVE_ENHANCEMENT_BEGINS(0) = "<!-- PROGRESSIVE ENHANCEMENT BEGINS | DEBUT DE L'AMELIORATION PROGRESSIVE -->"
MSG_PROGRESSIVE_ENHANCEMENT_BEGINS(1) = "<!-- DEBUT DE L'AMELIORATION PROGRESSIVE | PROGRESSIVE ENHANCEMENT BEGINS -->"
MSG_PROGRESSIVE_ENHANCEMENT_ENDS(0) = "<!-- PROGRESSIVE ENHANCEMENT ENDS | FIN DE L'AMELIORATION PROGRESSIVE -->"
MSG_PROGRESSIVE_ENHANCEMENT_ENDS(1) = "<!-- FIN DE L'AMELIORATION PROGRESSIVE | PROGRESSIVE ENHANCEMENT ENDS -->"
MSG_TEMPLATE_PRINT_CSS_BEGINS(0) = "<!-- TEMPLATE PRINT CSS BEGINS | DEBUT DU CSS DU GABARIT POUR L'IMPRESSION -->"
MSG_TEMPLATE_PRINT_CSS_BEGINS(1) = "<!-- DEBUT DU CSS DU GABARIT POUR L'IMPRESSION | TEMPLATE PRINT CSS BEGINS -->"
MSG_TEMPLATE_PRINT_CSS_ENDS(0) = "<!-- TEMPLATE PRINT CSS ENDS | FIN DU CSS DU GABARIT POUR L'IMPRESSION -->"
MSG_TEMPLATE_PRINT_CSS_ENDS(1) = "<!-- FIN DU CSS DU GABARIT POUR L'IMPRESSION | TEMPLATE PRINT CSS ENDS -->"
MSG_FIP_HEADER_BEGINS(0) = "<!-- FIP HEADER BEGINS | DEBUT DE L'EN-TETE PCIM -->"
MSG_FIP_HEADER_BEGINS(1) = "<!-- DEBUT DE L'EN-TETE PCIM | FIP HEADER BEGINS -->"
MSG_FIP_HEADER_ENDS(0) = "<!-- FIP HEADER ENDS | FIN DE L'EN-TETE PCIM -->"
MSG_FIP_HEADER_ENDS(1) = "<!-- FIN DE L'EN-TETE PCIM | FIP HEADER ENDS -->"
MSG_INSTITUTIONAL_BANNER_STARTS(0) = "<!-- INSTITUTIONAL BANNER STARTS | DEBUT DE LA BANNIERE INSTITUTIONNELLE -->"
MSG_INSTITUTIONAL_BANNER_STARTS(1) = "<!-- DEBUT DE LA BANNIERE INSTITUTIONNELLE | INSTITUTIONAL BANNER STARTS -->"
MSG_INSTITUTIONAL_BANNER_ENDS(0) = "<!-- INSTITUTIONAL BANNER ENDS | FIN DE LA BANNIERE INSTITUTIONNELLE -->"
MSG_INSTITUTIONAL_BANNER_ENDS(1) = "<!-- FIN DE LA BANNIERE INSTITUTIONNELLE | INSTITUTIONAL BANNER ENDS -->"
MSG_SKIP_NAVIGATION_BEGINS(0) = "<!-- SKIP NAVIGATION BEGINS | DEBUT DU SAUT DE NAVIGATION -->"
MSG_SKIP_NAVIGATION_BEGINS(1) = "<!-- DEBUT DU SAUT DE NAVIGATION | SKIP NAVIGATION BEGINS -->"
MSG_SKIP_NAVIGATION_ENDS(0) = "<!-- SKIP NAVIGATION ENDS | FIN DU SAUT DE NAVIGATION -->"
MSG_SKIP_NAVIGATION_ENDS(1) = "<!-- FIN DU SAUT DE NAVIGATION | SKIP NAVIGATION ENDS -->"
MSG_COMMON_MENU_BAR_BEGINS(0) = "<!-- COMMON MENU BAR BEGINS | DEBUT DE LA BARRE DE MENU COMMUNE -->"
MSG_COMMON_MENU_BAR_BEGINS(1) = "<!-- DEBUT DE LA BARRE DE MENU COMMUNE | COMMON MENU BAR BEGINS -->"
MSG_COMMON_MENU_BAR_ENDS(0) = "<!-- COMMON MENU BAR ENDS| FIN DE LA BARRE DE MENU COMMUNE -->"
MSG_COMMON_MENU_BAR_ENDS(1) = "<!-- FIN DE LA BARRE DE MENU COMMUNE | COMMON MENU BAR ENDS -->"
MSG_COMMON_MENU_BAR_TITLE_BEGINS(0) = "<!-- COMMON MENU BAR TITLE BEGINS | DEBUT DU TITRE DE LA BARRE DE MENU COMMUNE -->"
MSG_COMMON_MENU_BAR_TITLE_BEGINS(1) = "<!-- DEBUT DU TITRE DE LA BARRE DE MENU COMMUNE | COMMON MENU BAR TITLE BEGINS -->"
MSG_COMMON_MENU_BAR_LINKS(0) = "Common menu bar links"
MSG_COMMON_MENU_BAR_LINKS(1) = "Liens de la barre de menu commune"
MSG_COMMON_MENU_BAR_TITLE_ENDS(0) = "<!-- COMMON MENU BAR TITLE ENDS | FIN DU TITRE DE LA BARRE DE MENU COMMUNE -->"
MSG_COMMON_MENU_BAR_TITLE_ENDS(1) = "<!-- FIN DU TITRE DE LA BARRE DE MENU COMMUNE | COMMON MENU BAR TITLE ENDS -->"
MSG_HEADER_ENDS(0) = "<!-- HEADER ENDS | FIN DE L'EN-TETE -->"
MSG_HEADER_ENDS(1) = "<!-- HEADER ENDS | FIN DE L'EN-TETE -->"
MSG_SKIP_TO_CONTENT(0) = "Skip to content"
MSG_SKIP_TO_CONTENT(1) = "Passer au contenu"
MSG_SKIP_TO_INSTITUTIONAL_LINKS(0) = "Skip to institutional links"
MSG_SKIP_TO_INSTITUTIONAL_LINKS(1) = "Passer aux liens institutionnels"
MSG_CUSTOM_SCRIPTS_BEGIN(0) = "<!-- CUSTOM SCRIPTS/CSS BEGIN | DEBUT DES SCRIPTS/CSS PERSONNALISES -->"
MSG_CUSTOM_SCRIPTS_BEGIN(1) = "<!-- DEBUT DES SCRIPTS/CSS PERSONNALISES | CUSTOM SCRIPTS/CSS BEGIN -->"
MSG_CUSTOM_SCRIPTS_END(0) = "<!-- CUSTOM SCRIPTS/CSS end | FIN DES SCRIPTS/CSS PERSONNALISES -->"
MSG_CUSTOM_SCRIPTS_END(1) = "<!-- FIN DES SCRIPTS/CSS PERSONNALISES | CUSTOM SCRIPTS/CSS end -->"
MSG_LANGUAGE_LINK_BEGINS(0) = "<!-- FRENCH LINK BEGINS | DEBUT DU LIEN FRANCAIS -->"
MSG_LANGUAGE_LINK_BEGINS(1) = "<!-- DEBUT DU LIEN ANGLAIS | ENGLISH LINK BEGINS -->"
MSG_LANGUAGE_LINK_ENDS(0) = "<!-- FRENCH LINK ENDS | DEBUT DU LIEN FRANCAIS -->"
MSG_LANGUAGE_LINK_ENDS(1) = "<!-- FIN DU LIEN ANGLAIS | ENGLISH LINK ENDS -->"
MSG_BREAD_CRUMB_BEGINS(0) = "<!-- BREAD CRUMB BEGINS | DEBUT DE LA PISTE DE NAVIGATION -->"
MSG_BREAD_CRUMB_BEGINS(1) = "<!-- DEBUT DE LA PISTE DE NAVIGATION | BREAD CRUMB BEGINS -->"
MSG_BREAD_CRUMB_ENDS(0) = "<!-- BREAD CRUMB ENDS | FIN DE LA PISTE DE NAVIGATION -->"
MSG_BREAD_CRUMB_ENDS(1) = "<!-- FIN DE LA PISTE DE NAVIGATION | BREAD CRUMB ENDS -->"
MSG_ONE_COLUMN_LAYOUT_BEGINS(0) = "<!-- ONE COLUMN LAYOUT BEGINS | DEBUT DE LA MISE EN PAGE D'UNE COLONNE -->"
MSG_ONE_COLUMN_LAYOUT_BEGINS(1) = "<!-- DEBUT DE LA MISE EN PAGE D'UNE COLONN | ONE COLUMN LAYOUT BEGINS -->"
MSG_TWO_COLUMN_LAYOUT_BEGINS(0) = "<!-- TWO COLUMN LAYOUT BEGINS | DEBUT DE LA MISE EN PAGE DE DEUX COLONNES -->"
MSG_TWO_COLUMN_LAYOUT_BEGINS(1) = "<!-- DEBUT DE LA MISE EN PAGE DE DEUX COLONNES | TWO COLUMN LAYOUT BEGINS -->"
MSG_THREE_COLUMN_LAYOUT_BEGINS(0) = "<!-- THREE COLUMN LAYOUT BEGINS | DEBUT DE LA MISE EN PAGE DE TROIS COLONNES -->"
MSG_THREE_COLUMN_LAYOUT_BEGINS(1) = "<!-- DEBUT DE LA MISE EN PAGE DE TROIS COLONNES | THREE COLUMN LAYOUT BEGINS -->"
MSG_ONE_COLUMN_LAYOUT_ENDS(0) = "<!-- ONE COLUMN LAYOUT ENDS | FIN DE LA MISE EN PAGE D'UNE COLONNE -->"
MSG_ONE_COLUMN_LAYOUT_ENDS(1) = "<!-- FIN DE LA MISE EN PAGE D'UNE COLONNE | ONE COLUMN LAYOUT ENDS -->"
MSG_TWO_COLUMN_LAYOUT_ENDS(0) = "<!-- TWO COLUMN LAYOUT ENDS | FIN DE LA MISE EN PAGE DE DEUX COLONNES -->"
MSG_TWO_COLUMN_LAYOUT_ENDS(1) = "<!-- FIN DE LA MISE EN PAGE DE DEUX COLONNES | TWO COLUMN LAYOUT ENDS -->"
MSG_THREE_COLUMN_LAYOUT_ENDS(0) = "<!-- THREE COLUMN LAYOUT ENDS | FIN DE LA MISE EN PAGE DE TROIS COLONNES -->"
MSG_THREE_COLUMN_LAYOUT_ENDS(1) = "<!-- FIN DE LA MISE EN PAGE DE TROIS COLONNES | THREE COLUMN LAYOUT ENDS -->"
MSG_LEFT_SIDE_MENU_BEGINS(0) = "<!-- LEFT SIDE MENU BEGINS | DEBUT DU MENU LATERAL GAUCHE -->"
MSG_LEFT_SIDE_MENU_BEGINS(1) = "<!-- LEFT SIDE MENU BEGINS | DEBUT DU MENU LATERAL GAUCHE -->"
MSG_LEFT_SIDE_MENU_ENDS(0) = "<!-- LEFT SIDE MENU ENDS | FIN DU MENU LATERAL GAUCHE -->"
MSG_LEFT_SIDE_MENU_ENDS(1) = "<!-- LEFT SIDE MENU ENDS | FIN DU MENU LATERAL GAUCHE -->"
MSG_CONTENT_BEGINS(0) = "<!-- CONTENT BEGINS | DEBUT DU CONTENU -->"
MSG_CONTENT_BEGINS(1) = "<!-- DEBUT DU CONTENU | CONTENT BEGINS -->"
MSG_CONTENT_ENDS(0) = "<!-- CONTENT ENDS | FIN DU CONTENU -->"
MSG_CONTENT_ENDS(1) = "<!-- FIN DU CONTENU | CONTENT ENDS -->"
MSG_RIGHT_SIDE_MENU_BEGINS(0) = "<!-- RIGHT SIDE MENU BEGINS | DEBUT DU MENU LATERAL DROIT -->"
MSG_RIGHT_SIDE_MENU_BEGINS(1) = "<!-- DEBUT DU MENU LATERAL DROIT | RIGHT SIDE MENU BEGINS -->"
MSG_RIGHT_SIDE_MENU_ENDS(0) = "<!-- RIGHT SIDE MENU ENDS | FIN DU MENU LATERAL DROIT -->"
MSG_RIGHT_SIDE_MENU_ENDS(1) = "<!-- FIN DU MENU LATERAL DROIT | RIGHT SIDE MENU ENDS -->"
MSG_FOOTER_BEGINS(0) = "<!-- FOOTER BEGINS | DEBUT DU PIED DE LA PAGE -->"
MSG_FOOTER_BEGINS(1) = "<!-- FOOTER BEGINS | DEBUT DU PIED DE LA PAGE -->"
MSG_DATE_MODIFIED_BEGINS(0) = "<!-- DATE MODIFIED BEGINS | DEBUT DE LA DATE DE MODIFICATION -->"
MSG_DATE_MODIFIED_BEGINS(1) = "<!-- DEBUT DE LA DATE DE MODIFICATION | DATE MODIFIED BEGINS -->"
MSG_DATE_MODIFIED(0) = "Date Modified:"
MSG_DATE_MODIFIED(1) = "Date de modification :"
MSG_DATE_MODIFIED_ENDS(0) = "<!-- DATE MODIFIED ENDS | FIN DE LA DATE DE MODIFIC -->"
MSG_DATE_MODIFIED_ENDS(1) = "<!-- FIN DE LA DATE DE MODIFIC | DATE MODIFIED ENDS -->"
MSG_RETURN_TO_TOP_OF_PAGE(0) = "Return to Top of Page"
MSG_RETURN_TO_TOP_OF_PAGE(1) = "Retourner au haut de la page"
MSG_FOOTER_ENDS(0) = "	<!-- FOOTER ENDS | FIN DU PIED DE LA PAGE -->"
MSG_FOOTER_ENDS(1) = "<!-- FOOTER ENDS | FIN DU PIED DE LA PAGE -->"
MSG_LanguageButton(0) = "Fran&ccedil;ais"
MSG_LanguageButton(1) = "English"
MSG_HomePage(0) = "Home"
MSG_HomePage(1) = "Accueil"
MSG_ContactUsButton(0) = "Contact Us"
MSG_ContactUsButton(1) = "Contactez-nous"
MSG_HelpButton(0) = "Help"
MSG_HelpButton(1) = "Aide"
MSG_SearchButton(0) = "Search"
MSG_SearchButton(1) = "Recherche"
MSG_Institutional_Links(0) = "Institutional links"
MSG_Institutional_Links(1) = "Liens institutionnels"

MSG_LanguageTitle(0) = "Français - Version française de cette page"
MSG_LanguageTitle(1) = "English - English version of the Web page"
MSG_HomeTitle(0) = "Home - The main page of the " & institutionName (0) & " Web site"
MSG_HomeTitle(1) = "Accueil - Page principale du site Web du " & institutionName (1)
MSG_ContactUsTitle(0) = "Contact Us - " & institutionName (0) & " contact information"
MSG_ContactUsTitle(1) = "Contactez-nous - Communiquez avec nous"
MSG_HelpTitle(0) = "Help - Information about using the " & institutionName (0) & " Web site"
MSG_HelpTitle(1) = "Aide - Renseignements sur la façon d'utiliser le site Web du " & institutionName (1)
MSG_SearchTitle(0) = "Search - Search the " & institutionName (0) & " Web site"
MSG_SearchTitle(1) = "Recherche - Recherche dans le site Web du " & institutionName (1)
MSG_CanadaSiteTitle(0) = "canada.gc.ca - Government of Canada Web site"
MSG_CanadaSiteTitle(1) = "canada.gc.ca - Site Web du gouvernement du Canada"

Msg_Unavailable (0) = "<h3>The document you are trying to access is not yet available.</h3>"
Msg_Unavailable (1) = "<h3>Le document que vous essayez d'accéder n'est pas encore disponible.</h3>"
Msg_Unavailable (2) = "<h3>The document you are trying to access is not yet available - Spanish.</h3>"

Msg_Archived (0) = "<h3>This document has been archived.</h3>"
Msg_Archived (1) = "<h3>Ce document a été archivé.</h3>"
Msg_Archived (2) = "<h3>This document has been archived. - Spanish</h3>"

Msg_PreviousPart (0) = "Previous"
Msg_PreviousPart (1) = "Précédent"
Msg_PreviousPart (2) = "Anterior"

Msg_NextPart (0) = "Next"
Msg_NextPart (1) = "Suivant"
Msg_NextPart (2) = "Después"

Msg_Part1 (0) = " - Part "
Msg_Part1 (1) = " - Partie "
Msg_Part1 (2) = " - Parte "

Msg_Part2 (0) = " of "
Msg_Part2 (1) = " de "
Msg_Part2 (2) = " de "

Msg_Extension (0) = "e"
Msg_Extension (1) = "f"

Msg_ImportantNoticesText (0) = "Copyright/Permission to Reproduce, Non-commercial Reproduction, Commercial Reproduction, Third-party Materials, Hyperlinking Notice, Privacy Notice, Official Languages Notice, Accessibility Notice"
Msg_ImportantNoticesText (1) = "Droit d'auteur ou de reproduction,Copie non commerciale,Reproduction à des fins commerciales, Documents d'une tierce partie,Avis concernant l'établissement d'hyperliens,Déclaration sur la protection des renseignements personnels,Avis concernant les langues officielles, Avis concernant l'accessibilité"

Msg_ImportantNotices (0) = "Important Notices"
Msg_ImportantNotices (1) = "Avis importants"

Msg_Flag (0) = "Canada Flag"
Msg_Flag (1) = "Drapeau du Canada"
Msg_Flag (2) = "Canada Flag"

Msg_GOC (0) = "Department of Finance Canada"
Msg_GOC (1) = "Ministère des Finances Canada"
Msg_GOC (2) = "Department of Finance Canada"

Msg_SymbolGOC (0) = "Symbol of the Government of Canada"
Msg_SymbolGOC (1) = "Symbole du gouvernement du Canada"
Msg_SymbolGOC (2) = "Symbol of the Government of Canada"

Msg_Modified(0) = "Date Modified: "
Msg_Modified(1) = "Date de modification: "

Msg_PrintableVersion (0) = "Print Version"
Msg_PrintableVersion (1) = "Version imprimable"
Msg_PrintableVersion (2) =  "Print Version"

Msg_Top (0) = "Top of Page"
Msg_Top (1) = "Haut de la page"
Msg_Top (2) = "Top of page"

Msg_Anchor (0) = "Top"
Msg_Anchor (1) = "Haut"
Msg_Anchor (2) = "Top"

Msg_AnchorTop (0) = "Go to top of page"
Msg_AnchorTop (1) = "Aller au haut de la page"
Msg_AnchorTop (2) = "Go to top of page"

Msg_readMe(0) = "Instructions"
Msg_readMe(1) = "Instructions"
Msg_readMe(2) = "Lisez moi"

MSG_FIN(0) = "Department of Finance"
MSG_FIN(1) = "Ministère des Finances"

MSG_HRMAemployees(0) = "Employees"
MSG_HRMAemployees(1) = "Employés"

MSG_Manager(0) = "Managers"
MSG_Manager(1) = "Gestionnaires"

MSG_HRProfessionals(0) = "HR Professionals"
MSG_HRProfessionals(1) = "professionels RH"

MSG_Tools(0) = "Tools"
MSG_Tools(1) = "Outils"

MSG_A_Z_Index(0) = "A-Z Index"
MSG_A_Z_Index(1) = "Index A-Z"

MSG_DocTypesList(0) = "Document types"
MSG_DocTypesList(1) = "Types de document"

Img_GOC_FIP (0) = "/images/clf/gocfip_e.gif"
Img_GOC_FIP (1) = "/images/clf/gocfip_f.gif"

Img_GOC_FIP_Printable (0) = "/images/clf/gocfip-noflag_e.gif"
Img_GOC_FIP_Printable (1) = "/images/clf/gocfip-noflag_f.gif"

Img_noFIP (0) = "/images/fip-noflag_e.gif"
Img_noFIP (1) = "/images/fip-noflag_f.gif"
Img_noFIP (2) = "/images/fip-noflag_e.gif"

sAccessKeyMenuText(0)="Menu (access key: M)"
sAccessKeyMenuText(1)="Menu (touche d'acc&egrave;s : M)"
sAccessKeyMenuText(2)="Menu (access key: M)"

sAccessKey1Text(0)="Skip to Side Menu"
sAccessKey1Text(1)="Sautez à la colonne latérale"
sAccessKey1Text(2)="Skip to Side Menu"

sAccessKey2Text(0)="Skip to Content Area"
sAccessKey2Text(1)="Sautez à la colonne principale"
sAccessKey2Text(0)="Skip to Content Area"

sNavigationMenu(0)="Navigation Menu"
sNavigationMenu(1)="Menu de navigation"

MSG_BCAboutUs(0) =  "About Finance Canada"
MSG_BCAboutUs(1) =  "Le Ministère"
MSG_BCNews(0) = "News"
MSG_BCNews(1) = "Nouvelles"
MSG_BCPublications(0)  = "Publications and reports"
MSG_BCPublications(1) = "Publications et rapports"
MSG_BCActivities(0) = "Activities and issues"
MSG_BCActivities(1) = "Activités et enjeux"
MSG_BCBudgets(0) = "Budgets"
MSG_BCBudgets(1) = "Budgets"
MSG_BCLegislation(0) = "Legislation"
MSG_BCLegislation(1) = "Legislation"
MSG_BCSiteMap(0) = "Site map"
MSG_BCSiteMap(1) = "Site map"
MSG_BCProactiveDisclosure(0) = "Proactive Disclosure"
MSG_BCProactiveDisclosure(1) = "Divulgation proavtive"

Const adCmdStoredProc = &H0004
Const adVarChar = 200
Const adParamInput = &H0001
Const adSmallInt = 2
Const CONTACT_US          =  "5"
Const HELP				  =  "7"
Const HOME		  =  "8"
Const NAVIGATION	  = "10"
Const IMPORTANT_NOTICES   = "69"
Const PAMPHLET 		  = "76"
Const NJC_DIRECTIVE   = "93"

iGOCService="152"

' assign the default weight of 2000 to each document.  The possible values
' are 0,1000,2000,3000,4000

searchrank(0) = 2000
searchrank(1) = 2000

Function LastModifiedDate(tmpFilename)
	' this writes the last modified date to the page.
	' pass the filename you want to get the date for
	Set fso = CreateObject("Scripting.FileSystemObject")
	Set f = fso.GetFile(server.mappath(tmpFilename))
	response.write ProperDateFormat(f.DateLastModified)
	Set fso = Nothing
	Set f = Nothing
end Function

Function ProperDateFormat(TestDate)
  'formats dates to YYYY-MM-DD standard
  dim dYear, dMonth, dDay

	dYear = YearNum(TestDate)
	dMonth = MonthNum(TestDate)
	dDay = DayNumMonth(TestDate)
	if Len(dMonth)=1 Then dMonth="0"&dMonth end if
	if Len(dDay)=1 Then dDay="0"&dDay end if
	ProperDateFormat = dYear&"-"&dMonth&"-"&dDay
end Function

sub writeMetaData (name, content)
	if bAlive = False AND content <> EMPTY Then
		if (instr(1,sHost,"www.")) Then
			response.write (vbTAB & "<meta name=" & chr(34) & name & chr(34) & " content=" & chr(34) & replace(replace(Msg_Unavailable(iLanguageID-1),"<h3>",""),"</h3>","") & chr(34) & " />"  & vbCRLF)
		else
			response.write (vbTAB & "<meta name=" & chr(34) & name & chr(34) & " content=" & chr(34) & content & chr(34) & " />"  & vbCRLF)
		end if
	elseif content <> EMPTY Then
		response.write (vbTAB & "<meta name=" & chr(34) & name & chr(34) & " content=" & chr(34) & content & chr(34) & " />"  & vbCRLF)
	end if
end sub

sub writePresenterMetaData (name, content)
	if content <> EMPTY Then
		response.write (vbTAB & "<meta name=" & chr(34) & name & chr(34) & " content=" & chr(34) & "presenter " & content & chr(34) & " />"  & vbCRLF)
	end if
end sub

sub writeRelationsMetaData (name, content1, content2)
	if content <> EMPTY Then
		response.write (vbTAB & "<meta name=" & chr(34) & name & chr(34) & " content=" & chr(34) & content1 & " " & content2 & chr(34) & " />"  & vbCRLF)
	end if
end sub

sub CloseAll (TBSIMRS)
	Call CloseRecordSet (TBSIMRS)
	Call CloseDB ()
end sub

sub CloseRecordSet (TBSIMRS)
	TBSIMRS.close
	set TBSIMRS=nothing
end sub

sub CloseDB (TBSIMdb)
	set TBSIMRS=nothing
	set TBSIMcm=nothing
	TBSIMconn.close
	set TBSIMconn=nothing
end sub

sub writeText (sText)
	response.write sText & vbCRLF
end sub

Function getAllResourceInfo ()
dim TBSIMcm

    Set TBSIMcm = Server.CreateObject ("ADODB.Command")
    TBSIMcm.ActiveConnection = TBSIMconn
    TBSIMcm.commandtype= adCmdStoredProc
    TBSIMcm.CommandText = "usp_getAllResourceData"

    TBSIMcm.Parameters.append TBSIMcm.createparameter("@URL",advarchar,adparamInput,512,sURL)
    set TBSIMRS = TBSIMcm.execute
    if not (TBSIMRS.BOF and TBSIMRS.EOF) then
		resourceData=TBSIMRS.getrows ()
        bresourceData = True
		getAllResourceInfo = 1
    else
		getAllResourceInfo = -1
    end if
end Function

sub getResourceLinkInfo (sServiceAbbr)
	dim TBSIMcm
	dim TBSIMRS2
	dim TBSIMconn
	dim ServiceData

	Set TBSIMconn = Server.CreateObject ("ADODB.Connection")
	TBSIMconn.ConnectionString = TBSIMConnectionString
	TBSIMconn.Open

	Set TBSIMRS2 = Server.CreateObject("ADODB.Recordset")

	Set TBSIMcm = Server.CreateObject ("ADODB.Command")
	TBSIMcm.ActiveConnection = TBSIMconn
	TBSIMcm.commandtype= adCmdStoredProc
	TBSIMcm.CommandText = "usp_checkServiceLinks"

	TBSIMcm.Parameters.append TBSIMcm.createparameter("@serviceAbbr",advarchar,adparamInput,100,sServiceAbbr)
	TBSIMcm.Parameters.append TBSIMcm.createparameter("@domain",advarchar,adparamInput,100,swapToProductionURL(serviceDomain))

	set TBSIMRS2 = TBSIMcm.execute

	if not (TBSIMRS2.BOF and TBSIMRS2.EOF) then
		sLinksData=TBSIMRS2.GetRows()
		if sServiceAbbr = "hrmm-mgrh" then
'			sLinksData(0,0) = sLinksData(0,0) & "NM"
		end if
	end if

	TBSIMRS2.Close
	Set TBSIMRS2=Nothing
	set TBSIMcm=nothing
	TBSIMconn.close
	set TBSIMconn=nothing
end sub

sub writeW3Ccode ()
	if iLanguageID = 1 Then
		response.write (vbCRLF & "<html lang=" & chr(34) & "en" & chr(34) & ">" & VbCRLF)

	elseif iLanguageID = 2 Then
		response.write (vbCRLF & "<html lang=" & chr(34) & "fr" & chr(34) & ">" & VbCRLF)
	end if
end sub

sub getResourceData ()
	numcols=ubound(resourceData,1)
	numrows=ubound(resourceData,2)

	iResourceID     = resourceData(0,0)
	if iLanguageID = "" Then
		iLanguageID  = resourceData(1,0)
	end if

	sdDateCreated   = resourceData(2,0)
	if sdDateModified = "" Then
		sdDateModified  = resourceData(3,0)
	end if

	sdDateReviewed  = resourceData(4,0)
	sdDatePreserved = resourceData(5,0)
    if (iLanguageID=2) Then
	    sLangParameter = "fr"
	else
	    sLangParameter = "en"
	end if
end sub

sub getResourceTopics ()
	if bresourceTopic = True Then
		inumTopics = 0

		While inumTopics < iTotalTopics
			thisfield=resourceTopics(inumTopics )(0,1)
			numcols=ubound(resourceTopics(inumTopics ),1)
			numrows=ubound(resourceTopics(inumTopics),2)

			for rowcounter= 0 TO numrows
				iLang = resourceTopics (inumTopics)(0,rowcounter)
				thisfield=resourceTopics(inumTopics)(1,rowcounter)

				ssubjects (inumTopics,iLang-1)=resourceTopics(inumTopics)(1,rowcounter)
				if isnull(thisfield) then
	  				thisfield=""
			    	end if
			next
			inumTopics = inumTopics + 1
		Wend
	end if
end sub

sub getResourceMetaTags ()
	if bresourceMetadata = True Then
		numcols=ubound(resourceMetadata,1)
		numrows=ubound(resourceMetadata,2)

		FOR rowcounter= 0 TO numrows
				iLang = resourceMetadata(0,rowcounter)
				thisfield=resourceMetadata(1,rowcounter)
				Select Case thisfield
					case "audience"
						if sAudience (iLang-1) = "" Then
							sAudience (iLang-1) = resourceMetadata(2,rowcounter)
						else
							sAudience (iLang-1) = sAudience (iLang-1) & ", " & resourceMetadata(2,rowcounter)
						end if
					case "SwitchLanguageButton"
						sLanguage (iLang-1) = resourceMetadata (2,rowcounter)
					case "title"
						if sLocalTitle <> "" Then
							sTitle (iLang-1) = sLocalTitle
						else
							sTitle (iLang-1) = resourceMetadata (2,rowcounter)
						end if
					case "description"
						sDescription (iLang-1) = resourceMetadata (2,rowcounter)
					case "keyword"
						if (sKeywords (iLang-1)  <> EMPTY) then
							sKeywords (iLang-1) = sKeywords (iLang-1) & ", " & resourceMetadata (2,rowcounter)
						else
							sKeywords (iLang-1) = resourceMetadata (2,rowcounter)
						end if
					case "isPartOf"
						sisPartOf (iLang-1) = resourceMetadata (2,rowcounter)
					case "isBasedOn"
						sisBasedOn (iLang-1) = resourceMetadata (2,rowcounter)
					case "replaces"
						sReplaces (iLang-1) = resourceMetadata (2,rowcounter)
					case "docCategory"
						sdocCategory (iLang-1) = resourceMetadata (2,rowcounter)
					case "docTypeID"
						idocTypeID (0) = resourceMetadata (2,rowcounter)
						idocTypeID (1) = resourceMetadata (2,rowcounter)
					case "docType"
						sdocType (iLang-1) = resourceMetadata (2,rowcounter)
					case "ContactUs"
						sContactUs (iLang-1) = resourceMetadata (2,rowcounter)
					case "Help"
						if resourceMetadata (1,rowcounter) <> "docType" Then
							sHelp (iLang-1) = resourceMetadata (2,rowcounter)
						end if
					case "Search"
						sSearchLink (iLang-1) = resourceMetadata (2,rowcounter)
						if (InStr (sSearchLink (iLang-1), "query-recherche") AND InStr (sSearchLink (iLang-1), ".aspx")) Then
						    sSearchLink (iLang-1) = SearchLink & sLanguageSuffix & ".aspx" & Mid (sSearchLink (iLang-1), InStr (sSearchLink (iLang-1), "?who="))
						end if
					case "WhatsNew"
						sWhatsNew (iLang-1) = resourceMetadata (2,rowcounter)
					case "AboutUs"
						sAboutUs (iLang-1) = resourceMetadata (2,rowcounter)
					case "Policies"
						sPolicies (iLang-1) = resourceMetadata (2,rowcounter)
					case "presenter"
						sPresenter (iLang-1) = resourceMetadata (2,rowcounter)
					case "SiteMap"
						sSiteMap  (iLang-1) = resourceMetadata (2,rowcounter)
					case "Robots"
						sRobots  (iLang-1) = resourceMetadata (2,rowcounter)
					case "Service"
						sService (iLang-1) = resourceMetadata (2,rowcounter)
					case "ServiceID"
						iServiceID (iLang-1) = resourceMetadata (2,rowcounter)
					case "activity"
						if sActivity (iLang-1) = "" Then
							sActivity (iLang-1) = resourceMetadata(2,rowcounter)
						else
							sActivity (iLang-1) = sActivity (iLang-1) & ", " & resourceMetadata(2,rowcounter)
						end if
					case "FormatID"
						iFormatID (iLang-1) = resourceMetaData(2,rowcounter)
					case "Formats"
						sFormatURLs(iNumFormats, iLang-1) = resourceMetaData(2,rowcounter)
						if InStr (sFormatURLs(iNumFormats, iLang-1), sWebType) Then
							sFormatURLs(iNumFormats, iLang-1) = swapFromProductionURL (resourceMetaData(2,rowcounter))
							iNumFormats = iNumFormats + 1
						else
							sFormatURLs(iNumFormats, iLang-1) = ""
						end if
					case "PartNo"
						iPartNo (iLang-1) = resourceMetaData(2,rowcounter)
					case "Format"
						smmFormats (iLang-1) = resourceMetaData(2,rowcounter)
					case "RdimS"
						iRdimS (iLang-1) = resourceMetaData(2,rowcounter)
					case "LiveOnProduction"
						bAlive = True
					case "prevPart"
						sPrevPart (iLang-1) = swapFromProductionURL (resourceMetaData(2,rowcounter))
					case "nextPart"
						sNextPart (iLang-1) = swapFromProductionURL (resourceMetaData(2,rowcounter))
					case "ImportantNotices"
						sImportantNotices (iLang-1)  = resourceMetaData(2,rowcounter)
					case "TableOfContents"
						sTableOfContents (iLang-1)  = resourceMetaData(2,rowcounter)
						if InStr (sTableOfContents (iLang-1), ".gc.ca") Then
							sTableOfContents (iLang-1) = Mid(sTableOfContents (iLang-1),InStr(1,sTableOfContents (iLang-1),".gc.ca",vbTextCompare)+6)
						end if
					case "partCount"
						iPartCount (iLang-1)  = resourceMetaData(2,rowcounter)
					case "PrintableVersion"
						sPrintableVersion (iLang-1) = resourceMetaData(2,rowcounter)
					case "DisplayTitle"
						sDisplayTitle (iLang-1) = resourceMetaData(2,rowcounter)
					case "Identifier"
						GOC_Identifier (iLang-1) = resourceMetaData(2,rowcounter)
					case "bodyClass"
						sBodyClass (iLang-1) = resourceMetaData(2,rowcounter)
					case "numberOfColumns"
						iNumberOfColumns = resourceMetaData(2,rowcounter)
					case "HideMultiPartsBar"
						bPartsBar = resourceMetaData(2,rowcounter)
					case "searchrank"
					    searchrank(iLang-1) = resourceMetaData(2,rowcounter)
				end Select
			NEXT
	'	NEXT
	end if
end sub

sub writeResourceMetaTags ()
	if iLanguageID > 3 Then
		iLanguageID = 1
	end if

	if iLanguageID = 1 Then
		response.write (vbTAB & "<meta name=" & chr(34) & "dc.language" & chr(34) & " scheme=" & chr(34) & "ISO639-2" & chr(34) & " content=" & chr(34) & "eng" & chr(34) & " />" & vbCRLF)
	elseif iLanguageID = 2 Then
		response.write (vbTAB & "<meta name=" & chr(34) & "dc.language" & chr(34) & " scheme=" & chr(34) & "ISO639-2" & chr(34) & " content=" & chr(34) & "fra" & chr(34) & " />" & vbCRLF)
	end if
	Call writeMetaData ( "dc.title", cleanUpTitle (sTitle(iLanguageID-1)))
	Call writeMetaData ( "dc.creator", sCreator(iLanguageID-1))
	Call writeMetaData ( "format", smmFormats(iLanguageID-1))
	response.write (vbTAB & "<meta name=""dcterms.issued"" scheme=""W3CDTF"" content=" & chr(34) & newFormatDateTime(sdDateCreated, "Y-O-d") & chr(34) & " />" & vbCRLF)
	response.write (vbTAB & "<meta name=""dcterms.modified"" scheme=""W3CDTF"" content=" & chr(34) & newFormatDateTime(sdDateModified, "Y-O-d") & chr(34) & " />" & vbCRLF)
	i=0
	if (iTotalTopics > 0) then
	    response.write vbTAB & "<meta name=" & chr(34) & "dc.subject" & chr(34) & " scheme=" & chr(34) & "gcfin" & chr(34) & " content="""
	    do While i < iTotalTopics-1
		    if (ssubjects(i,(iLanguageID-1)) <> EMPTY) Then
			    response.write ssubjects(i,(iLanguageID-1)) & ";"
		    end if
		    i = i + 1
	    loop
		if (ssubjects(i,(iLanguageID-1)) <> EMPTY) Then
			response.write ssubjects(i,(iLanguageID-1))
		end if
        response.write chr(34) & " />" & vbCRLF
	else
        response.write vbTAB & "<meta name=" & chr(34) & "dc.subject" & chr(34) & " scheme=" & chr(34) & "gcfin" & chr(34) & " content=" & chr(34)
        response.write sTitle((iLanguageID-1)) & chr(34)
        response.write " />" & vbCRLF
	end if

	Call writeMetaData ( "dc.description", sDescription (iLanguageID-1))
	Call writeMetaData ( "description", sDescription (iLanguageID-1))
	Call writeMetaData ( "keywords",  sKeywords(iLanguageID-1))
	Call writeMetaData ( "dc.type",  sdocType(iLanguageID-1))

	if sRobots (iLanguageID-1) <> EMPTY Then
		Call writeMetaData ( "robots", sRobots (iLanguageID-1))
	end if
	if (iRdimS(iLanguageID-1)<> "" AND iRdimS(iLanguageID-1)<> " ") Then
		Call writeMetaData ( "dc.source", iRdimS(iLanguageID-1))
	end if
	Call writeMetaData ( "partNo", iPartNo(iLanguageID-1))
	Call writeMetaData ( "service", sService(0))
	Call writeMetaData ( "LiveOnProduction",  bAlive)
    Call writeMetaData ( "searchrank", searchrank(iLanguageID-1))
end sub

Function getLanguageSuffix ()
	if iLanguageID = 1 Then
		CLF2AltlanguageAcronym = "fr"
		getLanguageSuffix = "eng"
	elseif iLanguageID = 2 Then
		CLF2AltlanguageAcronym = "en"
		getLanguageSuffix = "fra"
	end if
end Function


Function writeAuxiliaryLink (sType)
	dim sLang

	Select Case sType
		Case "Language"
            if (iLanguageID=2) then
                writeAuxiliaryLink = "<li class=""fiptexta""><div><a href=""" & replace (replace(replace(getScriptFileName(), "-fra.", "-eng."), "f.", "e."), "_f.", "_e.")
            else
                writeAuxiliaryLink = "<li class=""fiptexta""><div><a href=""" & replace (replace(replace(getScriptFileName(), "-eng.", "-fra."), "e.", "f."), "_e.", "_f.")
            end if

            if (sQueryString <> "") Then
                writeAuxiliaryLink = writeAuxiliaryLink & "?" & sQueryString
            end if
            writeAuxiliaryLink = writeAuxiliaryLink & """ lang=""" & CLF2AltlanguageAcronym & """ xml:lang=""" & CLF2AltlanguageAcronym & """ title=""" & MSG_LanguageTitle(iLanguageID-1) & """>" & MSG_LanguageButton(iLanguageID-1) & "</a></div></li>"
		Case "Home"
			writeAuxiliaryLink = "<li class=""fiptext""><div><a href=""" & sHomeLink (iLanguageID-1) & """ title=""" & MSG_HomeTitle(iLanguageID-1) & """>" & MSG_HomePage(iLanguageID-1) & "</a></div></li>"
		Case "Contact Us"
			if sContactUs (iLanguageID-1) <> "" Then
				writeAuxiliaryLink = "<li class=""fiptextc""><div><a href=""" & sContactUs (iLanguageID-1) & """ title=""" & MSG_ContactUsTitle(iLanguageID-1) & """>" & MSG_ContactUsButton(iLanguageID-1) & "</a></div></li>"
			else
                sContactUs (iLanguageID-1) = sContactUsFile(iLanguageID-1) & ".asp"
				writeAuxiliaryLink = "<li class=""fiptextc""><div><a href=" & chr(34) & sContactUs (iLanguageID-1) & """ title=""" & MSG_ContactUsTitle(iLanguageID-1) & """>" & MSG_ContactUsButton(iLanguageID-1) & "</a></div></li>"
			end if

		Case "Help"
			if sHelp (iLanguageID-1) <> "" Then
				writeAuxiliaryLink = "<li class=""fiptext""><div><a href=""" & sHelp(iLanguageID-1) & """ title=""" & MSG_HelpTitle(iLanguageID-1) & """>" & MSG_HelpButton(iLanguageID-1) & "</a></div></li>"
			else
                sHelp (iLanguageID-1) = sHelpFile (iLanguageID-1) & ".asp"
				writeAuxiliaryLink = "<li class=""fiptext""><div><a href=""" & sHelp(iLanguageID-1) & """ title=""" & MSG_HelpTitle(iLanguageID-1) & """>" & MSG_HelpButton(iLanguageID-1) & "</a></div></li>"
			end if

		Case "Search"
            sSearchLink (iLanguageID-1) = sSearchDomain & "/query-recherche-" & sLanguageSuffix & ".aspx?lang=" & sLangParameter
			writeAuxiliaryLink = "<li class=""fiptext""><div><a href=""" & sSearchLink (iLanguageID-1) & """ title=""" & MSG_SearchTitle(ILanguageID-1) & """>" & MSG_SearchButton(iLanguageID-1) & "</a></div></li>"
		Case "GoC"
			Select Case iLanguageID
				Case 1
					sCellText = "canada.gc.ca"
					sGoC = "http://canada.gc.ca/main_e.html"
					sCellTitle = MSG_CanadaSiteTitle(0)
				Case 2
					sCellText = "canada.gc.ca"
					sGoC = "http://canada.gc.ca/main_f.html"
					sCellTitle = MSG_CanadaSiteTitle(1)
			end Select
			writeAuxiliaryLink = "<li class=""fiptextb""><div><a href=""" & sGoC & """ title=""" & sCellTitle & """>" & sCellText & "</a></div></li>"
	end Select
end Function

function writeDisabledAuxiliaryLink(sType)
	select Case sType
		Case "Language"
			writeDisabledAuxiliaryLink= "<li class=""fiptexta""><div>" & MSG_LanguageButton(iLanguageID-1) & "</div></li>"

		Case "Home"
			writeDisabledAuxiliaryLink= "<li class=""fiptext""><div>" & MSG_HomePage(iLanguageID-1) & "</div></li>"

		Case "Contact Us"
			writeDisabledAuxiliaryLink= "<li class=""fiptextc""><div>" & MSG_ContactUsButton(iLanguageID-1) & "</div></li>"

		Case "Help"
			writeDisabledAuxiliaryLink= "<li class=""fiptext""><div>" & MSG_HelpButton(iLanguageID-1) & "</div></li>"

		Case "Search"
			writeDisabledAuxiliaryLink= "<li class=""fiptext""><div>" & MSG_SearchButton(iLanguageID-1) & "</div></li>"

		Case "GoC"
			sCellText = "canada.gc.ca"
			writeDisabledAuxiliaryLink= "<li class=""fiptextb""><div>" & sCellText  & "</div></li>"
	end select
end function

sub writeHeader ()
	%>
		    	        <!-- #include virtual="/common/write-header-eng.htm" -->
		    	<%

sub writeFinBreadCrumbs ()
    response.Write ("<p class=""breadcrumb"">" & vbCRLF)

    if (InStr (1, sURL, ".fin.gc.ca/fin-", vbTextCompare)) then
        writeHomePageBreadCrumb ()
    elseif (InStr (1, sURL, "/finimScripts/doctypes-TypeDocs-", vbTextCompare)) then
        writeHomePageBreadCrumb ()
        writeDocTypeListBreadCrumb()
    elseif (InStr (1, sURL, "/finimScripts/web/rss-", vbTextCompare)) then
        writeHomePageBreadCrumb ()
        writeRSSFeedBreadCrumb()
    else
        writeHomePageBreadCrumb ()
        writeDocTypeListBreadCrumb
        if (displayDocTitleBreadCrumb <> false) then
            writeDocTitleBreadCrumb()
        end if
    end if
    response.Write ("</p>" & vbCRLF)
end sub

sub WriteDisabledHeader()
	response.write (vbTAB & MSG_INSTITUTIONAL_BANNER_STARTS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<div class=""banner"">" & vbCRLF)
	response.write (vbTAB & vbTAB & "<img src=" & CLF2imagesFolder & "lffl.gif class=""lf pngfix"" height=""65"" width=""65"" alt="""" />" & vbCRLF)
	response.write (vbTAB & vbTAB & "<p class=""main"">" & institutionName(iLanguageID-1) & "</p>" & vbCRLF)
	response.write (vbTAB & vbTAB & "<p class=""siteuri"">" & Mid (HRMAroot, 8) & "</p>" & vbCRLF)
	response.write (vbTAB & "</div>" & vbCRLF)
	response.write (vbTAB & MSG_INSTITUTIONAL_BANNER_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)

	response.write (vbTAB & MSG_SKIP_NAVIGATION_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<div class=""navaid"">" & vbCRLF)
	response.write (vbTAB & vbTAB & "<a href=""#cont"">" & MSG_SKIP_TO_CONTENT(iLanguageID-1) & "</a> | " & vbCRLF)
	response.write (vbTAB & vbTAB & "<a href=""#il"">" & MSG_SKIP_TO_INSTITUTIONAL_LINKS(iLanguageID-1) & "</a>" & vbCRLF)
	response.write (vbTAB & "</div>" & vbCRLF)
	response.write (vbTAB & MSG_SKIP_NAVIGATION_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)

	response.write (vbTAB & MSG_COMMON_MENU_BAR_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<div class=""fp"">" & vbCRLF)
	response.write (vbTAB & vbTAB & MSG_COMMON_MENU_BAR_TITLE_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & vbTAB & "<h1 class=""navaid"">" & MSG_COMMON_MENU_BAR_LINKS(iLanguageID-1) & "</h1>" & vbCRLF)
	response.write (vbTAB & vbTAB & MSG_COMMON_MENU_BAR_TITLE_ENDS(iLanguageID-1) & vbCRLF)

	response.write (vbTAB & vbTAB & "<ul class=""commonbar"">" & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("Language") & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("Home") & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("Contact Us") & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("Help") & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("Search") & vbCRLF)
	response.write (vbTAB & vbTAB & vbTAB & writedisabledAuxiliaryLink ("GoC") & vbCRLF)
	response.write (vbTAB & vbTAB & "</ul>" & vbCRLF)
	response.write (vbTAB & "</div>" & vbCRLF)
	response.write (vbTAB & MSG_COMMON_MENU_BAR_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)
	response.write (vbTAB & MSG_HEADER_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)
	response.write (vbTAB & MSG_BREAD_CRUMB_BEGINS(iLanguageID-1) & vbCRLF & vbCRLF)
	response.write (vbTAB & MSG_BREAD_CRUMB_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)
end sub

sub writeFIPHeader ()
	response.write (vbTAB & MSG_FIP_HEADER_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<div class=""fip""><a name=""tphp"" id=""tphp"">")
	response.write ("<img src=""" & fipImage(iLanguageID-1) & """ width=""317"" height=""20"" alt=""" & Msg_GOC(iLanguageID-1) & """ /></a></div>" & vbCRLF)
	response.write (vbTAB & "<div class=""cwm""><img src=" & chr(34) & CLF2imagesFolder & "wmms.gif" & chr(34) & " width=""83"" height=""20"" alt=""" & Msg_SymbolGOC(iLanguageID-1) & """ /></div>" & vbCRLF)
	response.write (vbTAB & MSG_FIP_HEADER_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)
end sub
'***********************************************************************************
' check if & how nonTBSFIP, GOCFIP are to be displayed under CLF 2.0
'***********************************************************************************

sub writePrintableHeader ()
	response.write "<table border='0' cellpadding='0' cellspacing='0'>" &  vbCRLF
	response.write "<tr>" &  vbCRLF
	response.write "<td width='8'>&nbsp;" &  vbCRLF
	response.write "</td>" &  vbCRLF

	response.write "<td width='40'><p align='right'><img src='/images/clf/canada_flag.gif' alt='" & Msg_Flag (iLanguageID-1) & "' width='40' height='20'></p>" &  vbCRLF
	response.write "</td>" &  vbCRLF
	response.write "<td width='18'>" &  vbCRLF
	response.write "<img src='/images/clf/blank.gif' width='17' height='1' alt=" & chr(34) & chr(34) & " border='0'>" & vbCRLF
	response.write "</td>" &  vbCRLF
	response.write "<td width='450'><img src='" & Img_noFIP(iLanguageID-1) & "' alt='" & MSG_FIN(iLanguageID-1) & "'>" & vbCRLF
	response.write "</td>" &  vbCRLF

	response.write "</tr>" &  vbCRLF
	response.write "</table>" &  vbCRLF
end sub

sub writeBodyTag ()
	response.write BodyTag
end sub

sub	writeOpeningDivTags ()
	response.write ("<div class=" & chr(34) & "page" & chr(34) & "><div class=" & chr(34) & "core" & chr(34) & ">" & vbCRLF)
end sub

sub writeFooter ()
    if (iLanguageID=2) then
%>
        <!-- #include virtual="/common/footer-fra.htm" -->
<%
    else
%>
        <!-- #include virtual="/common/footer-eng.htm" -->
<%
    end if

end sub

sub writeFooterOld ()
	response.write (vbTAB & MSG_FOOTER_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<div class=""footer"">" & vbCRLF)
	response.write (vbTAB & "<div class=""footerline""></div>" & VBCRLF)
	response.write (vbTAB & "<div class=""foot1"">" & VBCRLF & VBCRLF)
	response.write (vbTAB & MSG_DATE_MODIFIED_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & MSG_DATE_MODIFIED(iLanguageID-1) &" <span class=""date"">" & newFormatDateTime(sdDateModified, "Y-O-d") & "</span>" & vbCRLF)
	response.write (vbTAB & MSG_DATE_MODIFIED_ENDS(iLanguageID-1) & vbCRLF & VBCRLF)
	response.write (vbTAB & "</div>" & vbCRLF)
	response.write (vbTAB & "<div class=""foot2""><a href=""#tphp"" title=""" & MSG_RETURN_TO_TOP_OF_PAGE(iLanguageID-1) & """><img class=""uparrow"" src=""" & imagesFolder & "uparrow-footer.gif"" width=""100"" height=""15"" alt="""" /><br />" & MSG_Top(iLanguageID-1) & "</a></div>" & vbCRLF)
	response.write (vbTAB & "<div class=""foot3"">")
    if (sImportantNotices (iLanguageID-1)) = "" Then
		response.write (importantNotices (iLanguageID-1))
    else
		response.write sImportantNotices (iLanguageID-1)
    end if
	response.write (Msg_ImportantNotices(iLanguageID-1) & "</a></div>" & vbCRLF)
	response.write (vbTAB & "</div>" & vbCRLF)
	response.write (vbTAB & MSG_FOOTER_ENDS(iLanguageID-1) & vbCRLF)
end sub

sub writeClosingTags ()
	' closing column layout div
	response.write ("</div></div>")&  vbCRLF
	if (iNumberOfColumns = 3) then
	    response.write ("</div>")&  vbCRLF
	end if
	response.write (vbCRLF & "</body>" & vbCRLF)
	response.write ("</html>" & vbCRLF)
end sub

sub writePreContents()
	writePreContentDetails ()
end sub

sub writePreContentDetails ()
	if bOld=True Then
		sClassInst="instOld"
		sClassService="serviceOld"
	else
		sClassInst="inst"
		sClassService="service"
	end if

		sClassInst="inst"
		sClassService="service"

	response.write ("<!-- RESID = " & iResourceID & " -->")
	writeW3Ccode ()
%>
    <!--#include virtual="/common/header.htm" -->
<%
    response.Write ("<!-- <noindex> -->" & vbCRLF)

	if sView <> "printable" Then
		if bDisableMainMenu = true then
			writeDisabledHeader()
		else
			writeHeader ()
		end if
	end if

   

end sub

sub writeTitle ()
	response.write (vbTAB & "<title>")

	if bAlive = false AND (instr(1,sHost,"www.")) then
		response.write replace(replace(Msg_Unavailable(iLanguageID-1),"<h3>",""),"</h3>","")
	else
		if iPartCount (iLanguageID-1) > 1 Then
			response.write cleanUpTitle(sTitle(iLanguageID-1)) & " " & Msg_Part1(iLanguageID-1) & " " & iPartNo (iLanguageID-1) & Msg_Part2(iLanguageID-1) & " " & iPartCount (iLanguageID-1)
		else
			response.write cleanUpTitle(sTitle(iLanguageID-1))
		end if
	end if

	if sDomainType = "hrma" Then
		writeText (" :: " & institutionName(iLanguageID-1))
	end if

	writeText (vbTAB & "</title>")
end sub


sub writePartsBarNew (sPrevious, sTOC, sNext, stype)
    if (bPartsBar = True) Then
        if (sType = "bottom") Then
            response.Write ("<br /><br />" & vbCRLF)
        end if

        response.Write ("<div class=""wrapperlink"">" & vbCRLF)

        if sPrevious <> "" Then
            response.Write ("<div class=""side-a""><strong><a class=""btsubweb"" href='" & sPrevious & "'>" & Msg_PreviousPart (iLanguageID-1) & "</a></strong></div>" & vbCRLF)
        else
            response.Write ("<div class=""side-a""><strong>&nbsp;</strong></div>" & vbCRLF)
        end if

        if sTOC <> "" Then
            response.Write ("<div class=""multi_partcontent""><strong><a class=""btsubweb"" href='" & sTOC & "'>" & Msg_TableOfContents (iLanguageID-1) & "</a></strong></div>" & vbCRLF)
        else
            response.Write ("<div class=""multi_partcontent""><strong>&nbsp;</strong></div>" & vbCRLF)
        end if

        if sNext <> "" Then
            response.Write ("<div class=""side-b""><strong><a class=""btsubweb"" href='" & sNext & "'>" & Msg_NextPart (iLanguageID-1) & "</a></strong></div>" & vbCRLF)
        else
            response.Write ("<div class=""side-b""><strong>&nbsp;</strong></div>" & vbCRLF)
        end if
	    response.Write ("</div>" & vbCRLF)
	end if
end sub

sub writeStartTable ()
	response.write "<table width=" & chr(34) & "450" & chr(34) & " cellspacing=" & chr(34) & "0" & chr(34) & " cellpadding=" & chr(34) & "0" & chr(34) & ">" &  vbCRLF
	response.write "<tr>" &  vbCRLF
	response.write "<td valign=" & chr(34) & "top" & chr(34) & " width=" & chr(34) & "450" & chr(34) & ">" &  vbCRLF
end sub

sub writePrintableStartTable ()
	response.write "<table width='100%' cellspacing=" & chr(34) & "0" & chr(34) & " cellpadding=" & chr(34) & "0" & chr(34) & ">" &  vbCRLF
	response.write "<tbody>" &  vbCRLF
	response.write "<tr>" &  vbCRLF
	response.write "<td width='40' nowrap></td>" &  vbCRLF
	response.write "<td width='18' nowrap></td>" &  vbCRLF
	response.write "<img src='/images/clf/blank.gif' width='17' height='1' alt=" & chr(34) & chr(34) & " border='0'>" & vbCRLF
	response.write "</td>" &  vbCRLF
end sub

sub writeHomePageBreadCrumb ()
    response.Write ("<a href=" & chr(34) & swapFromProductionURL ("http://www.fin.gc.ca/fin-" & getLanguageSuffix & ".asp") & chr(34) & ">" & MSG_HomePage(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
end sub

sub writeDocTypeListBreadCrumb ()
	If (InStr (1, sURL, ".fin.gc.ca/afc/index-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_ABOUT_US OR iDocTypeID(0) = DT_ADMINISTRATIVE_PAGE OR iDocTypeID(0) = DT_BIOGRAPHY OR iDocTypeID(0) = DT_CONSULTATION OR iDocTypeID(0) = DT_CONSULTATION_RESPONSE OR iDocTypeID(0) = DT_FREQUENTLY_ASKED_QUESTIONS OR iDocTypeID(0) = DT_INTELLECTUAL_PROPERTY_STATEMENT OR iDocTypeID(0) = DT_INTERACTIVE_RESOURCE OR iDocTypeID(0) = DT_ORGANIZATIONAL_DESCRIPTION OR iDocTypeID(0) = DT_RECRUITMENT)) then
        response.Write ("<a href=" & chr(34) & "/afc/index-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCAboutUs(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    ElseIf (InStr (1, sURL, ".fin.gc.ca/act/index-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_ECONOMIC_AND_FISCAL_INFO OR iDocTypeID(0) = DT_ECONOMIC_AND_FISCAL_WORKING_PAPERS OR iDocTypeID(0) = DT_FEDERAL_TRANSFERS OR iDocTypeID(0) = DT_FINANCIAL_INSTITUTIONS_AND_MARKETS OR iDocTypeID(0) = DT_INTERNATIONAL_ISSUES  OR iDocTypeID(0) = DT_SERVICE OR iDocTypeID(0) = DT_SOCIAL_ISSUES OR iDocTypeID(0) = DT_TAXES_AND_TARIFFS)) then
        response.Write ("<a href=" & chr(34) & "/act/index-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCActivities(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    ElseIf (InStr (1, sURL, ".fin.gc.ca/news-nouvelles/index-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_MEDIA_RELEASE OR iDocTypeID(0) = DT_MEMORANDUM OR iDocTypeID(0) = DT_NEWS OR iDocTypeID(0) = DT_NOTICE)) then
        response.Write ("<a href=" & chr(34) & "/news-nouvelles/index-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCNews(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    ElseIf (InStr (1, sURL, ".fin.gc.ca/legislation/index-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_LEGISLATION)) then
        response.Write ("<a href=" & chr(34) & "/legislation/index-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCLegislation(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    ElseIf (InStr (1, sURL, ".fin.gc.ca/access/budinfo-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_BUDGET)) then
        response.Write ("<a href=" & chr(34) & "/access/budinfo-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCBudgets(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    ElseIf (InStr (1, sURL, ".fin.gc.ca/pub/index-", vbTextCompare)=0 AND (iDocTypeID(0) = DT_AGREEMENT OR iDocTypeID(0) = DT_ASSESSMENT OR iDocTypeID(0) = DT_DRAFT_LEGISLATION OR iDocTypeID(0) = DT_ECONOMIC_STATEMENT OR iDocTypeID(0) = DT_EDUCATIONAL_MATERIAL OR iDocTypeID(0) = DT_FACT_SHEET OR iDocTypeID(0) = DT_GUIDE OR iDocTypeID(0) = DT_POLICY OR iDocTypeID(0) = DT_PUBLICATION OR iDocTypeID(0) = DT_PRESENTATION OR iDocTypeID(0) = DT_REPOT OR iDocTypeID(0) = DT_TREATY)) then
        response.Write ("<a href=" & chr(34) & "/pub/index-" & getLanguageSuffix & ".asp" & chr(34) & ">" & MSG_BCPublications(iLanguageID-1) & "</a>&nbsp;&gt;&nbsp;")
    end if
end sub

sub writeDocTitleBreadCrumb ()
    response.Write ("<a href=" & chr(34) & swapFromProductionURL (sURL) & chr(34) & ">" & sTitle(iLanguageID-1) & "</a>&nbsp;")
end sub

sub writeRSSFeedBreadCrumb ()
	response.write (MSG_RSS_NEWS_Feeds(iLanguageID-1))
end sub

sub writeIsBasedOnBreadCrumb ()
    dim sisBasedOnString, sisBasedOnLink, sisBasedOnTitle

    sisBasedOnString = sisBasedOn(iLanguageID-1)
    if (Len(sisBasedOnString) > 0) Then
        if (InStr (sisBasedOnString, ";")) Then
            sisBasedOnLink = Mid (sisBasedOnString,1,InStr (1,sisBasedOnString,";")-1)
            sisBasedOnTitle = Mid (sisBasedOnString,InStr (1,sisBasedOnString,";")+1)
            response.Write ("<a href=" & chr(34) & sisBasedOnLink & chr(34) & "><acronym title=" & chr(34) & sisBasedOnTitle & chr(34) & ">" & sisBasedOnTitle & "</acronym></a>&nbsp;&gt;&nbsp;")
        end if
    end if
end sub

sub writeServiceHomePageLink ()
    if (resourceServicePagedata(2,0) <> "END") then
	    response.write ("<ul class=""navSite"">" & vbCRLF)
	    if sWhichService <> "" Then
		    response.write "<li class=""navSite""><a class=""navSite"" href='" & swapFromProductionURL (resourceServicePagedata(1,iLanguageID-1)) & sParameter & "'" & ">" & resourceServicePagedata(2,iLanguageID-1) & "</a></li>" & vbCRLF
	    else
		    response.write "<li class=""navSite""><a class=""navSite"" href='" & swapFromProductionURL (resourceServicePagedata(1,iLanguageID-1)) & sParameter & "' " & ">" & resourceServicePagedata(2,iLanguageID-1) & "</a></li>" & vbCRLF
	    end if
	    response.write "</ul>"
    end if
end sub

sub writeDisabledServiceHomePageLink ()
    if (resourceServicePagedata(2,iLanguageID-1) <> "END") then
	    response.write ("<ul class=""navSite"">" & vbCRLF)
	    response.write "<li class=""navSite"">" & resourceServicePagedata(2,iLanguageID-1) & "</li>"
	    response.write "</ul>"
	end if
end sub

sub writeHRMAServiceHomePageLink ()
	response.write ("<table width='132'>") & vbCRLF
	response.write ("<tr>") & vbCRLF
	response.write ("<td valign='top'>") & vbCRLF
	if sWhichService <> "" Then
		response.write "<a class='service2' href='" & swapFromProductionURL (resourceServicePagedata(1,iLanguageID-1)) & sParameter & "'" & ">" & resourceServicePagedata(2,iLanguageID-1) & "</a>"
	else
		response.write "<a class='service2' href='" & swapFromProductionURL (resourceServicePagedata(1,iLanguageID-1)) & sParameter & "' " & ">" & resourceServicePagedata(2,iLanguageID-1) & "</a>"
	end if

	response.write ("</td>") & vbCRLF
	response.write ("</tr>") & vbCRLF
	response.write ("</table>") & vbCRLF
end sub

Function getServiceName()
		getServiceName = resourceServicePagedata(2,iLanguageID-1)
end Function

sub writeTableCells ()
	if sView <> "printable" Then
        if sDomainType <> "hrma" then
	        'writeAlternateFormats ()
	    end if

	    select case inumberOfColumns
		    case 1
			    response.write (vbTAB & MSG_CONTENT_BEGINS(iLanguageID-1) & vbCRLF)
			    response.write (vbTAB & "<div class=""center"">" & vbCRLF)

                response.write ("<a name=""cont"" id=""cont"">" & vbCRLF)
                response.Write ("</a>")
	            if stype <> "bottom"  AND bTitle = True Then
                    'response.Write ("<h1 class=""borderbottom"">" & sTitle(iLanguageID-1)& "</h1>") & vbCRLF
	            end if

                if (sPrevPart (iLanguageID-1) <> "" OR sTableOfContents(iLanguageID-1) <> "" OR sNextPart(iLanguageID-1) <> "") Then
	                Call writePartsBarNew (sPrevPart(iLanguageID-1), sTableOfContents(iLanguageID-1), sNextPart(iLanguageID-1), "top")
                end if
		    case 2
			    ' closing left div
			    response.write (vbTAB & "</div>" & vbCRLF)
			    response.write (vbTAB & MSG_LEFT_SIDE_MENU_ENDS(iLanguageID-1) & vbCRLF)
			    response.write (vbTAB & MSG_CONTENT_BEGINS(iLanguageID-1) & vbCRLF)
			    response.write (vbTAB & "<div class=""center"">" & vbCRLF)
                response.write ("<a name=""cont"" id=""cont"">" & vbCRLF)
	            response.Write ("</a>")
	            if stype <> "bottom"  AND bTitle = True Then
	                'response.Write ("<h1 class=""borderbottom"">" & sTitle(iLanguageID-1)& "</h1>") & vbCRLF
	            end if

                if (sPrevPart (iLanguageID-1) <> "" OR sTableOfContents(iLanguageID-1) <> "" OR sNextPart(iLanguageID-1) <> "") Then
	                Call writePartsBarNew (sPrevPart(iLanguageID-1), sTableOfContents(iLanguageID-1), sNextPart(iLanguageID-1), "top")
                end if
		    case 3
			    response.write (vbTAB & "</div>" & vbCRLF)
			    response.write (vbTAB & MSG_LEFT_SIDE_MENU_ENDS(iLanguageID-1) & vbCRLF)
                response.write (vbTAB & MSG_RIGHT_SIDE_MENU_BEGINS(iLanguageID-1) & vbCRLF)
                response.write (vbTAB & "<div class=""right"">" & vbCRLF)
	    end select
    else
        if stype <> "bottom"  AND bTitle = True Then
            'response.Write ("<br><h1 class=""borderbottom"">" & sTitle(iLanguageID-1)& "</h1>") & vbCRLF
        end if

	end if
end sub

sub closeRightDivOpenContentsDiv ()
    response.write (vbTAB & MSG_RIGHT_SIDE_MENU_ENDS(iLanguageID-1) & vbCRLF)
    response.write (vbTAB & "</div>" & vbCRLF)
    response.write (vbTAB & MSG_CONTENT_BEGINS(iLanguageID-1) & vbCRLF)
    response.write (vbTAB & "<div class=""center"">" & vbCRLF)
    'response.Write ("<br>")
    response.write ("<div class=""blackborder"" id=""box1"">")
    response.write ("<a name=""cont"" id=""cont"">" & vbCRLF)
	response.Write ("</a>")

    if sView <> "printable" Then
        if (sPrevPart (iLanguageID-1) <> "" OR sTableOfContents(iLanguageID-1) <> "" OR sNextPart(iLanguageID-1) <> "") Then
	        Call writePartsBarNew (sPrevPart(iLanguageID-1), sTableOfContents(iLanguageID-1), sNextPart(iLanguageID-1), "top")
        end if
    end if
end sub

sub writeRandomImage ()
    Randomize
    response.Write ("<img src=""/images/img_top_" & int(rnd*5)+1 & ".jpg"" alt="""" width=""405"" height=""82"" />" & vbCRLF)
end sub

sub writePrintableTableCells ()
	response.write "<td width=" & chr(34) & "100%" & chr(34) & " valign=" & chr(34) & "top" & chr(34) & ">" &  vbCRLF
	response.write "<br />"
end sub

sub writePrintableLink ()
    response.Write (vbTAB & "<li>")

	if sPrintableVersion (iLanguageID-1) <> "" Then
		if InStr (sPrintableVersion (iLanguageID-1), "http://")Then
			response.write ("<a class=""" & altPrintClass(iLanguageID-1) & """ href=" & chr(34) & sPrintableVersion (iLanguageID-1) & "?printable=True")
	elseif InStr (sPrintableVersion (iLanguageID-1), ".gc.ca")Then
			response.write ("<a class=""" & altPrintClass(iLanguageID-1) & """ href=" & chr(34) & Mid (swapFromProductionURL(sURL),1,InStrRev (swapFromProductionURL(sURL), "/")) & sPrintableVersion (iLanguageID-1) & "?printable=True")
		else
			response.write ("<a class=""" & altPrintClass(iLanguageID-1) & """ href=" & chr(34) & sPrintableVersion (iLanguageID-1) & "?printable=True")
		end if
	else
		response.write ("<a class=""" & altPrintClass(iLanguageID-1) & """ href=" & chr(34) & swapFromProductionURL & "?printable=True")
	end if

	if sQueryString <> "" Then
		response.write "&amp;" & sQueryString
	end if
	response.write chr(34) & ">"

	response.write Msg_PrintableVersion(iLanguageID-1)
	response.write "</a>" & vbCRLF
	response.write (vbTAB & "</li>" & vbCRLF)
end sub

sub writeEndTable ()
	response.write "</td>" &  vbCRLF
	response.write "</tr>" &  vbCRLF
	response.write "</tbody>" &  vbCRLF
	response.write "</table>" &  vbCRLF
end sub

sub writePostContents()
	writePostContentDetails()
end sub

sub writePostContentDetails()
	if sView="printable" Then
	    writePrintablePostContentDetails ()
	else
		select case inumberOfColumns
			case 1
				response.write (vbTAB & MSG_ONE_COLUMN_LAYOUT_ENDS(iLanguageID-1) & vbCRLF)
			case 2
				response.write (vbTAB & MSG_TWO_COLUMN_LAYOUT_ENDS(iLanguageID-1) & vbCRLF)
			case 3
				response.write (vbTAB & MSG_THREE_COLUMN_LAYOUT_ENDS(iLanguageID-1) & vbCRLF)
		end select
		response.write (vbTAB & vbCRLF)

	    if ((InStr (sHOST, "authoring") OR InStr (sHOST, "staging")) OR bAlive = True) Then
	       if ((sPrevPart (iLanguageID-1) <> "" OR sTableOfContents(iLanguageID-1) <> "" OR sNextPart(iLanguageID-1) <> "")) Then
			   Call writePartsBarNew (sPrevPart(iLanguageID-1), sTableOfContents(iLanguageID-1), sNextPart(iLanguageID-1), "bottom")
	        end if
	    end if
	    'close the div tag for class="blackborder"
	    response.write (vbTAB & "</div>" & vbCRLF)
        'close content div tag
	    response.write (vbTAB & "</div>" & vbCRLF)
	    response.write (vbTAB & MSG_CONTENT_ENDS(iLanguageID-1) & vbCRLF)
		writeFooter ()
	end if
	call writeClosingTags ()
end sub

sub writePrintablePostContentDetails()
	    'close content div tag
'	    response.write (vbTAB & "</div>" & vbCRLF)
'	    response.write (vbTAB & MSG_CONTENT_ENDS(iLanguageID-1) & vbCRLF)
'	response.write (vbTAB & MSG_FOOTER_BEGINS(iLanguageID-1) & vbCRLF)
'	response.write (vbTAB & "<div class=""footer"">" & vbCRLF)
'	response.write (vbTAB & "<div class=""foot1"">" & VBCRLF & VBCRLF)
'	response.write (vbTAB & MSG_DATE_MODIFIED_BEGINS(iLanguageID-1) & vbCRLF)
'	response.write (vbTAB & MSG_DATE_MODIFIED(iLanguageID-1) &" <span class=""date"">" & newFormatDateTime(sdDateModified, "Y-O-d") & "</span>" & vbCRLF)
'	response.write (vbTAB & MSG_DATE_MODIFIED_ENDS(iLanguageID-1) & vbCRLF & VBCRLF)
'   response.write (vbTAB & "</div>" & vbCRLF)
'	response.write (vbTAB & MSG_FOOTER_ENDS(iLanguageID-1) & vbCRLF)
'	call writeClosingTags ()
end sub

sub writeErrorMessage (sText)
	writePreContents ()
    response.write (vbTAB & "</div>" & vbCRLF)
    response.write (vbTAB & MSG_LEFT_SIDE_MENU_ENDS(iLanguageID-1) & vbCRLF)
    response.write (vbTAB & MSG_CONTENT_BEGINS(iLanguageID-1) & vbCRLF)
    response.write (vbTAB & "<div class=""center"">" & vbCRLF)
    response.write ("<a name=""cont"" id=""cont"">" & vbCRLF)
    response.Write ("</a>")
	response.write sText
	writeFooter ()
	writeClosingTags ()
end sub

Function swapFromProductionURL (sPart)
	swapFromProductionURL = sPart
	Select Case sHOST
		Case "authoring.fin.gc.ca"
			if InStr (sPart, "www.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www.fin.gc.ca", "authoring.fin.gc.ca")
			elseif InStr (sPart, "www2.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www2.fin.gc.ca", "authoring.fin.gc.ca")
			end if
		Case "stagingva.fin.gc.ca"
			if InStr (sPart, "stagingva.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www.fin.gc.ca", "stagingva.fin.gc.ca")
			end if
		Case "staging.fin.gc.ca"
			if InStr (sPart, "www.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www.fin.gc.ca", "staging.fin.gc.ca")
			elseif InStr (sPart, "www2.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www2.fin.gc.ca", "staging.fin.gc.ca")
			end if
		Case "iis7.fin.gc.ca"
			if InStr (sPart, "www.fin.gc.ca") Then
				swapFromProductionURL = replace (sPart, "www.fin.gc.ca", "iis7.fin.gc.ca")
			end if
	end Select
end Function

sub writeAgencyAlternateFormats ()
    dim i

    i=0

    if ((iPartCount(iLanguageID-1) > 1 OR iNumFormats > 0) AND iPartNo(iLanguageID-1)=1) Then
        response.Write ("<div class=""altformat_hl""><br />" & vbCRLF)
        response.Write ("<div class=""altformat_content"">" & vbCRLF)
        if (iPartCount(iLanguageID-1) > 1) then
            response.Write ("<p><img src=""/images/icons/print.gif"" width=""25"" height=""16"" alt=""" & Msg_PrintableVersion(iLanguageID-1) & """ /> <a href=""" & sPrintableVersion (iLanguageID-1) & "?printable=True"">" & MSG_CompleteDocument(iLanguageID-1) & "</a></p>" & vbCRLF)
        end if
   		Do While i < (iNumFormats)
			sLocalFilename = sFormatURLs (i, iLanguageID-1)
			if Instr (sLocalFilename, "gc.ca") Then
				sLocalFilename = replace (Mid(sLocalFilename,InStr(1,sLocalFilename, "gc.ca", vbTextCompare)+6), "/", "\")
			end if
			sLocalFilename = replace (sLocalFilename, "/", "\")
			sLocalFilename = "d:\http_hrma\" & sLocalFilename
		    response.Write ("<p><img src=""/images/icons/" & writeExtensionName & ".gif"" alt=""" & writeExtensionName & """ width=""25"" height=""11"" /> <a href=""" & sFormatURLs (i, iLanguageID-1) & """>" & writeExtensionName & "</a></p>" & vbCRLF)
			i = i + 1
		 Loop

        response.Write ("</div>" & vbCRLF)
        response.Write ("</div>" & vbCRLF)
    end if
end sub

sub writeAlternateFormats ()
	dim iFileSize
	dim fs

	if iNumFormats > 0 Then
		response.write ("<br />")
		response.Write ("<ul class=""altVersions"">" & vbCRLF)
		response.Write ("<li class=""altVersions"">" & MSG_Versions(iLanguageID-1) & "</li>")
        if (iPartCount(iLanguageID-1) > 1) Then
            writePrintableLink ()
        end if

		i = 0

		Do While i < (iNumFormats)
			sLocalFilename = sFormatURLs (i, iLanguageID-1)
			if Instr (sLocalFilename, "gc.ca") Then
				sLocalFilename = replace (Mid(sLocalFilename,InStr(1,sLocalFilename, "gc.ca", vbTextCompare)+6), "/", "\")
			end if
			sLocalFilename = replace (sLocalFilename, "/", "\")

			if sWebType="www" Then
				sLocalFilename = "d:\http_tb\" & sLocalFilename
			end if

            iFileSize = getFileSize (sLocalFilename)
            if (iFileSize > 0) then
                if (iLanguageID=2) then
                    response.write ("<li><a class=""alt" & writeExtensionName & """ href=""" & sFormatURLs (i, iLanguageID-1) & """>Version " & writeExtensionName & "<br />" & FileSizeString(iFileSize) & "</a></li>" & vbCRLF)
                else
                    response.write ("<li><a class=""alt" & writeExtensionName & """ href=""" & sFormatURLs (i, iLanguageID-1) & """>" & writeExtensionName & " Version<br />" & FileSizeString(iFileSize) & "</a></li>" & vbCRLF)
                end if
            end if

			i = i + 1
		 Loop
        response.Write ("</ul>" & bvCRLF)
        response.Write ("<div class=""boxBottomAlt""></div>" & bvCRLF)

	end if
end sub

Function getFileSize(filespec)

   dim fso, f
   Set fso = CreateObject("Scripting.FileSystemObject")
   if (fso.FileExists(filespec)=True) Then
		Set f = fso.GetFile(filespec)
		getFileSize = f.Size
   else
		getFileSize = 0
   end if

   Set fso = nothing
   Set f = nothing
end Function

Function FileSizeString(ByVal vFileSize)

dim vaUnits(3)
dim iUnitIndex
dim iDecimals
Const iKSize = 1024

	'up to 1024 PetaBytes should be OK for now...
	vaUnits(0) = Array(" Bytes", " Kb", " Mb", " Gb")
	vaUnits(1) = Array(" octets", " Ko", " Mo", " Go")
	iDecimals = 0	'if number in Bytes don't display any decimals
	iUnitIndex = 0	'indicates which unit size to use.
	'Find the most natural unit that has a unit description:

	if vFileSize  > 1000000 Then
		iDecimals = 2
	end if
	While vFileSize > iKSize and iUnitIndex < UBound(vaUnits(iLanguageID-1))
		'Reduce to next higher unit:
		vFileSize = vFileSize / iKSize
		iUnitIndex = iUnitIndex + 1
	Wend
	FileSizeString = FormatNumber(vFileSize, iDecimals) & vaUnits(iLanguageID-1)(iUnitIndex)
	if FileSizeString = "0 Bytes" OR FileSizeString = "0 octets" Then
		FileSizeString = ""
	else
		FileSizeString = " ( " & FileSizeString & " )"
	end if
end Function

Function writeExtensionName ()
	dim sTempFormatURL

	sTempFormatURL = lcase (sLocalFileName)
	if InStr (sTempFormatURL, ".xml") Then
		writeExtensionName = Msg_ExtensionName (0, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".rtf") Then
		writeExtensionName = Msg_ExtensionName (1, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".pdf") Then
		writeExtensionName = Msg_ExtensionName (2, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".txt") Then
		writeExtensionName = Msg_ExtensionName (3, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".ppt") Then
		writeExtensionName = Msg_ExtensionName (6, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".doc") Then
		writeExtensionName = Msg_ExtensionName (7, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".xls") Then
		writeExtensionName = Msg_ExtensionName (8, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".exe") Then
		writeExtensionName = Msg_ExtensionName (9, (iLanguageID-1))
	elseif InStr (sTempFormatURL, ".wpd") Then
		writeExtensionName = Msg_ExtensionName (10, (iLanguageID-1))
	end if
end Function

sub checkForLanguageParameter
dim iLangPos

	sTempQueryString = lcase (sQueryString)

	if InStr(sTempQueryString,"language=en") Then
		iLangPos = InStr(sTempQueryString,"language=en")
		if iLangPos > 0 Then
			iLanguageID=1
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "language=fr" & Mid (sQueryString, iLangPos+11)
		end if
	elseif InStr(sTempQueryString,"language=fr") Then
		iLangPos = InStr(sTempQueryString,"language=fr")
		if iLangPos > 0 Then
			iLanguageID=2
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "language=en" & Mid (sQueryString, iLangPos+11)
		end if
	elseif InStr(sTempQueryString,"language=1") Then
		iLangPos = InStr(sTempQueryString,"language=1")
		if iLangPos > 0 Then
			iLanguageID=1
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "language=2" & Mid (sQueryString, iLangPos+10)
		end if
	elseif InStr(sTempQueryString,"language=2") Then
		iLangPos = InStr(sTempQueryString,"language=2")
		if iLangPos > 0 Then
			iLanguageID=2
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "language=1" & Mid (sQueryString, iLangPos+10)
		end if
	elseif InStr(sTempQueryString,"lang=en") Then
		iLangPos = InStr(sTempQueryString,"lang=en")
		if iLangPos > 0 Then
			iLanguageID=1
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "lang=fr" & Mid (sQueryString, iLangPos+7)
		end if
	elseif InStr(sTempQueryString,"lang=fr") Then
		iLangPos = InStr(sTempQueryString,"lang=fr")
		if iLangPos > 0 Then
			iLanguageID=2
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "lang=en" & Mid (sQueryString, iLangPos+7)
		end if
	elseif InStr(sTempQueryString,"lang=e") Then
		iLangPos = InStr(sTempQueryString,"lang=e")
		if iLangPos > 0 Then
			iLanguageID=1
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "lang=f" & Mid (sQueryString, iLangPos+6)
		end if
	elseif InStr(sTempQueryString,"lang=f") Then
		iLangPos = InStr(sTempQueryString,"lang=f")
		if iLangPos > 0 Then
			iLanguageID=2
			sAltLangQueryString = Mid (sQueryString,1,iLangPos-1) & "lang=e" & Mid (sQueryString, iLangPos+6)
		end if

	end if
end sub

Function handleAmpersands (sString)
dim iLen
dim iPos

iLen = Len (sString)
iPos=0
While i < iLen
	iPos = InStr (iPos+1, sString, "&")

	if iPos > 0 Then
		if Mid (sString, iPos, 5) <> "&amp;" then
			sString = Mid (sString, 1, iPos-1) & "&amp;" & Mid (sString, iPos+1)
		else
			i = iPos + 5
		end if
	else
		i = iLen
	end if

Wend
handleAmpersands = sString
end Function

Function swapToProductionURL (sURL)
   swapToProductionURL = SURL
	Select Case sHOST
	Case "authoring.fin.gc.ca"
		swapToProductionURL = replace (sURL, "authoring", "www")
	Case "stagingva.fin.gc.ca"
		swapToProductionURL = replace (sURL, "stagingva.", "www.")
	Case "staging.fin.gc.ca"
		swapToProductionURL = replace (sURL, "staging", "www")
	Case "iis7.fin.gc.ca"
	    swapToProductionURL = replace (sURL, "iis7.", "www.")
	Case "www2.fin.gc.ca"
		swapToProductionURL = replace (sURL, "www2", "www")
   end Select
end Function

sub ifAuxiliaryFiles ()
	if InStr (1, sURL, "/admin/contact", VBTextCompare) OR InStr (1, sURL, "/admin/help-aide", VBTextCompare) OR InStr (1, sURL, "/admin/new-nouveau", VBTextCompare) OR InStr (1, sURL, "/admin/us-nous", VBTextCompare)  OR InStr (1, sURL, "/admin/policies-politiques", VBTextCompare) OR InStr (1, sURL, "/admin/map-carte", VBTextCompare)Then
		sOrigURL =  Mid (sOrigURL,1,InStr (1, sOrigURL, "gc.ca", VBTextCompare)+4) & Mid (sOrigURL,InStr (1, sOrigURL, "/admin/", VBTextCompare))
		Response.Redirect sOrigURL
	end if
end sub

sub loadProperStyleSheet (sVersion)
	writeText (vbTAB & MSG_TEMPLATE_SCRIPTS_BEGIN(iLanguageID-1))

    sBrowserType = "Standard"
	if InStr(Request.ServerVariables("HTTP_USER_AGENT"), "MSIE") = 0 Then
		iCV = Mid(Request.ServerVariables("HTTP_USER_AGENT"), InStr(Request.ServerVariables("HTTP_USER_AGENT"), "Mozilla/")+8,1)
		if iCV = "1" or iCv = "2" or iCv = "3" or iCv = "4" Then sBrowserType = "Netscape"
	end if

	if InStr(Request.ServerVariables("HTTP_USER_AGENT"), "Opera") > 0 Then sBrowserType = "Standard"
        ' for legacy clf 1 documents
    'response.write (vbTAB & "<link rel=""StyleSheet"" href=" & chr(34) & "/css/standard-strict.css" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
    'response.write (vbTAB & "<link rel=""StyleSheet"" href=" & chr(34) & styleFolder &  "common.css" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
	response.write (vbTAB & "<link href=" & chr(34) & cssFolder &  "base.css" & chr(34) & " media=" & chr(34) & "screen, print" & chr(34) & " rel=" & chr(34) & "stylesheet" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)

	Select Case inumberOfColumns
		Case 1
			response.write (vbTAB & "<link href=" & chr(34) & cssFolder & "1col.css" & chr(34) & " media=" & chr(34) & "screen, print" & chr(34) & " rel=" & chr(34) & "stylesheet" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
		Case 2
			response.write (vbTAB & "<link href=" & chr(34) & cssFolder & "2col.css" & chr(34) & " media=" & chr(34) & "screen, print" & chr(34) & " rel=" & chr(34) & "stylesheet" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
		Case else
			response.write (vbTAB & "<link href=" & chr(34)  & cssFolder & "3col.css" & chr(34) & " media=" & chr(34) & "screen, print" & chr(34) & " rel=" & chr(34) & "stylesheet" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
	end Select

	response.write (vbTAB & "<style type=" & chr(34) & "text/css" & chr(34) & " media=" & chr(34) & "all" & chr(34) & ">@import url(" &  cssFolder & "base2.css);</style>" & vbCRLF)
	writeText (vbTAB & MSG_TEMPLATE_SCRIPTS_END(iLanguageID-1)  & vbCRLF)
	call writeProgressiveEnhancementCode ()

	response.write (vbTAB & MSG_CUSTOM_SCRIPTS_BEGIN(iLanguageID-1) & vbCRLF)
    response.write (vbTAB & "<link href=" & chr(34) & cssFolder & "base-institution.css" & chr(34) & " media=""screen, print"" rel=""stylesheet"" type=""text/css"" />" & vbCRLF)
    response.write (vbTAB & "<link href=" & chr(34) & cssFolder & "institution.css" & chr(34) & " media=""screen, print"" rel=""stylesheet"" type=""text/css"" />" & vbCRLF)
     'response.write (vbTAB & "<link href=""" & styleFolder & "clf2-common.css"" media=""screen, print"" rel=""stylesheet"" type=""text/css"" />" & vbCRLF)
	response.write (vbTAB & MSG_CUSTOM_SCRIPTS_END(iLanguageID-1) & vbCRLF & vbCRLF)

	response.write (vbTAB & MSG_TEMPLATE_PRINT_CSS_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<link href=" & chr(34) &  cssFolder & "pf-if.css" & chr(34) & " rel=" & chr(34) & "stylesheet" & chr(34) & " type=" & chr(34) & "text/css" & chr(34) & " />" & vbCRLF)
	response.write (vbTAB & MSG_TEMPLATE_PRINT_CSS_ENDS(iLanguageID-1) & vbCRLF)
end sub

sub writeProgressiveEnhancementCode ()
	response.write (vbTAB & MSG_PROGRESSIVE_ENHANCEMENT_BEGINS(iLanguageID-1) & vbCRLF)
	response.write (vbTAB & "<script src=" & chr(34) & cssFolder & "pe-ap.js" & chr(34) & " type=" & chr(34) & "text/javascript" & chr(34) & "></script>" & vbCRLF)
'	response.write (vbTAB & "<script type=""text/javascript"">" & vbCRLF)
'	response.write (vbTAB & vbTAB & "/* <![CDATA[ */" & vbCRLF)
'	response.write (vbTAB & vbTAB & vbTAB & "var params = {"  & vbCRLF)
'	response.write (vbTAB & vbTAB & vbTAB & vbTAB & "lng:""eng"","  & vbCRLF)
'	response.write (vbTAB & vbTAB & vbTAB & vbTAB & "pngfix:" & chr(34) & CLF2imagesFolder  & "inv.gif" & chr(34) & vbCRLF)
'	response.write (vbTAB & vbTAB & vbTAB & "};"  & vbCRLF)
'	response.write (vbTAB & vbTAB & vbTAB & "PE.progress(params);" & vbCRLF)
'	response.write (vbTAB & vbTAB & "	/* ]]> */" & vbCRLF)
'	response.write (vbTAB & "</script>" & vbCRLF)
	response.write (vbTAB & MSG_PROGRESSIVE_ENHANCEMENT_ENDS(iLanguageID-1) & vbCRLF & vbCRLF)
end sub

Function cleanUpTitle (dirtyTitle)
	dim tempTitle

	tempTitle=dirtyTitle

	if InStr (tempTitle, "<br />") Then
		tempTitle = replace (tempTitle, "<br />", " ")
	end if

	cleanUpTitle=tempTitle
end Function

Function getFileContents(strIncludeFile)
  Dim objFSO
  Dim objText
  Dim strPage

  'Instantiate the FileSystemObject Object.
  Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
  Set objText = objFSO.OpenTextFile(Server.MapPath(strIncludeFile))

  'Read and return the contents of the file as a string.
  getFileContents = objText.ReadAll

  objText.Close
  Set objText = Nothing
  Set objFSO = Nothing
End Function

Function getScriptFileName ()
    getScriptFileName = lcase(Mid(request.ServerVariables("SCRIPT_NAME"), InStrRev(request.ServerVariables("SCRIPT_NAME"), "/")+1))
End Function

if bgcolor = "" Then
    bgcolor = "#ffffff"
end if

if bHideLine = "" Then
    bHideLine = False
end if

'***************************
' default number of columns
'***************************
inumberOfColumns = 2

bAlive = False
bTitle = True
bOld = False
displayDocTitleBreadCrumb = true
'*******************************************************************************
' bPartsBar can be set to False by setting the metatag bHideMultiPartsBar = True
' this allows to hide the multi parts bar
'*******************************************************************************
bPartsBar = True
inumActivities = 0
' this is done to prevent defacing of sites
sQueryString = server.URLEncode(handleAmpersands (Request.QueryString))
sQueryString = replace (sQueryString, "%3D", "=")
sQueryString = replace (sQueryString, "%26amp%3B", "&amp;")

noPrintableLink = True

iPos = InStr (sPROTOCOL, "/")
if (iPos) Then
     sPROTOCOL = Mid (sPROTOCOL, 1, iPos-1)
end if

sPath = lcase (sPath)

if sView="printable" then
    if (InStr (sPath, "-pr-eng") > 0) then
        sPath = replace (sPath, "-pr-eng", "-eng")
    elseif (InStr (sPath, "-pr-fra") > 0) then
        sPath = replace (sPath, "-pr-fra", "-fra")
    end if
end if

sURL = lcase(sPROTOCOL) & "://" &sHost & sPath
sURL = replace (sURL, "http://fin.gc.ca", "http://www.fin.gc.ca")
sURL = replace (sURL, "http://192.168.0.20", "http://www.fin.gc.ca")
sOrigURL = sURL
iLanguageID=1
CLF2AltlanguageAcronym="fr"
if (InStr (sURL, "-fra.asp")) then
    iLanguageID=2
    CLF2AltlanguageAcronym="en"
end if

sAltLangQueryString = ""
serviceDomain = sHOST
checkForLanguageParameter ()
sURL = swapToProductionURL (sURL)

if (getAllResourceInfo () =  -1) Then
	ifAuxiliaryFiles ()
	if InStr (sOrigURL, "-eng.asp") Then
		sURL = replace (sOrigURL, "-eng.asp", "_e.asp")
		sOrigURL = sURL
		sURL = swapToProductionURL (sURL)
		if (getAllResourceInfo () =  -1) Then
		    Response.redirect "/finimScripts/handle404.asp"
		end if
	elseif InStr (sOrigURL, "-fra.asp") Then
		sURL = replace (sOrigURL, "-fra.asp", "_f.asp")
		sOrigURL = sURL
		sURL = swapToProductionURL (sURL)
		if (getAllResourceInfo () =  -1) Then
		    Response.redirect "/finimScripts/handle404.asp"
		end if
	else
		Call Response.AddHeader("HTTP/1.1", "404 not found")
		Response.redirect "http://www.tbs-sct.gc.ca/finimScripts/handle404.asp"
	end if
end if


Set TBSIMRS = TBSIMRS.NextRecordset
if not (TBSIMRS.BOF and TBSIMRS.EOF) then
	resourceMetadata=TBSIMRS.getrows ()
	bresourceMetadata = True
end if

Set TBSIMRS = TBSIMRS.NextRecordset

if not (TBSIMRS.BOF and TBSIMRS.EOF) then
	resourceServicePagedata=TBSIMRS.getrows ()
	serviceDomain = resourceServicePagedata(1,0)
end if

Set TBSIMRS = TBSIMRS.NextRecordset
if not (TBSIMRS.EOF AND TBSIMRS.BOF) Then
	iTotalTopics = -1
	bresourceTopic = False
	do
		iTotalTopics = iTotalTopics + 1
		redim preserve resourceTopics(iTotalTopics)
		resourceTopics(iTotalTopics)=TBSIMRS.getrows ()
		Set TBSIMRS = TBSIMRS.NextRecordset
		bresourceTopic = True
	loop while not ((resourceTopics(iTotalTopics)(0,0) = "END"))
End If

iTotalRecords = -1
iNumFormats = 0

Call CloseDB (TBSIMdb)
getResourceData ()
getResourceMetaTags ()

CLF2languageSuffix = getLanguageSuffix ()
LanguageSpecificRootWeb = rootWeb
if iLanguageID=2 Then
	sLanguageSuffix = "fra"
else
	sLanguageSuffix = "eng"
end if

if sWhichService <> EMPTY Then
	getResourceLinkInfo (sWhichService)
elseif sService(0) <> EMPTY Then
	getResourceLinkInfo (sService(0))
else
	getResourceLinkInfo ("/")
end if

if sBodyClass(iLanguageID-1) <> "" Then
	BodyTag = "<body class=" & chr(34) & sBodyClass(iLanguageID-1) & chr(34) & ">" &  vbCRLF
elseif BodyTag = "" Then
	BodyTag = "<body>" &  vbCRLF
end if

if (sdDatePreserved <= date ()) Then
	writeErrorMessage (Msg_Archived (iLanguageID-1))
	Response.end
end if

if InStr (sHOST, "authoring") OR InStr (sHOST, "staging") Then
else
	if (bAlive = False) Then
		writeErrorMessage (Msg_Unavailable (iLanguageID-1))
	'writeFooter ()
	'writeClosingTags ()
		Response.end
	end if
end if

getResourceTopics ()
'used for greying out the main header menu
bDisableMainMenu = false

'used for greying out the service link menu
bDisableServiceLink = false

%>