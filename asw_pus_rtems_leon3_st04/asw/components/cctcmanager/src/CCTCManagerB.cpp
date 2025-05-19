#include <public/cctcmanager_iface_v1.h>

// ***********************************************************************

// class EDROOM_CTX_Top_0

// ***********************************************************************



	// CONSTRUCTORS***********************************************

CCTCManager::EDROOM_CTX_Top_0::EDROOM_CTX_Top_0(CCTCManager &act,
	 CDTCAcceptReport & EDROOMpVarVAcceptReport,
	 CDTCHandler & EDROOMpVarVCurrentTC,
	 CDTCExecCtrl & EDROOMpVarVTCExecCtrl,
	 CEDROOMPOOLCDTCHandler & EDROOMpPoolCDTCHandler ):

	EDROOMcomponent(act),
	Msg(EDROOMcomponent.Msg),
	MsgBack(EDROOMcomponent.MsgBack),
	BKGExecCtrl(EDROOMcomponent.BKGExecCtrl),
	HK_FDIRCtrl(EDROOMcomponent.HK_FDIRCtrl),
	RxTC(EDROOMcomponent.RxTC),
	VAcceptReport(EDROOMpVarVAcceptReport),
	VCurrentTC(EDROOMpVarVCurrentTC),
	VTCExecCtrl(EDROOMpVarVTCExecCtrl),
	EDROOMPoolCDTCHandler(EDROOMpPoolCDTCHandler)
{
}

CCTCManager::EDROOM_CTX_Top_0::EDROOM_CTX_Top_0(EDROOM_CTX_Top_0 &context):

	EDROOMcomponent(context.EDROOMcomponent),
	Msg(context.Msg),
	MsgBack(context.MsgBack),
	BKGExecCtrl(context.BKGExecCtrl),
	HK_FDIRCtrl(context.HK_FDIRCtrl),
	RxTC(context.RxTC),
	VAcceptReport(context.VAcceptReport),
	VCurrentTC(context.VCurrentTC),
	VTCExecCtrl(context.VTCExecCtrl),
	EDROOMPoolCDTCHandler(context.EDROOMPoolCDTCHandler )
{

}

	// EDROOMSearchContextTrans********************************************

bool CCTCManager::EDROOM_CTX_Top_0::EDROOMSearchContextTrans(
			TEDROOMTransId &edroomCurrentTrans)
			{

	bool edroomValidMsg=false; 

	 switch(Msg->signal)
	{

		 case ( EDROOMSignalDestroy ): 

			 edroomValidMsg=true;
			 edroomCurrentTrans.distanceToContext = 0 ;
			 edroomCurrentTrans.localId = -1 ;
			 break;

	}

	return(edroomValidMsg);

}

	// User-defined Functions   ****************************

void	CCTCManager::EDROOM_CTX_Top_0::nousar

{

return VTCExecCtrl.IsBKGTC();

}



void	CCTCManager::EDROOM_CTX_Top_0::FExecTC()

{

VCurrentTC.ExecTC();

}



void	CCTCManager::EDROOM_CTX_Top_0::FFwdBKGTC()

{
   //Allocate data from pool
  CDTCHandler * p SBKGTC_Data = EDROOMPoolCDTCHandler.AllocData();
	
		// Complete Data 
	
	*p SBKGTC_Data=VCurrentTC;  
   //Send message 
   BKGExecCtrl.send( SBKGTC,p SBKGTC_Data,&EDROOMPoolCDTCHandler); 
}



void	CCTCManager::EDROOM_CTX_Top_0::FFwdHK_FDIRTC()

{
   //Allocate data from pool
  CDTCHandler * pSHK_FDIR_TC_Data = EDROOMPoolCDTCHandler.AllocData();
	
		// Complete Data 
	
*pSHK_FDIR_TC_Data=VCurrentTC;   
   //Send message 
   HK_FDIRCtrl.send(SHK_FDIR_TC,pSHK_FDIR_TC_Data,&EDROOMPoolCDTCHandler); 
}



void	CCTCManager::EDROOM_CTX_Top_0::FGetTC()

{
   //Handle Msg->data
  CDTCMemDescriptor & varEDROOMIRQsignal = *(CDTCMemDescriptor *)Msg->data;
		
//Set Descriptor	
VCurrentTC.BuildFromDescriptor(varEDROOMIRQsignal);
 
//Do Acception
VAcceptReport=VCurrentTC.DoAcceptation();

}



void	CCTCManager::EDROOM_CTX_Top_0::FInit()

{

RxTC.MaskIRQ();
 
RxTC.InstallHandler();
 
pus_services_startup();
 
RxTC.UnMaskIRQ();

}



void	CCTCManager::EDROOM_CTX_Top_0::FMngTCAcceptation()

{

 
VCurrentTC.MngTCAcceptation();
 

}



