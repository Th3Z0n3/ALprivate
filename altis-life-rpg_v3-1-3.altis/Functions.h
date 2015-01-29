class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {}; //3.1.3 Medic
		class welcomeNotification {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class admintp {};
		class admintpmap {};
		class admintptome {};
	};
	
	//3.1.3 Medic
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
	};
	
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class chemlightUse {};
		class heal {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class serviceTruck {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class gatherApples {};
		class gatherCannabis {};
		class gatherHeroin {};
		class gatherOil {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class robBankAction {};
		class sellOil {};
		class suicideBomb {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class gatherPeaches {};
		class gatherCocaine {};
		class pumpRepair {};
		class packupSpikes {};
		class robFederal {};
		class storeVehicle {};
		class robAction {};
		class sellTurtle {};
		class useMarijuana {};
		class useHeroin {};
		class useCocaine {};
		class useMeth {};
		//Surrender
		class surrender {};
		//New ATM
		class useATM {};
		//Mushrooms
		class gatherMushrooms {};
		class useMushrooms {};
		//Drogentest
		class drugtestAction {};
		//Bier
		class processBier {};
		class useBier {};
		class gatherHopfen {};
		class gatherMalz {};
		//Fesseln und Abführen
		class escortAction2 {};
		class stopEscorting2 {};
		class unrestrain2 {};
		class putInCar2 {};
		class restrainAction2 {};
		class pulloutAction2 {};
		//Joint
		class extinguishJoint {};
		//Neue DP Mission
		class dpFinish2 {};
		class getDPMission2 {};
		//Krokodil
		class gatherKrokodil {};
		class processKrokodil {};
		//player addActions
		class initPlayerActions {};
		//Stahl
		class processStahl {};
		//Öl mit FuelTruck
		class gatherOilWithTruck {};
		
	};
	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class copDefault {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		//Housing
		class houseContainers {};
        class housePrice {};
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
	};
	
	class session
	{
		file = "core\session";
		class sessionSetup {};
		class sessionReceive {};
		class sessionUpdate {};
		class sessionCreate {};
		class sessionHandle {};
		class syncData {};
		//3.1.3 SessionQuickSync
		class sessionQuickSync {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		//Wanted Menü
		class wanted2 {};
		class wantedadd2 {};
		//QuickReply
		class quickReply {};
	};
	
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class fetchGear{};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class onDeath {};
		class onRespawn {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pulloutVeh {};
		class nearUnits {};
		class fedSuccess {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		//Taiwendo
		class equipGear {};
		//Housing
		class updateCash {};
        class vehicleGarage {};
		//Holster
		class holsterHandgun {};
		//AbortEnabled
		class abortEnabled {};
		//Weakness
		class weaknessEffects {};
		class weedSmoke {};
		//Pullout2
		class pullOutVeh2 {};
		//Market
		class randomRound {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
		class civFetchGear {};
		class civLoadGear {};
		class robReserve {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		//Unterwasser Expedition
		class uwExplorationExplore {};
		class uwExplorationInit {};
		//Interaktions Menü
		class civInteractionMenu {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class lockSounds {};
		class vInteractionMenu {};
		class vehicleWeight {};
	};
	
	class Housing
    {
        file = "core\housing";
        class buyHouse {};
        class sellHouse {}; 
        class createMarkers {};
        class deleteMarkers {};
        class getBuildID {};
        class initHouses {};
        class lockHouse {};
        class lockStorage {};
        class countBuildingPositions {};
        class houseStoreItem {};
        class houseTakeItem {};
        class houseInventory {};
        class openStorage {};
        class placeStorage {};
        class preCloseHouseStorage {};
        class calcGarageSpawn {};
        class onPut {};
        class onTake {};
    };
	
	class Cop
	{
		file = "core\cop";
		class copLights {};
		class copMarkers {};
		class loadGear {};
		class saveGear {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class copSiren2 {};
		class copSirenWaffen {};
		class copSirenFahrzeug {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class questionSammler {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class copUniform {};
		//Housing
		class houseOwnerSearch {};
        class houseInvSearch {};
        class raidHouse {};
		//Gate opener
		class copOpener {};
		//Waffe beschlagnahmen
		class seizeObjects {};
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
		//Ticket Pay
		class ticketPayCops {};
		//Jail Time
		class arrestDialog_Arrest {};
		class showArrestDialog {};
	};
	
	class EMP
	{
		file = "core\emp";
		class openEmpMenu {};
		class isEmpOperator {};
		class scanVehicles {};
		class warnVehicle {};
		class empVehicle {};
		class vehicleWarned {};
		class vehicleEmpd {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class createGang {};
		class gangBrowser {};
		class gangManagement {};
		class gangMenu {};
		class joinGang {};
		class kickGang {};
		class leaveGang {};
		class setGangLeader {};
		class lockGang {};
		class unlockGang {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopMenuAir {};
		class chopShopSelection {};
		class chopShopSell {};
		// LOTTO
		class lotto {};
		//RentCars
		class vehicleShopMenuRent {};
		class vehicleShopLBChangeRent {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class alarmanlage {};
		//Jackhammer
		class jackhammerUse {};
	};
	
	class Market
	{
		file = "core\market";
		class openMarketView;
		class refreshMarketView;
		class marketShortView;
		class marketBuy;
		class marketSell;
		class marketGetBuyPrice;
		class marketGetSellPrice;
		class marketconfiguration;
		class marketReset;
		class marketChange;
		class marketGetRow;
		class marketGetPriceRow;
		class marketSetPriceRow;
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		//Housing
		class houseMenu {};
		//3.1.3 Banking
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
	};
};