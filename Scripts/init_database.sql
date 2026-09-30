/*
======================================

CREATE DATA BASE AND SCHEMAS

======================================
script Purpose :
	This script creates a new database named 'DataWareHouse' after checking if it already exists.
	If the database exists, it is droped and regenerated. Additionally, the script sets up three schemas
	within the database : 'bronze', 'silver', and 'gold' .

WARNING:
	Running this script will drop the entire 'DataWareHouse' database if exists
	All data in the database will be permanently deleted. Proccced with caution
	and ensure you have proper backups running this script.
*/

-- Create Database 'Data WareHouse '

USE master;

-- Drop and recreate the 'Data WareHouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name ='DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse
END;

GO
-- CREATE 'DataWareHouse' database

CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;