void	CCTCManager::EDROOM_CTX_Top_0::FMngTCRejection()

{

 
 
VCurrentTC.MngTCRejection(VAcceptReport);
 

}



void	CCTCManager::EDROOM_CTX_Top_0::FReboot()

{

pus_services_mng_reboot();

}



void	CCTCManager::EDROOM_CTX_Top_0::FTCExecCtrl()

{

VTCExecCtrl=VCurrentTC.GetExecCtrl();

}



bool	CCTCManager::EDROOM_CTX_Top_0::GAcceptTC()

{

return VAcceptReport.IsAccepted();

}



bool	CCTCManager::EDROOM_CTX_Top_0::GFwdToBKG()

{

 return VTCExecCtrl.IsBKGTC();

}



bool	CCTCManager::EDROOM_CTX_Top_0::GFwdToHK_FDIR()

{

return VTCExecCtrl.IsHK_FDIRTC();

}



bool	CCTCManager::EDROOM_CTX_Top_0::GToReboot()

{

return VTCExecCtrl.IsRebootTC();

}



	//********************************** Pools *************************************

	//CEDROOMPOOLCDTCHandler

CCTCManager::EDROOM_CTX_Top_0::CEDROOMPOOLCDTCHandler::CEDROOMPOOLCDTCHandler(
			TEDROOMUInt32 elemCount,CDTCHandler* pMem,bool * pMemMarks):
				CEDROOMProtectedMemoryPool(elemCount, pMem, pMemMarks,
					sizeof(CDTCHandler))
{
}

CDTCHandler *	CCTCManager::EDROOM_CTX_Top_0::CEDROOMPOOLCDTCHandler::AllocData()
{
	return(CDTCHandler*)CEDROOMProtectedMemoryPool::AllocData();
}



// ***********************************************************************

// class EDROOM_SUB_Top_0

// ***********************************************************************



	// CONSTRUCTOR*************************************************

CCTCManager::EDROOM_SUB_Top_0::EDROOM_SUB_Top_0 (CCTCManager&act
	,CEDROOMMemory *pEDROOMMemory):
		EDROOM_CTX_Top_0(act,
			VAcceptReport,
			VCurrentTC,
			VTCExecCtrl,
			EDROOMPoolCDTCHandler),
		EDROOMPoolCDTCHandler(
			10, pEDROOMMemory->poolCDTCHandler,
			pEDROOMMemory->poolMarkCDTCHandler)
{

}

	//***************************** EDROOMBehaviour ********************************

void CCTCManager::EDROOM_SUB_Top_0::EDROOMBehaviour()
{

	TEDROOMTransId edroomCurrentTrans;

	//Behaviour starts from Init State

	edroomCurrentTrans = EDROOMIArrival();

	do
	{

		//Take next transition

		switch(edroomCurrentTrans.localId)
		{

			//Next Transition is Init
			case (Init):
				//Msg->Data Handling 
				//Execute Action 
				FInit();
				//Send Asynchronous Message 
				//Invoke Synchronous Message 
				//MsgBack->Data Handling 
				//Next State is Ready
				edroomNextState = Ready;
				break;
			//To Choice Point NewRxTC
			case (NewRxTC):

				//Msg->Data Handling 
				FGetTC();
				//Execute Action 
				//Send Asynchronous Message 
				//Invoke Synchronous Message 
				//MsgBack->Data Handling 
				//Evaluate Branch Accepted
				if( GAcceptTC() )
				{
					//Execute Action 
					FMngTCAcceptation();

					//Branch taken is NewRxTC_Accepted
					edroomCurrentTrans.localId =
						NewRxTC_Accepted;

					//Next State is ValidTC
					edroomNextState = ValidTC;
				 } 
				//Default Branch NotAccepted
				else
				{
					//Execute Action 
					FMngTCRejection();

					//Branch taken is NewRxTC_NotAccepted
					edroomCurrentTrans.localId =
						NewRxTC_NotAccepted;

					//Next State is Ready
					edroomNextState = Ready;
				 } 
				break;
			//To Choice Point HandleTC
			case (HandleTC):

				//Msg->Data Handling 
				//Execute Action 
				FTCExecCtrl();
				//Send Asynchronous Message 
				//Invoke Synchronous Message 
				//MsgBack->Data Handling 
				//Evaluate Branch ToReboot
				if( GToReboot() )
				{
					//Execute Action 
					FExecTC();

					//Branch taken is HandleTC_ToReboot
					edroomCurrentTrans.localId =
						HandleTC_ToReboot;

					//Next State is Reboot
					edroomNextState = Reboot;
				 } 
				//Evaluate Branch FwdHK_FDIRTC
				else if( GFwdToHK_FDIR() )
				{
					//Send Asynchronous Message 
					FFwdHK_FDIRTC();

					//Branch taken is HandleTC_FwdHK_FDIRTC
					edroomCurrentTrans.localId =
						HandleTC_FwdHK_FDIRTC;

					//Next State is Ready
					edroomNextState = Ready;
				 } 
				//Evaluate Branch FwdBKGTC
				else if( GFwdToBKG() )
				{
					//Send Asynchronous Message 
					FFwdBKGTC();

					//Branch taken is HandleTC_FwdBKGTC
					edroomCurrentTrans.localId =
						HandleTC_FwdBKGTC;

					//Next State is Ready
					edroomNextState = Ready;
				 } 
				//Default Branch ExecPrioTC
				else
				{
					//Execute Action 
					FExecTC();

					//Branch taken is HandleTC_ExecPrioTC
					edroomCurrentTrans.localId =
						HandleTC_ExecPrioTC;

					//Next State is Ready
					edroomNextState = Ready;
				 } 
				break;
		}

		//Entry into the Next State 
		switch(edroomNextState)
		{

				//Go to the state I
			case (I):
				//Execute Entry Action 
				//Send Asynchronous Message at Entry
				//Arrival to state I
				edroomCurrentTrans=EDROOMIArrival();
				//Execute Exit Action 
				//Send Asynchronous Message at Exit
				break;

				//Go to the state Ready
			case (Ready):
				//Execute Entry Action 
				//Send Asynchronous Message at Entry
				//Arrival to state Ready
				edroomCurrentTrans=EDROOMReadyArrival();
				//Execute Exit Action 
				//Send Asynchronous Message at Exit
				break;

				//Go to the state Reboot
			case (Reboot):
				//Execute Entry Action 
				FReboot();
				//Send Asynchronous Message at Entry
				//Arrival to state Reboot
				edroomCurrentTrans=EDROOMRebootArrival();
				//Execute Exit Action 
				//Send Asynchronous Message at Exit
				break;

				//Go to the join point ValidTC
			case (ValidTC):
				//Execute Entry Action 
				//Send Asynchronous Message at Entry
				//Arrival to join point ValidTC
				edroomCurrentTrans=EDROOMValidTCArrival();
				//Execute Exit Action 
				//Send Asynchronous Message at Exit
				break;

		}

		edroomCurrentState=edroomNextState;

	}while(Msg->signal != EDROOMSignalDestroy);

}



	// Context Init**********************************************

