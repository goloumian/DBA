-- =============================================
-- Author:      Oshin Goloumian
-- Create date: 2020-02-21
-- Description: This query will help you to recognize that why your log file is increasing after taking log backup

SELECT 
name as Database_Name,
log_reuse_wait_desc as Log_Reuse_Wait_Desc
FROM sys.databases
WHERE state_desc= N'ONLINE'
