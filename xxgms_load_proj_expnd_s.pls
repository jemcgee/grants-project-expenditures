CREATE OR REPLACE PACKAGE apps.xxgms_load_proj_expnd AS
-- ===========================================================================
-- Filename: xxgms_load_proj_expnd_s.pls
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
                , p_quantity                    IN      NUMBER   -- not null
                , p_orig_transaction_reference	IN	VARCHAR2 DEFAULT NULL
		, p_expenditure_comment         IN      VARCHAR2 DEFAULT NULL
		, p_dcid			IN	NUMBER 	 DEFAULT NULL
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
);
END;
/