void CCTCManager::EDROOM_SUB_Top_0::EDROOMInit()
{

edroomCurrentState=I;

}



//	 ***********************************************************************

//	 SubState I

//	 ***********************************************************************



TEDROOMTransId CCTCManager::EDROOM_SUB_Top_0::EDROOMIArrival()
{

	TEDROOMTransId edroomCurrentTrans;

	//Next transition is  Init
	edroomCurrentTrans.localId = Init;
	edroomCurrentTrans.distanceToContext = 0;
	return(edroomCurrentTrans);

}



//	 ***********************************************************************

//	 JoinPoint ValidTC

//	 ***********************************************************************



TEDROOMTransId CCTCManager::EDROOM_SUB_Top_0::EDROOMValidTCArrival()
{

	TEDROOMTransId edroomCurrentTrans;

	//Next transition is  HandleTC
	edroomCurrentTrans.localId = HandleTC;
	edroomCurrentTrans.distanceToContext = 0 ;
	return(edroomCurrentTrans);

}



	// ***********************************************************************

	// Leaf SubState  Ready

	// ***********************************************************************



TEDROOMTransId CCTCManager::EDROOM_SUB_Top_0::EDROOMReadyArrival()
{

	TEDROOMTransId edroomCurrentTrans;

	bool edroomValidMsg=false;

	do
	{

		EDROOMNewMessage ();

		switch(Msg->signal)
		{

			case (EDROOMIRQsignal): 

				 if (*Msg->GetPInterface() == RxTC)
				{

					//Next transition is  NewRxTC
					edroomCurrentTrans.localId = NewRxTC;
					edroomCurrentTrans.distanceToContext = 0 ;
					edroomValidMsg=true;
				 }

				break;

		};

		if (false == edroomValidMsg)
		{
			 edroomValidMsg = EDROOMSearchContextTrans(edroomCurrentTrans);

		}

	} while (false == edroomValidMsg);

	return(edroomCurrentTrans);

}



	// ***********************************************************************

	// Leaf SubState  Reboot

	// ***********************************************************************



TEDROOMTransId CCTCManager::EDROOM_SUB_Top_0::EDROOMRebootArrival()
{

	TEDROOMTransId edroomCurrentTrans;

	bool edroomValidMsg=false;

	do
	{

		EDROOMNewMessage ();

		if (false == edroomValidMsg)
		{
			 edroomValidMsg = EDROOMSearchContextTrans(edroomCurrentTrans);

		}

	} while (false == edroomValidMsg);

	return(edroomCurrentTrans);

}



