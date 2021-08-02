-- =============================================
-- Author:      Oshin Goloumian
-- Create date: 2020-01-24
-- Description: Check Database File Usage on Disk
-- =============================================

SELECT 
file_id
,name,physical_name
,(size / 128.0) as FileSize_MB
,(FILEPROPERTY(name,'SPACEUSED') / 128.0) as UsedSpace_MB
FROM sys.database_files

