/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
delete from interests;
delete from customer;
delete from sales;
delete from record;

insert into interests (interestCode, interestDescription) values
('RR', 'Rock and Roll'),
('JA', 'Jazz'),
('RB', 'Rhythm and Blues');

insert into customer (customerNumber, name, address, postcode, interestCode) values
(123, 'Jimmy Barnes', '1 Sesame Street', 3000, 'RR'),
(456, 'Ian Moss', '10 Downing Street', 4000, 'JA'),
(789, 'Don Walker', '221B Baker Street', 5000, 'RB'),
(234, 'Steve Prestwich', 'LG1 College Cres, Parkville', 6000, 'RR'),
(567, 'Phil Small', '1 Adelaide Avenue', 7000, 'RB');

insert into record (recordID, title, performer) values
('PF003', 'The Wall', 'Pink Floyd'),
('IX002', 'Kick', 'INXS'),
('SP069', 'Never Mind the Bollocks', 'Sex Pistols'),
('PF002', 'The Dark Side of the Moon', 'Pink Floyd'),
('IX005', 'Moon', 'INXS'),
('SP070', 'Shabooh Shoobah', 'Sex Pistols'),
('PF004', 'The Endless River', 'Pink Floyd'),
('PF006', 'Wish You Were Here', 'Pink Floyd'),
('SP075', 'Agents of Anarchy', 'Sex Pistols'),
('PF007', 'The Division Bell', 'Pink Floyd');

insert into sales (dateOrdered, price, recordID, customerNumber, interestCode) values
('1-Dec-2015', 30.00, 'PF003', 123, 'RR'),
('1-Dec-2015', 29.95, 'IX002', 123, 'RR'),
('2-Dec-2015', 12.45, 'SP069', 123, 'RR'),
('5-Dec-2015', 30.00, 'IX002', 123, 'RR'),
('1-Dec-2015', 31.00, 'PF002', 456, 'JA'),
('3-Dec-2015', 28.95, 'IX005', 456, 'JA'),
('6-Dec-2015', 13.45, 'SP070', 456, 'JA'),
('2-Dec-2015', 29.00, 'PF004', 789, 'RB'),
('5-Dec-2015', 29.95, 'IX002', 789, 'RB'),
('1-Dec-2015', 45.00, 'PF006', 234, 'RR'),
('4-Dec-2015', 5.67, 'SP075', 234, 'RR'),
('3-Dec-2015', 9.95, 'PF007', 567, 'RB');  