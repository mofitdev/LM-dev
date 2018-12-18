using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace LMWebApp.ws
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IServiceMain" in both code and config file together.
    [ServiceContract]
    public interface IServiceMain
    {
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetGazarListForDDL(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetGazarListForSelect2(string yr, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetHeltesListForDDL(string yr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetStaffListForDDL(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetNegjListForDDL(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetNegjListForSelect2(string yr, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetStaffListForSelect2(string yr, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string OracleExecuteScalar(string qry);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void OracleExecuteNonQuery(string qry);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string OracleExecuteDataSet(string qry);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void DeleteFile(string filename);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void SessionKill();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void gotoHRMIS(string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void gotoLM(string stid);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetGazarListForDDL_MySQL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string GetGazarListForSelect2_MySql(string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string MySqlExecuteScalar(string qry);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void MySqlExecuteNonQuery(string qry);

        //*****planmnth.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable1(string yr, string mnth, string gazar, string heltes, string stid, string isplaned, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable2(string yr, string mnth, string gazar, string heltes, string stid, string isplaned, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable3(string yr, string mnth, string gazar, string heltes, string stid, string isplaned, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable4(string yr, string mnth, string gazar, string heltes, string stid, string isplaned, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable5(string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable6(string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1Datatable7(string gazarinitname, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1PlanyrListDDL(string action);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanmnthTab1SP_PLANM_DELETE(string P_PLANM_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1ModalStaffListForSelect2(string id, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1ModalStaffListNotPlanedForSelect2(string funcActionId);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanmnthTab1SP_PLANM_NOTPLANED_INSERT(string P_FUNC_ACTION_ID, string P_NO, string P_NAME, string P_STRT_DATE, string P_END_DATE, string P_STAFFLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanmnthTab1SP_PLANM_INSERT(string P_PLANYR_ID, string P_NO, string P_NAME, string P_STRT_DATE, string P_END_DATE, string P_STAFFLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanmnthTab1SP_PLANM_UPDATE(string P_PLANM_ID, string P_PLANYR_ID, string P_NO, string P_NAME, string P_STRT_DATE, string P_END_DATE, string P_STAFFLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthAddStafflistModalSelectStafflist(string id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthAddStafflistDatatable(string id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab1PlanPrintModalDatatable(string yr, string mnth, string isplaned, string gazar, string heltes, string staff, string issubmit);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab2Datatable(string yr, string mnth, string gazar, string heltes, string stid, string isplaned);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab3Datatable(string yr, string mnth, string gazar, string heltes, string isplaned);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab4t1Datatable(string yr, string mnth, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab4t2Datatable(string yr, string mnth, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab5t1Datatable(string yr, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab4t4Datatable(string yr, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanmnthTab4t5Datatable(string yr, string mnth);

        //*****planyr.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab1Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab2Datatable(string yr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab2StratListDDL(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab2ModalHeltesListForSelect2(string gazar, string selectedList, string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab2SP_FUNC_ACTION_INSERT(string P_FUNC_STRAT_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID, string P_IS_PLANED, string P_YR, string P_IS_LOCAL);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab2SP_FUNC_ACTION_UPDATE(string P_ID, string P_FUNC_STRAT_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID, string P_IS_PLANED, string P_YR, string P_IS_LOCAL);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab2SP_FUNC_ACTION_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3Datatable(string yr, string gazar, string heltes, string staff, string isplaned);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab3SP_PLANT_INSERT(string P_NDSGAPEGLIST, string P_FUNC_ACTION_ID, string P_IS_PLANED, string P_NO, string P_NAME, string P_CRITERIA, string P_QUALITY, string P_CNT, string P_BUDGET, string P_STAFFLIST, string P_STAFFID, string P_YR, string P_DODAY);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab3SP_PLANT_UPDATE(string P_PLANYR_ID, string P_NDSGAPEGLIST, string P_FUNC_ACTION_ID, string P_IS_PLANED, string P_NO, string P_NAME, string P_CRITERIA, string P_QUALITY, string P_CNT, string P_BUDGET, string P_STAFFLIST, string P_STAFFID, string P_DODAY);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab3SP_PLANT_DELETE(string P_PLANYR_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ActionListDDL(string yr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ModalBodlogoDatatable(string policyplanlistid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ModalStaffListForSelect2(string id, string selectedList, string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ModalNDSGAPEGListForSelect2(string yr, string type, string brid, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ModalBodlogoModalPolicyTypeListDDL(string policytypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab3ModalBodlogoModalPlanListDDL(string policyzoriltid, string br_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PlanyrTab3SP_PLANT_IMPORT(string P_PLANLIST, string P_YR, string P_STAFFID);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab4Datatable(string yr, string quarter, string isplaned, string gazar, string heltes, string staff);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab5Datatable(string yr, string quarter, string isplaned, string gazar, string heltes, string staff);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab6t1Datatable(string yr, string qrtr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab6t2Datatable(string yr, string qrtr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab6t3Datatable(string yr, string qrtr, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PlanyrTab6t5Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string planyrTab7t1Datatable(string yr, string qrtr, string tp);


        //*****workingtime.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab4t3Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab2Datatable(string yr, string month, string month2, string gazar, string heltes, string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab3Datatable(string yr, string month, string month2, string gazar, string heltes, string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab4Datatable(string yr, string month);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab4t2Datatable(string yr, string month, string month2, string gazar, string heltes, string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string WorkingtimeTab3Desc(string year, string month, string month2, string stid);




        //*****dashboard.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string DashboardCol2t1Datatable(string yr);




        //*****implweek.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekGetList(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekImplDatatable(string tp, string gazarid, string heltesid, string stid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekPlanDatatable(string tp, string gazarid, string heltesid, string stid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekImportImplDatatable(string yr, string tp, string gazarid, string heltesid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekImportPlanDatatable(string yr, string tp, string gazarid, string heltesid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekTab3ReportImpl(string yr, string gazarid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekTab3ReportPlan(string yr, string gazarid, string begindate, string enddate);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void IMPLWEEK_IMPORT_HELTES(string P_TP, string P_GAZAR_ID, string P_HELTES_ID, string P_BEGINDATE, string P_ENDDATE, string P_IMPLLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void IMPLWEEK_IMPORT_GAZAR(string P_TP, string P_GAZAR_ID, string P_BEGINDATE, string P_ENDDATE, string P_IMPLLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PLANWEEK_IMPORT_HELTES(string P_TP, string P_GAZAR_ID, string P_HELTES_ID, string P_BEGINDATE, string P_ENDDATE, string P_IMPLLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void PLANWEEK_IMPORT_GAZAR(string P_TP, string P_GAZAR_ID, string P_BEGINDATE, string P_ENDDATE, string P_IMPLLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekGetListInMonth(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekTab4Datatable(string yr, string gazarid, string heltesid, string weeklist);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string ImplweekPlanmnthList(string yr, string mnth, string gazar, string heltes, string stid);



        //*****auditinternal.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalReportListDDL(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalReportListRecDDL(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalGazarListForSelect2(string selectedList, string yr);



        //*****srvclient.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvclientTab1Datatable(string yr, string mnth, string mnth2);



        //*****srv.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvQuestionDatatable(string type, string isactive);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvAnswerDatatable(string type, string isactive);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab1t2Datatable(string yr, string yrhf);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void SRV_INSUPT(string P_STAFFEVALLIST, string P_QUESTION_ID, string P_SRV_TYPE_ID, string P_YR, string P_YR_HF, string P_QRTR, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab1t3Datatable(string yr, string yrhf, string brid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab2t2Datatable(string yr, string yrhf, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab2t3Datatable(string yr, string yrhf, string gazarid, string heltesid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab3t2Datatable(string yr, string yrhf, string gazarid, string heltesid, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab3t3Datatable(string yr, string yrhf, string gazarid, string heltesid, string staffid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab3t4Datatable(string yr, string yrhf, string gazarid, string heltesid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab4t2Datatable(string yr, string yrhf, string gazarid, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvTab4t3Datatable(string yr, string yrhf, string gazarid, string heltesid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void srvSendMail(string tp, string body);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SrvAnswerList(string type);


        //*****login.html*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void CheckLogin(string username, string pass);



        //*****policytype.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicytypeDatatable();



        //*****policy.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab2BodlogoListDDL(string policytypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab3ZoriltListDDL(string policybodlogoid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab1Datatable(string policytypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab2Datatable(string policytypeid, string bodlogoid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab3Datatable(string policytypeid, string bodlogoid, string zoriltid, string isteam, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void POLICYPLAN_INSERT(string P_POLICYZORILT_ID, string P_NO, string P_NAME, string P_RESULT, string P_CRITERIA, string P_ISTEAM, string P_BEGINYR, string P_ENDYR, string P_WHONAME, string P_BRLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void POLICYPLAN_UPDATE(string P_ID, string P_POLICYZORILT_ID, string P_NO, string P_NAME, string P_RESULT, string P_CRITERIA, string P_ISTEAM, string P_BEGINYR, string P_ENDYR, string P_WHONAME, string P_BRLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void POLICYPLAN_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab4Datatable(string policytypeid, string yr, string yrhf, string bodlogoid, string zoriltid, string isteam, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab5Datatable(string policytypeid, string yr, string yrhf, string bodlogoid, string zoriltid, string isteam, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab6t1Datatable(string policytypeid, string yr, string yrhf, string isteam, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab6t2Datatable(string policytypeid, string yr, string yrhf, string isteam, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab6t3Datatable(string policytypeid, string isteam, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab6t4Datatable(string policytypeid, string isteam, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab7t1Datatable(string policytypeid, string yr, string yrhf, string isteam);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab7t2Datatable(string policytypeid, string yr, string yrhf, string isteam);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab8Datatable(string policytypeid, string bodlogoid, string zoriltid, string isteam);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab9Datatable(string policytypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string PolicyTab6t7Datatable(string yr, string yrhf);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatorTab3t1Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatorTab3t2Datatable(string indicatortypeid, string yr, string yr2);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatorTab3t3Datatable();


        //*****agreement.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1t1(string yr, string st_id, string isme);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AGREEMENT_MAIN_INSUPT(string P_YR, string P_ST_ID, string P_PLANYR_ID, string P_ISSPECIAL, string P_YRHF1, string P_YRHF2);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1t2(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1t2Head(string yr, string st_id, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1t3(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2t1(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2t1PlanmImpl(string planyrid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2t2(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2t2Head(string yr, string yrhf, string st_id, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2t3(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab3t1(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab3t2(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab3t2Head(string yr, string yrhf, string st_id, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab3t3(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1PrintModalHavsraltTable1(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1PrintModalHavsraltTable2(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1PrintModalHavsraltTable3(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab1PrintModalHavsraltTable4(string yr, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable1(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable2(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable3(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable3t2(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable4(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable5(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab2PrintModalTable6(string yr, string yrhf, string st_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementStaff30Dahi(string yr, string yrhf, string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab4t1(string yr, string yrhf, string gazarid, string heltesid, string proports);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab5t1(string yr, string yrhf, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab5t3(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementTab4t2(string yr, string yrhf);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementIltgehHuudasLastPer(string yr, string yrhf, string stid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AgreementIltgehHuudasLastPerHead(string yr, string yrhf, string stid);


        //*****auditexternal.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab1Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab2Datatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab2GazarListForSelect2(string selectedList, string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab3Datatable(string yr, string reportid, string gazar, string cat);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab3ReportListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab3ReportListRecForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab3ReportListAktForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab3TypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab3Delete(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab3Insert(string P_AUDITEXTERNAL_REPORT_ID, string P_AUDITEXTERNAL_TYPE_ID, string P_NO, string P_NAME, string P_DT, string P_BRANCHLIST, string P_STAFFID, string P_SUCCESSDATE, string P_FILENAME, string P_AUDITEXTERNAL_CAT_ID, string P_ISCLOSED);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab3Update(string P_ID, string P_AUDITEXTERNAL_REPORT_ID, string P_AUDITEXTERNAL_TYPE_ID, string P_NO, string P_NAME, string P_DT, string P_BRANCHLIST, string P_BRANCHLIST2, string P_BRANCHLIST2YR, string P_STAFFID, string P_SUCCESSDATE, string P_FILENAME, string P_AUDITEXTERNAL_CAT_ID, string P_ISCLOSED);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab5Datatable(string yr, string qrtr, string reportid, string gazar, string cat);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab6Datatable(string yr, string qrtr, string reportid, string gazar, string cat);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab9t1Datatable(string yr, string qrtr, string turul);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab9t2Datatable(string yr, string qrtr, string turul);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab9t3Datatable(string yr, string qrtr, string reportid, string gazar, string isimpl, string turul);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab9t5Datatable(string yr, string qrtr, string reportid, string gazar, string isimpl, string turul);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab1t5Datatable(string yr, string reportid, string gazar, string cat);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab1t5GazarListForSelect2(string selectedList, string recid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditexternalTab1t5RecommendListForDDL(string reportid, string cat);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab1t5Delete(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab1t5Insert(string P_AUDITEXTERNAL_RECOMMEND_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditexternalTab1t5Update(string P_ID, string P_AUDITEXTERNAL_RECOMMEND_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID);


        //*****jobdesc.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab1SelectStaffListForDDL(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab1D2Datatable(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab1ZoriltDatatable(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab1WorkDatatable(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab2ZoriltDatatable(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab2ZoriltListForDDL(string yr, string brid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void JOBDESC_LAWZORILT_INSERT(string P_BR_ID, string P_JOBTYPE_ID, string P_NUM, string P_YR, string P_LAWZORILT_ID, string P_PERSONDAY, string P_CRITERIA_D4, string P_ZORILT_D3);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab2WorkDatatable(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab2JobdescZoriltListForDDL(string yr, string num, string brid, string jobtypeid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab3S1Datatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab3TypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab3S2Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void JOBCAPACITYNUM_INSERT(string P_YR, string P_BR_ID, string P_JOBTYPE_ID, string P_NUMLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string JobdescTab3S3Datatable(string yr, string gazar, string heltes);



        //*****lw.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab2TypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab1Datatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab2Datatable(string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab2ImportTushaal(string tushaaltype);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab3LawListForDDL(string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab3Datatable(string tp, string law, string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALT_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab3IndexListForSelect2(string tp, string selectedList);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALT_INSERT(string P_LAW_ID, string P_NO, string P_NAME, string P_PERSONDAY, string P_BRLIST, string P_ISJOBDESC, string P_ISPLANYR, string P_DESCRIPTION, string P_INDEXLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALT_UPDATE(string P_ID, string P_LAW_ID, string P_NO, string P_NAME, string P_PERSONDAY, string P_BRLIST, string P_ISJOBDESC, string P_ISPLANYR, string P_DESCRIPTION, string P_INDEXLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwExcelBulkUpload(string lawid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab3ImportTushaalZaalt(string tushaaltype);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab4ZaaltListForDDL(string lw);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab4Datatable(string tp, string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALTDESC_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALTDESC_INSERT(string P_LAWZAALT_ID, string P_NO, string P_NAME, string P_BRLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZAALTDESC_UPDATE(string P_ID, string P_LAWZAALT_ID, string P_NO, string P_NAME, string P_BRLIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab5t1Datatable(string tp, string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab5t2Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab5t3Datatable(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab6Datatable(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZORILT_INSERT(string P_YR, string P_BR_ID, string P_NO, string P_NAME, string P_LAWZAALT_LIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZORILT_UPDATE(string P_ID, string P_YR, string P_BR_ID, string P_NO, string P_NAME, string P_LAWZAALT_LIST);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void LAWZORILT_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab6ModalLawListForDDL(string tp, string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab6ModalZaaltDatatable(string law);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab6ImportPrevYear(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab7Datatable(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab7ModalZoriltListForDDL(string yr, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab7ImportPrevYear(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab8Datatable(string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LwTab6ImportStratZorilt(string yr, string gazar, string heltes);




        //*****auditinternal.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab1Datatable(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab2Datatable(string yr, string reportid, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab2Delete(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab2Insert(string P_AUDITINTERNAL_REPORT_ID, string P_NO, string P_NAME, string P_DT, string P_BRANCHLIST, string P_STAFFID, string P_SUCCESSDATE, string P_ISCLOSED);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab2Update(string P_ID, string P_AUDITINTERNAL_REPORT_ID, string P_NO, string P_NAME, string P_DT, string P_BRANCHLIST, string P_BRANCHLIST2, string P_BRANCHLIST2YR, string P_STAFFID, string P_SUCCESSDATE, string P_ISCLOSED);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab2ReportListRecForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab3Datatable(string yr, string qrtr, string reportid, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab4Datatable(string yr, string qrtr, string reportid, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab5t1Datatable(string yr, string qrtr, string turul);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab5t2Datatable(string yr, string qrtr, string reportid, string gazar, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab5t3Datatable(string yr, string qrtr, string reportid, string gazar, string isimpl);

        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab1t3Datatable(string yr, string reportid, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab1t3GazarListForSelect2(string selectedList, string recid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string AuditinternalTab1t3RecommendListForDDL(string reportid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab1t3Delete(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab1t3Insert(string P_AUDITINTERNAL_RECOMMEND_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void AuditinternalTab1t3Update(string P_ID, string P_AUDITINTERNAL_RECOMMEND_ID, string P_NO, string P_NAME, string P_BRANCHLIST, string P_STAFFID);



        //*****brset.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string BrsetTab1ImportModalDatatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string BrsetTab1Datatable(string yr);




        //*****lawakt.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LawaktTabTypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LawaktTab1Datatable(string isactive, string tp);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LawaktTab2Datatable();




        //*****letter.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LetterTab1Datatable1(string startdate, string enddate, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LetterTab1Datatable2(string startdate, string enddate, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LetterTab2Datatable(string startdate, string enddate, string gazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string LetterTab3Datatable(string startdate, string enddate, string gazar);



        //*****risk.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string RiskTab1Datatable(string startdate, string enddate, string gazarid, string classid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void RISK_INSERT(string P_CONFIRM_DT, string P_RISK_CLASS_ID, string P_NO, string P_NAME, string P_PROBABILITY, string P_IMPACT, string P_STATUS, string P_DESC1, string P_DESC2, string P_DESC3, string P_DESC4, string P_FILE_NAME, string P_BRLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void RISK_UPDATE(string P_ID, string P_CONFIRM_DT, string P_RISK_CLASS_ID, string P_NO, string P_NAME, string P_PROBABILITY, string P_IMPACT, string P_STATUS, string P_DESC1, string P_DESC2, string P_DESC3, string P_DESC4, string P_FILE_NAME, string P_BRLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void RISK_DELETE(string P_ID);



        //*****setrole.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string SetroleTab1Datatable(string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void ROLE_USER(string USER_ID, string ROLE_ID);




        //*****sysset.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void Sysset_SaveMainSet(string yr, string hyr, string qrtr, string month);




        //*****timeinfo.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeinfoTab1Calendar(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeinfoDateListForDDL(string yr, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeinfoTab2Datatable(string yr, string mnth, string day, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeinfoTab3Datatable(string yr, string mnth, string dates);



        //*****timeqmeet.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeqmeetTab1Calendar(string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeqmeetDateListForDDL(string yr, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeqmeetTab2Datatable(string yr, string mnth, string day, string gazar, string heltes);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TimeqmeetTab3Datatable(string yr, string mnth, string dates);



        //*****togtool.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab1Datatable(string yr, string type, string brid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TOGTOOL_INSERT(string P_TOGTOOL_TYPE_ID, string P_AKT_NAME, string P_SUCCESS_DATE, string P_NO, string P_RECEIVE_DATE, string P_DONE_DATE, string P_FILE_NAME, string P_BRANCHLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TOGTOOL_UPDATE(string P_TOGTOOL_ID, string P_AKT_NAME, string P_SUCCESS_DATE, string P_NO, string P_RECEIVE_DATE, string P_DONE_DATE, string P_FILE_NAME, string P_BRANCHLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TOGTOOL_DELETE(string P_TOGTOOL_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TogtoolSendMail(string togtoolid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab2Datatable(string yr, string type, string brid, string isclosed);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolListForDDL(string yr, string type);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTypeDatatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab3Datatable(string yr, string yrhf, string type, string brid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab5Datatable(string yr, string yrhf, string type, string brid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t1Datatable(string yr, string yr2, string yrhf);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t2Datatable(string yr, string yr2, string yrhf, string type, string eval);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t3Datatable(string yr, string yr2, string yrhf, string type);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t4Datatable(string yr, string yr2, string yrhf, string type, string eval, string isimpl);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t5Datatable(string yr, string yr2, string yrhf);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TogtoolTab4t6Datatable(string yr, string yrhf);



        //*****tushaalsaid.aspx & tushaaltnbd.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalTypeListForDDL(string which);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_INSERT(string P_TUSHAAL_TYPE, string P_TUSHAAL_NAME, string P_SUCCESS_DATE, string P_TUSHAAL_NUMBER, string P_TUSHAAL_DESCRIPTION, string P_FILE_URL, string P_TUSHAAL_TYPE_ID, string P_BOLOVSRUULSAN_BRLIST, string P_BOLOVSRUULSAN_STLIST, string P_HARIUTSSAN_BRLIST, string P_HARIUTSSAN_STLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_UPDATE(string P_ID, string P_TUSHAAL_TYPE, string P_TUSHAAL_NAME, string P_SUCCESS_DATE, string P_TUSHAAL_NUMBER, string P_TUSHAAL_DESCRIPTION, string P_FILE_URL, string P_TUSHAAL_TYPE_ID, string P_BOLOVSRUULSAN_BRLIST, string P_BOLOVSRUULSAN_STLIST, string P_HARIUTSSAN_BRLIST, string P_HARIUTSSAN_STLIST, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TushaalSendMail(string tushaal_ID, string DOMAIN_USER, string yr);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsListForDDL(string tushaal_type_id);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_ZAALT_INSERT(string P_TUSHAAL_ID, string P_NAME, string P_BOLOVSRUULSAN_BRLIST, string P_HARIUTSSAN_BRLIST, string P_STAFFID, string P_ENDDATE);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_ZAALT_UPDATE(string P_ID, string P_TUSHAAL_ID, string P_NAME, string P_BOLOVSRUULSAN_BRLIST, string P_HARIUTSSAN_BRLIST, string P_STAFFID, string P_ENDDATE);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TUSHAALS_ZAALT_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalTypeDatatable(string which);




        //*****tushaalsaid.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsaidTab1Datatable(string yr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsaidTab2Datatable(string yr, string type, string hariutssangazar, string bolovsruulsangazar, string isclosed);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsaidTab3Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsaidTab4t1Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaalsaidTab5Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);




        //*****tushaaltnbd.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaaltnbdTab1Datatable(string yr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaaltnbdTab2Datatable(string yr, string type, string hariutssangazar, string bolovsruulsangazar, string isclosed);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaaltnbdTab3Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaaltnbdTab4t1Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TushaaltnbdTab5Datatable(string yr, string qrtr, string type, string hariutssangazar, string bolovsruulsangazar);




        //****indicatortype.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatortypeDatatable();



        //****indicator.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatorTab1Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR_INSERT(string P_INDICATORTYPE_ID, string P_NAME, string P_BASLINENAME, string P_INDICATORINTERVAL_ID, string P_BRLIST, string P_STAFFID, string P_ISNUMBER);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR_UPDATE(string P_ID, string P_INDICATORTYPE_ID, string P_NAME, string P_BASLINENAME, string P_INDICATORINTERVAL_ID, string P_BRLIST, string P_STAFFID, string P_ISNUMBER);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR_TARGET_INSERT(string P_INDICATOR_ID, string P_YR, string P_VAL);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string IndicatorTab2Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR_PERF_INSERT(string P_INDICATOR_ID, string P_YR, string P_MNTH, string P_VAL, string P_STAFFID);



        //****transparency.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTab1t1Datatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTab1t2Datatable(string typeid, string groupid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTypeListForDDL();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TRANSPARENCY_INSUPT(string P_ID, string P_TRANSPARENCYTYPE_ID, string P_NAME, string P_GROUPLIST, string P_MNTHLIST, string P_REQUIRMENT);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TRANSPARENCY_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTab4Datatable(string typeid, string groupid, string yr, string mnth);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void TRANSPARENCYEVAL_INS(string P_ID, string P_YR, string P_MNTH, string P_EVAL);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTab3t2Datatable(string yr, string mnth, string groupid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string TransparencyTab3t1Datatable(string yr, string mnth, string mnth2);



        //****indicatortype2.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicatortype2Datatable();



        //****indicator2.aspx*****//
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab1Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab1t2Datatable();
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR2_INSERT(string P_INDICATORTYPE_ID, string P_INDICATORCATEGORY_ID, string P_NAME, string P_BASLINENAME, string P_INDICATORINTERVAL_ID, string P_BRLIST, string P_STAFFID, string P_ISNUMBER);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR2_UPDATE(string P_ID, string P_INDICATORTYPE_ID, string P_INDICATORCATEGORY_ID, string P_NAME, string P_BASLINENAME, string P_INDICATORINTERVAL_ID, string P_BRLIST, string P_STAFFID, string P_ISNUMBER);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR2_DELETE(string P_ID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR2_TARGET_INSERT(string P_INDICATOR_ID, string P_YR, string P_VAL);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab2Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        void INDICATOR2_PERF_INSERT(string P_INDICATOR_ID, string P_YR, string P_MNTH, string P_VAL, string P_STAFFID);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab3t1Datatable(string indicatortypeid, string yr, string gazarid);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab3t2Datatable(string indicatortypeid, string yr, string yr2);
        [OperationContract]
        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        string Indicator2Tab3t3Datatable();
    }
}
