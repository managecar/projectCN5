-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/*ACCOUNT*/
CREATE PROCEDURE LoginApp(@username as nvarchar(50), @password as nvarchar(50))
AS
BEGIN
	select Role from tblAccount where Username = @username and Password = @password
END
GO
/***********************************************************/

CREATE PROCEDURE SearchAccount(@fullname as nvarchar(50))
AS
BEGIN
	select Username, Fullname, Address, Email, Phone, Birthday, Role from tblAccount where Fullname like @fullname
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateAccount(@Username  as nvarchar(50), @Password as nvarchar(50), @Fullname  as nvarchar(50), @Address as nvarchar(50),
 @Email  as nvarchar(50), @Phone  as nvarchar(50), @Birthday  as nvarchar(50), @Role  as nvarchar(50))
AS
BEGIN
	update tblAccount set Password = @Password, Fullname = @Fullname, Address = @Address,  Email = @Email,
	 Phone = @Phone, Birthday = @Birthday, Role = @Role where Username = @username
END
GO
/***********************************************************/

CREATE PROCEDURE AddAccount(@Username  as nvarchar(50), @Password as nvarchar(50), @Fullname  as nvarchar(50), @Address as nvarchar(50),
 @Email  as nvarchar(50), @Phone  as nvarchar(50), @Birthday  as nvarchar(50), @Role  as nvarchar(50))
AS
BEGIN
	insert into tblAccount(Username,Password,Fullname,Address,Email,Phone,Birthday,Role) values(@username,@Password,@Fullname,@Address,@Email,
	@Phone,@Birthday,@Role)
END
GO
/***********************************************************/


/*CUSTOMER*/
CREATE PROCEDURE AddCustomer(@Fullname  as nvarchar(50), @Address as nvarchar(50),
 @Phone  as nvarchar(50), @Birthday  as nvarchar(50))
AS
BEGIN
	insert into tblCustomer(Fullname,Address,Phone,Birthday) values(@Fullname,@Address,
	@Phone,@Birthday)
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateCustomer(@ID as int, @Fullname  as nvarchar(50), @Address as nvarchar(50),
 @Phone  as nvarchar(50), @Birthday  as nvarchar(50))
AS
BEGIN
	update tblCustomer set Fullname = @Fullname, Address = @Address,
	 Phone = @Phone, Birthday = @Birthday where ID = @ID
END
GO
/***********************************************************/

CREATE PROCEDURE SearchCustomer(@Phone  as nvarchar(50))
AS
BEGIN
	select ID,Fullname,Address,Phone,Birthday from tblCustomer where Phone = @Phone
END
GO
/***********************************************************/


/*BRAND*/
CREATE PROCEDURE SearchBrand(@BrandName as nvarchar(50))
AS
BEGIN
	select BrandID,BrandName,DateContact,Email,Address,Phone,Note from tblBrand where BrandName like @BrandName
END
GO
/***********************************************************/

CREATE PROCEDURE AddBrand(@BrandID  as nvarchar(50), @BrandName as nvarchar(50), @DateContact as nvarchar(50),  @Email as nvarchar(50),
 @Address  as nvarchar(50), @Phone  as nvarchar(50), @Note  as nvarchar(MAX))
AS
BEGIN
	insert into tblBrand(BrandID,BrandName,DateContact,Email,Address,Phone,Note) values(@BrandID,@BrandName,@DateContact,@Email,@Address,
	@Phone,@Note)
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateBrand(@BrandID  as nvarchar(50), @BrandName as nvarchar(50), @DateContact as nvarchar(50),  @Email as nvarchar(50),
 @Address  as nvarchar(50), @Phone  as nvarchar(50), @Note  as nvarchar(MAX))
AS
BEGIN
	update tblBrand set BrandName=@BrandName,DateContact=@DateContact,Email=@Email,Address=@Address,Phone=@Phone,Note=@Note
	where BrandID=@BrandID
END
GO
/***********************************************************/

/*CREATE PROCEDURE ChangeSupply(@BrandID  as nvarchar(50), @isSupplying as bit)
AS
BEGIN
	update tblBrand set isSupplying=@isSupplying where BrandID=@BrandID
END
GO*/
/***********************************************************/


