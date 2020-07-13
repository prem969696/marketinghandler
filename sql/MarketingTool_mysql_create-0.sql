CREATE TABLE `Users` (
	`id(pk)` bigint NOT NULL,
	`emailid` TEXT NOT NULL,
	`username` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`isverified` BOOLEAN NOT NULL,
	`roleid(fk)` bigint NOT NULL,
	`eventtime` TIME NOT NULL,
	`organizationID` bigint NOT NULL
);

CREATE TABLE `Roles` (
	`id(pk)` bigint NOT NULL,
	`rolename` TEXT NOT NULL,
	`eventime` TIME NOT NULL
);

CREATE TABLE `License` (
	`id(pk)` bigint NOT NULL,
	`licensetype` TEXT NOT NULL,
	`eventtime` TIME NOT NULL,
	`userslimit` bigint NOT NULL,
	`emaillimit` bigint NOT NULL,
	`smslimit` bigint NOT NULL
);

CREATE TABLE `userlicense` (
	`id(pk)` bigint NOT NULL,
	`useid(fk)` bigint NOT NULL,
	`licenseid(fk)` bigint NOT NULL,
	`eventime` TIME NOT NULL,
	`organizationid` bigint NOT NULL
);

CREATE TABLE `organization` (
	`id(pk)` bigint NOT NULL,
	`name` TEXT NOT NULL,
	`userid(fk)` bigint NOT NULL,
	`superviserid` bigint NOT NULL,
	`eventime` TIME NOT NULL
);

CREATE TABLE `Profile` (
	`id(pk)` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`photo` longblob NOT NULL
);

CREATE TABLE `userbalance` (
	`id(pk)` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`emailavailablecount` bigint NOT NULL,
	`smsavailablecount` bigint NOT NULL,
	`emailconsumedcount` bigint NOT NULL,
	`smsconsumedcount` bigint NOT NULL,
	`organizationid` bigint NOT NULL
);

CREATE TABLE `paymentdetails` (
	`id(pk)` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`tranasactionamount` bigint NOT NULL,
	`transactiontype` TEXT NOT NULL,
	`paymentstatus` TEXT NOT NULL,
	`eventtime` TIME NOT NULL,
	`licenseid` bigint NOT NULL,
	`pricingid` bigint NOT NULL
);

CREATE TABLE `pricing` (
	`id(pk)` bigint NOT NULL,
	`pricename` TEXT NOT NULL,
	`price` double NOT NULL,
	`licenseid` bigint NOT NULL,
	`eventtime` TIME NOT NULL
);

CREATE TABLE `Emailstatus` (
	`id(pk)` bigint NOT NULL,
	`emailssent` bigint NOT NULL,
	`emailsuccess` bigint NOT NULL,
	`emailfailed` bigint NOT NULL,
	`userid` bigint NOT NULL,
	`eventtime` TIME NOT NULL,
	`emailpending` bigint NOT NULL,
	`templateid` bigint NOT NULL
);

