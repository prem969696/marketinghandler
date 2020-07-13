CREATE TABLE `SMSgroup` (
	`id(pk)` bigint NOT NULL,
	`groupname` TEXT NOT NULL,
	`csvname` TEXT NOT NULL,
	`smscount` bigint NOT NULL,
	`isvalidated` BOOLEAN NOT NULL,
	`userid` bigint NOT NULL,
	`eventime` TIME NOT NULL,
	`Assigneeename` bigint NOT NULL
);

CREATE TABLE `bouncedemails` (
	`id(pk)` bigint NOT NULL,
	`emailid` TEXT NOT NULL,
	`status` BOOLEAN NOT NULL,
	`csvname` TEXT NOT NULL,
	`userid` bigint NOT NULL
);

CREATE TABLE `emailist` (
	`id(pk)` bigint NOT NULL,
	`emailid` TEXT NOT NULL,
	`emailgroupid` bigint NOT NULL,
	`csvname` TEXT NOT NULL,
	`userid` bigint NOT NULL,
	`eventime` TIME NOT NULL
);

CREATE TABLE `smslist` (
	`id(pk)` bigint NOT NULL,
	`phonenumber` TIME NOT NULL,
	`smsgroupid` bigint NOT NULL,
	`csvname` TEXT NOT NULL,
	`userid` bigint NOT NULL,
	`eventtime` TIME NOT NULL
);

CREATE TABLE `SMSstatus` (
	`id(pk)` bigint NOT NULL,
	`smssent` bigint NOT NULL,
	`smssuccess` bigint NOT NULL,
	`smsfailed` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`smspending` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`eventime` TIME NOT NULL,
	`templateid` bigint NOT NULL
);

CREATE TABLE `Emailgroup` (
	`id(pk)` bigint NOT NULL,
	`groupname` TEXT NOT NULL,
	`csvname` TEXT NOT NULL,
	`emailcount` bigint NOT NULL,
	`isvalidated` BOOLEAN NOT NULL,
	`eventime` TIME NOT NULL,
	`userid` bigint NOT NULL,
	`Assignename` bigint NOT NULL
);

CREATE TABLE `tickets` (
	`id(pk)` bigint NOT NULL,
	`fromuser` bigint NOT NULL,
	`touser` bigint NOT NULL,
	`content` TEXT NOT NULL,
	`status` BOOLEAN NOT NULL,
	`eventtime` TIME NOT NULL,
	`ticketuniqueid` bigint NOT NULL,
	`contentorder` bigint NOT NULL,
	`organizationid` bigint NOT NULL
);

CREATE TABLE `Emailtemplate` (
	`id(pk)` bigint NOT NULL,
	`templatename` TEXT NOT NULL,
	`content` TEXT NOT NULL,
	`eventtime` TIME NOT NULL,
	`userid` bigint NOT NULL,
	`organizationid` bigint NOT NULL
);

CREATE TABLE `smstemplate` (
	`id(pk)` bigint NOT NULL,
	`templatename` TEXT NOT NULL,
	`content` TEXT NOT NULL,
	`userid` bigint NOT NULL,
	`eventtime` bigint NOT NULL,
	`organizationid` bigint NOT NULL
);

CREATE TABLE `UserActions` (
	`id` bigint NOT NULL,
	`actiontype` TEXT NOT NULL,
	`emailorsmsID` bigint NOT NULL,
	`templateID` bigint NOT NULL,
	`status` TEXT NOT NULL,
	`userID` bigint NOT NULL,
	`organizationID` bigint NOT NULL
);