/*CAR*/
CREATE PROCEDURE SearchCar(@Search as nvarchar(50))
AS
BEGIN
	select CarID,Model,Price,Description,tblBrand.BrandName,Date,ImportID from tblCar,tblBrand 
	where (Model like @Search or BrandName like @Search) and tblCar.BrandID = tblBrand.BrandID and isSold = 'False'
END
GO
/***********************************************************/

/*CREATE PROCEDURE SearchCarBrand(@Brand as nvarchar(50))
AS
BEGIN
	select CarID,Model,Price,Description,tblBrand.BrandName,Date,ImportID from tblCar,tblBrand where tblBrand.BrandID = tblCar.BrandID and tblBrand.BrandName like @Brand and isSold = 'False'
END
GO*/
/***********************************************************/

CREATE PROCEDURE SearchCarManager(@Search as nvarchar(50))
AS
BEGIN
	select CarID,Model,Price,Description,tblBrand.BrandName,Date,ImportID,isSold from tblCar,tblBrand
	 where tblBrand.BrandID = tblCar.BrandID and (Model like @Search or BrandName like @Search)
END
GO
/***********************************************************/

CREATE PROCEDURE AddCar(@CarID as nvarchar(50), @Model as nvarchar(50), @Price as float, @Description as nvarchar(MAX), @BrandID as nvarchar(50),
@Date as nvarchar(50), @ImportID as int)
AS
BEGIN
	insert into tblCar(CarID,Model,Price,Description,BrandID,isSold,Date,ImportID) values(@CarID,@Model,@Price,@Description,@BrandID,'False',@Date,@ImportID)
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateCar(@CarID as nvarchar(50), @Model as nvarchar(50), @Price as float, @Description as nvarchar(MAX), @BrandID as nvarchar(50),
@Date as nvarchar(50), @ImportID as int)
AS
BEGIN
	update tblCar set CarID=@CarID,Model=@Model,Price=@Price,Description=@Description,BrandID=@BrandID,Date=@Date,ImportID=@ImportID
END
GO
/***********************************************************/

CREATE PROCEDURE SellCar(@CarID as nvarchar(50))
AS
BEGIN
	update tblCar set isSold = 'True' where CarID = @CarID
END
GO
/***********************************************************/


/*IMPORT*/
CREATE PROCEDURE SearchImport(@ID as int)
AS
BEGIN
	select ImportID,Date,Quantity,Note from tblImport where ImportID = @ID
END
GO
/***********************************************************/

CREATE PROCEDURE AddImport(@Date as nvarchar(50),@Quantity as int, @Note as nvarchar(MAX))
AS
BEGIN
	insert into tblImport(Date,Quantity,Note) values(@Date,@Quantity,@Note)
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateImport(@Date as nvarchar(50),@Quantity as int, @Note as nvarchar(MAX))
AS
BEGIN
	update tblImport set Date = @Date, Quantity = @Quantity, Note = @Note
END
GO
/***********************************************************/


/*EXPORT*/
CREATE PROCEDURE SearchExport(@ID as int)
AS
BEGIN
	select ExportID,Note,Date,Price,ID,IDCar,Username from tblExport where ExportID = @ID
END
GO
/***********************************************************/

CREATE PROCEDURE AddExport(@ID as int, @Date as nvarchar(50),@Price as float, @Notes as nvarchar(MAX), @IDCar as nvarchar(50), @Username as nvarchar(50))
AS
BEGIN
	insert into tblExport(Date,Note,Price,IDCar,ID,Username) values(@Date,@Notes,@Price,@IDCar,@ID,@Username)
END
GO
/***********************************************************/

CREATE PROCEDURE UpdateExport(@ID as int, @Date as nvarchar(50),@Price as float, @Notes as nvarchar(MAX), @IDCar as nvarchar(50), @Username as nvarchar(50))
AS
BEGIN
	update tblExport set Date = @Date, Note = @Notes, Price = @Price, IDCar = @IDCar, ID = @ID, Username = @Username
END
GO
/***********************************************************/
