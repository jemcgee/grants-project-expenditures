-- ===========================================================================
-- Filename: xxgms_cost_import.sql
-- Author:   Mark J. Matson
-- Date:     11-may-09
--
-- Description: Interface table used for cost loads.
--
-- Modification Log:
-- Date       Programmer        Description
-- ---------  ----------------  ---------------------------------------------
-- 28-may-14  Mark J. Matson    APPSUPPORT-162
--                              Added attribute columns
-- ===========================================================================

WHENEVER SQLERROR CONTINUE;
  DROP TABLE apps.xxgms_cost_import;
WHENEVER SQLERROR EXIT 3;

CREATE TABLE apps.xxgms_cost_import (
  transaction_source         VARCHAR2(150)
, batch_name                 VARCHAR2(150)
, transaction_type           VARCHAR2(150)
, org_id                     NUMBER
, project_number             VARCHAR2(150)
, task_number                VARCHAR2(150)
, award_number               VARCHAR2(150)
, expenditure_ending_date    VARCHAR2(150)
, expenditure_item_date      VARCHAR2(150)
, department                 VARCHAR2(150)
, expenditure_type           VARCHAR2(150)
, quantity                   NUMBER
, transaction_reference      VARCHAR2(150)
, comments                   VARCHAR2(240)
, dr_ccid                    NUMBER
, cr_ccid                    NUMBER
, gl_date                    VARCHAR2(150)
, attribute1                 VARCHAR2(150)
, attribute2                 VARCHAR2(150)
, attribute3                 VARCHAR2(150)
, attribute4                 VARCHAR2(150)
, attribute5                 VARCHAR2(150)
, attribute6                 VARCHAR2(150)
, attribute7                 VARCHAR2(150)
, attribute8                 VARCHAR2(150)
, attribute9                 VARCHAR2(150)
, attribute10                VARCHAR2(150)
        )
;
