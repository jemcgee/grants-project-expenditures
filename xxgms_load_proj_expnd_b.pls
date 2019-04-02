CREATE OR REPLACE PACKAGE BODY apps.xxgms_load_proj_expnd AS
-- ===========================================================================
-- Filename: xxgms_load_proj_expnd_b.pls
-- Author:   Jenny McGee
-- Date:     25 Oct 2018
-- JIRA:     APPSUPPORT-988
--
-- Description: Procedure to load award information for grants accounting 
--              project expenditures.
--
-- Modification Log:
-- Date       Programmer        Description
-- ---------  ----------------  ---------------------------------------------
-- ===========================================================================
PROCEDURE load_data ( 
                  p_transaction_source          IN      VARCHAR2 --not null
                , p_batch_name                  IN      VARCHAR2 --not null
		, p_transaction_type		IN	VARCHAR2 --not null
		, p_org_id			IN	VARCHAR2 --not null	
                , p_project_number              IN      VARCHAR2 --not null
                , p_task_number                 IN      VARCHAR2 --not null
                , p_award_number                IN      VARCHAR2 --not null
                , p_expenditure_ending_date     IN      DATE     --not null
                , p_expenditure_item_date       IN      DATE     --not null
		, p_organization_name		IN	VARCHAR2 --not null
                , p_expenditure_type            IN      VARCHAR2 --not null
		, p_quantity			IN	NUMBER   -- not null
		, p_orig_transaction_reference  IN	VARCHAR2 DEFAULT NULL
		, p_expenditure_comment         IN      VARCHAR2 DEFAULT NULL
		, p_dcid			IN	NUMBER	 DEFAULT NULL
		, p_ccid			IN	NUMBER	 DEFAULT NULL
		, p_gl_date			IN	DATE     --not null
		, p_attribute1                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute2                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute3                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute4                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute5                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute6                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute7                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute8                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute9                  IN      VARCHAR2 DEFAULT NULL
                , p_attribute10                 IN      VARCHAR2 DEFAULT NULL
		) IS 

    l_org_id	NUMBER;
BEGIN
    INSERT INTO apps.xxgms_cost_import(
      transaction_source
    , batch_name
    , transaction_type 
    , org_id
    , project_number
    , task_number
    , award_number 
    , expenditure_ending_date
    , expenditure_item_date
    , department 
    , expenditure_type
    , quantity
    , transaction_reference 
    , comments 
    , dr_ccid 
    , cr_ccid 
    , gl_date
    , attribute1
    , attribute2
    , attribute3
    , attribute4
    , attribute5
    , attribute6
    , attribute7
    , attribute8
    , attribute9
    , attribute10
    )
    VALUES (
             p_transaction_source
           , p_batch_name
           , 'A' 
	   , p_org_id 	   
	   , p_project_number
           , p_task_number
  	   , p_award_number
           , p_expenditure_ending_date
           , p_expenditure_item_date
	   , p_organization_name
           , p_expenditure_type
	   , p_quantity
	   , p_orig_transaction_reference
           , p_expenditure_comment
	   , p_dcid
	   , p_ccid
   	   , p_gl_date
           , p_attribute1
           , p_attribute2
           , p_attribute3
           , p_attribute4
           , p_attribute5
           , p_attribute6
           , p_attribute7
           , p_attribute8
           , p_attribute9
           , p_attribute10
    );
    END;

END xxgms_load_proj_expnd;
/
