-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2016 at 11:21 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rth`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `Addr_Id` varchar(5) NOT NULL,
  `Addr_Address1` varchar(50) DEFAULT NULL,
  `Addr_Address3` varchar(50) DEFAULT NULL,
  `Addr_Address2` varchar(50) DEFAULT NULL,
  `Addr_Permanent` varchar(50) DEFAULT NULL,
  `Addr_Active` varchar(10) DEFAULT NULL,
  `Addr_Street` varchar(10) DEFAULT NULL,
  `Addr_City` varchar(10) DEFAULT NULL,
  `Addr_Pin_Code` int(11) DEFAULT NULL,
  `Addr_Create_Date` date DEFAULT NULL,
  `Comp_Id` varchar(10) DEFAULT NULL,
  `Usr_Id` varchar(10) DEFAULT NULL,
  `Loc_Id` varchar(10) DEFAULT NULL,
  `Cntry_Id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `Alrt_Id` varchar(10) NOT NULL,
  `Alrt_Name` varchar(50) DEFAULT NULL,
  `Alrt_Type` varchar(10) DEFAULT NULL,
  `Alrt_Default` varchar(10) DEFAULT NULL,
  `Alrt_Severity` int(11) DEFAULT NULL,
  `Alrt_Urgency` int(11) DEFAULT NULL,
  `Alrt_Created_Dt` date DEFAULT NULL,
  `Alrt_SentDt` date DEFAULT NULL,
  `Alrt_Expery_Dt` date DEFAULT NULL,
  `Alrt_Status` varchar(10) DEFAULT NULL,
  `Alrt_Receiver_Id` varchar(10) DEFAULT NULL,
  `Alrt_Sender_Id` varchar(10) DEFAULT NULL,
  `Usr_Id` varchar(10) DEFAULT NULL,
  `Alrt_Create_Dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cmpnyjobpstng`
--

CREATE TABLE `tbl_cmpnyjobpstng` (
  `Job_Id` varchar(10) NOT NULL,
  `Comp_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `Comp_Id` varchar(10) NOT NULL,
  `Comp_Long_Name` varchar(50) DEFAULT NULL,
  `Comp_Short_Name` varchar(50) DEFAULT NULL,
  `Comp_Type` varchar(10) DEFAULT NULL,
  `Comp_IsGlobal` int(11) DEFAULT NULL,
  `Comp_Found_Date` date DEFAULT NULL,
  `Comp_Desc` varchar(10) DEFAULT NULL,
  `Comp_Size` varchar(10) DEFAULT NULL,
  `Comp_CMM_Level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `Cntry_Id` varchar(40) NOT NULL,
  `Country_Name` varchar(40) DEFAULT NULL,
  `Country_Short_Name` varchar(40) DEFAULT NULL,
  `Country_Description` varchar(40) DEFAULT NULL,
  `Creation_Dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `Cupn_Id` varchar(10) NOT NULL,
  `Cupn_Spl_Coupon` varchar(10) DEFAULT NULL,
  `Cupn_Name` varchar(20) DEFAULT NULL,
  `Cupn_Type` varchar(10) DEFAULT NULL,
  `Cupn_Category` varchar(10) DEFAULT NULL,
  `Cupn_Affiliate_to` varchar(10) DEFAULT NULL,
  `Cupn_Min_Prod_Value` int(11) DEFAULT NULL,
  `Cupn_Used_Times` int(11) DEFAULT NULL,
  `Cupn_Create_Dt` date DEFAULT NULL,
  `Cupn_Validity_Dt` date DEFAULT NULL,
  `Cupn_Expiry_Dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_domain`
--

CREATE TABLE `tbl_domain` (
  `Domn_Id` varchar(10) NOT NULL,
  `Domn_Name` varchar(50) DEFAULT NULL,
  `Domn_Create_Dr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education_detail`
--

CREATE TABLE `tbl_education_detail` (
  `Edu_Id` varchar(10) NOT NULL,
  `Edu_Field_of_Study` varchar(100) DEFAULT NULL,
  `Edu_Clge_Inst_Name` varchar(100) DEFAULT NULL,
  `Edu_Univeristy` varchar(100) DEFAULT NULL,
  `Edu_Marks` int(11) DEFAULT NULL,
  `Edu_Percent` int(11) DEFAULT NULL,
  `Edu_Proofs` varchar(50) DEFAULT NULL,
  `Edu_Acdmic_Strt_Dt` date DEFAULT NULL,
  `Edu_Acdmic_Cmplt_Dt` date DEFAULT NULL,
  `Edu_Education_Lvl` varchar(50) DEFAULT NULL,
  `Usr_Id` varchar(10) DEFAULT NULL,
  `Edu_Create_Dt` date DEFAULT NULL,
  `Edu_Degree_Type` varchar(50) DEFAULT NULL,
  `Edu_Other_Dtls` varchar(50) DEFAULT NULL,
  `Edu_Gap_Reasons` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `Exp_Id` varchar(10) NOT NULL,
  `Exp_DoJ` date DEFAULT NULL,
  `Exp_DoE` date DEFAULT NULL,
  `Current_Wrking` varchar(10) DEFAULT NULL,
  `Exp_Ovrl_Tot_Yrs` int(11) DEFAULT NULL,
  `Exp_Ovrl_Tot_Mnts` int(11) DEFAULT NULL,
  `Exp_Mode_Of_Emp` varchar(50) DEFAULT NULL,
  `Exp_Payroll_Cmpny` varchar(100) DEFAULT NULL,
  `Exp_CTC` double DEFAULT NULL,
  `Exp_ECTC` double DEFAULT NULL,
  `Exp_Currency` varchar(10) DEFAULT NULL,
  `Exp_Create_Dt` date DEFAULT NULL,
  `Usr_Id` varchar(10) NOT NULL,
  `Comp_Id` varchar(10) DEFAULT NULL,
  `Exp_Txt_Resume` varchar(200) DEFAULT NULL,
  `Exp_Gap_Reason` varchar(100) DEFAULT NULL,
  `Exp_Job_Title` varchar(50) DEFAULT NULL,
  `Exp_Main_RnR` varchar(50) DEFAULT NULL,
  `Exp_Lvng_Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobposting`
--

CREATE TABLE `tbl_jobposting` (
  `Job_Id` varchar(10) NOT NULL,
  `Job_Name` varchar(50) DEFAULT NULL,
  `Job_Primary_Skill` varchar(50) DEFAULT NULL,
  `Job_Secondary_Skill` varchar(20) DEFAULT NULL,
  `Job_Role` varchar(20) DEFAULT NULL,
  `Job_Designation` varchar(20) DEFAULT NULL,
  `Job_Mode_of_Emp` varchar(25) DEFAULT NULL,
  `Job_Description` varchar(50) DEFAULT NULL,
  `Job_Posting_Dt` date DEFAULT NULL,
  `Job_Closer_Dt` date DEFAULT NULL,
  `Job_Requireby_Dt` date DEFAULT NULL,
  `Job_Category` varchar(20) DEFAULT NULL,
  `Job_Urgency` varchar(50) DEFAULT NULL,
  `Job_Sal_Range` varchar(50) DEFAULT NULL,
  `Comp_Id` varchar(10) NOT NULL,
  `Job_Eligibility` varchar(50) DEFAULT NULL,
  `Loc_Id` varchar(10) DEFAULT NULL,
  `Job_Exp_Req_Frm` int(11) DEFAULT NULL,
  `Job_Exp_Req_To` int(11) DEFAULT NULL,
  `Job_Budget` int(11) DEFAULT NULL,
  `Job_Positions` int(11) DEFAULT NULL,
  `Job_Create_Dt` date DEFAULT NULL,
  `Job_Postedby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_submission`
--

CREATE TABLE `tbl_job_submission` (
  `Submission_Id` varchar(10) NOT NULL,
  `Submitted_By` varchar(50) DEFAULT NULL,
  `Job_Id` varchar(10) DEFAULT NULL,
  `Comp_Id` varchar(10) DEFAULT NULL,
  `Usr_Id` varchar(10) DEFAULT NULL,
  `Dt_of_Submission` date DEFAULT NULL,
  `Dt_of_Response` date DEFAULT NULL,
  `Dt_of_Followup` date DEFAULT NULL,
  `Dt_of_Close` date DEFAULT NULL,
  `Dt_of_Expiry` date DEFAULT NULL,
  `Create_Dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `Loc_Id` varchar(10) NOT NULL,
  `Loc_Name` varchar(50) DEFAULT NULL,
  `Loc_Create_Dt` date DEFAULT NULL,
  `Loc_Short_Name` varchar(100) DEFAULT NULL,
  `Loc_Long_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rolecapabilities`
--

CREATE TABLE `tbl_rolecapabilities` (
  `Rl_Capable_Id` varchar(10) NOT NULL,
  `Rl_CpblType` varchar(50) DEFAULT NULL,
  `Rl_Permission` varchar(50) DEFAULT NULL,
  `Rl_CmpntModule` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `Role_Id` varchar(10) NOT NULL,
  `Role_Name` varchar(50) DEFAULT NULL,
  `Role_Description` varchar(50) DEFAULT NULL,
  `Role_Created_Dt` date DEFAULT NULL,
  `Is_Admin` varchar(10) DEFAULT NULL,
  `Rl_Capable_Id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rth_membership`
--

CREATE TABLE `tbl_rth_membership` (
  `Mem_User_Id` varchar(10) NOT NULL,
  `Mem_Password` varchar(20) DEFAULT NULL,
  `Mem_Pwd_Format` varchar(20) DEFAULT NULL,
  `Mem_Mobile_PIN` varchar(20) DEFAULT NULL,
  `Mem_Pwd_Question` varchar(50) DEFAULT NULL,
  `Mem_Pwd_Answer` varchar(50) DEFAULT NULL,
  `Mem_IsApproved` varchar(10) DEFAULT NULL,
  `Mem_IsLocked_Out` varchar(10) DEFAULT NULL,
  `Mem_Create_Dt` date DEFAULT NULL,
  `Mem_LstLogin_Dt` date DEFAULT NULL,
  `Mem_LstPwd_Chnge_Dt` date DEFAULT NULL,
  `Mem_LstLockedOut_Dt` date DEFAULT NULL,
  `Mem_Passport_PIN` varchar(10) DEFAULT NULL,
  `Mem_PAN_PIN` varchar(10) DEFAULT NULL,
  `Usr_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skills_master`
--

CREATE TABLE `tbl_skills_master` (
  `Skl_Id` varchar(10) NOT NULL,
  `Skl_Name` varchar(50) DEFAULT NULL,
  `Skl_Description` varchar(50) DEFAULT NULL,
  `Skl_Short_Name` varchar(50) DEFAULT NULL,
  `Skl_Create_Dt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `Usr_Id` varchar(10) NOT NULL,
  `Usr_Is_Anonymous` varchar(10) DEFAULT NULL,
  `Usr_First_Name` varchar(50) DEFAULT NULL,
  `Usr_Mid_Name` varchar(50) DEFAULT NULL,
  `Usr_Lst_Name` varchar(50) DEFAULT NULL,
  `Usr_Primary_Email` varchar(100) DEFAULT NULL,
  `Usr_Alt_Email` varchar(100) DEFAULT NULL,
  `Usr_Primary_Cnct_Nmbr` varchar(12) DEFAULT NULL,
  `Usr_Secondary_Cnct_Nmbr` varchar(12) DEFAULT NULL,
  `Usr_Type` varchar(50) DEFAULT NULL,
  `Usr_Category` varchar(50) DEFAULT NULL,
  `Usr_DOB` date DEFAULT NULL,
  `Usr_Create_Dt` date DEFAULT NULL,
  `Cupn_Id` varchar(10) DEFAULT NULL,
  `Usr_Maritial_Stutus` varchar(20) DEFAULT NULL,
  `Usr_Gender` varchar(10) DEFAULT NULL,
  `Usr_Image` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userrole`
--

CREATE TABLE `tbl_userrole` (
  `Usr_Id` varchar(10) NOT NULL,
  `Role_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usrtechskill_level`
--

CREATE TABLE `tbl_usrtechskill_level` (
  `UsrTckSkill_Id` varchar(10) NOT NULL,
  `UsrSkill_Proficiency` varchar(50) DEFAULT NULL,
  `UsrSkill_Experience` varchar(50) DEFAULT NULL,
  `UsrSkill_Lst_Used` varchar(50) DEFAULT NULL,
  `UsrSkill_Interest` varchar(50) DEFAULT NULL,
  `UsrSkill_Create_Dt` date DEFAULT NULL,
  `Skl_Id` varchar(10) NOT NULL,
  `Usr_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `Vendor_Id` varchar(10) NOT NULL,
  `Vndr_Short_Name` varchar(50) DEFAULT NULL,
  `Vndr_Type` varchar(10) DEFAULT NULL,
  `Vndr_Product` varchar(20) DEFAULT NULL,
  `Vndr_Long_Name` varchar(50) DEFAULT NULL,
  `Domn_Id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendorcoupon`
--

CREATE TABLE `tbl_vendorcoupon` (
  `Vendor_Id` varchar(10) NOT NULL,
  `Cupn_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`Addr_Id`),
  ADD KEY `R_19` (`Usr_Id`),
  ADD KEY `R_20` (`Comp_Id`),
  ADD KEY `R_31` (`Loc_Id`),
  ADD KEY `R_33` (`Cntry_Id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`Alrt_Id`),
  ADD KEY `R_17` (`Usr_Id`);

--
-- Indexes for table `tbl_cmpnyjobpstng`
--
ALTER TABLE `tbl_cmpnyjobpstng`
  ADD PRIMARY KEY (`Job_Id`,`Comp_Id`),
  ADD KEY `R_7` (`Comp_Id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`Comp_Id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`Cntry_Id`);

--
-- Indexes for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`Cupn_Id`);

--
-- Indexes for table `tbl_domain`
--
ALTER TABLE `tbl_domain`
  ADD PRIMARY KEY (`Domn_Id`);

--
-- Indexes for table `tbl_education_detail`
--
ALTER TABLE `tbl_education_detail`
  ADD PRIMARY KEY (`Edu_Id`),
  ADD KEY `R_34` (`Usr_Id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`Exp_Id`,`Usr_Id`),
  ADD KEY `R_11` (`Usr_Id`),
  ADD KEY `R_13` (`Comp_Id`);

--
-- Indexes for table `tbl_jobposting`
--
ALTER TABLE `tbl_jobposting`
  ADD PRIMARY KEY (`Job_Id`,`Comp_Id`),
  ADD KEY `R_15` (`Comp_Id`),
  ADD KEY `R_32` (`Loc_Id`);

--
-- Indexes for table `tbl_job_submission`
--
ALTER TABLE `tbl_job_submission`
  ADD PRIMARY KEY (`Submission_Id`),
  ADD KEY `R_25` (`Job_Id`,`Comp_Id`),
  ADD KEY `R_26` (`Usr_Id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`Loc_Id`);

--
-- Indexes for table `tbl_rolecapabilities`
--
ALTER TABLE `tbl_rolecapabilities`
  ADD PRIMARY KEY (`Rl_Capable_Id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`Role_Id`),
  ADD KEY `R_30` (`Rl_Capable_Id`);

--
-- Indexes for table `tbl_rth_membership`
--
ALTER TABLE `tbl_rth_membership`
  ADD PRIMARY KEY (`Usr_Id`,`Mem_User_Id`);

--
-- Indexes for table `tbl_skills_master`
--
ALTER TABLE `tbl_skills_master`
  ADD PRIMARY KEY (`Skl_Id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`Usr_Id`),
  ADD KEY `R_10` (`Cupn_Id`);

--
-- Indexes for table `tbl_userrole`
--
ALTER TABLE `tbl_userrole`
  ADD PRIMARY KEY (`Usr_Id`,`Role_Id`),
  ADD KEY `R_29` (`Role_Id`);

--
-- Indexes for table `tbl_usrtechskill_level`
--
ALTER TABLE `tbl_usrtechskill_level`
  ADD PRIMARY KEY (`UsrTckSkill_Id`,`Skl_Id`,`Usr_Id`),
  ADD KEY `R_36` (`Skl_Id`),
  ADD KEY `R_37` (`Usr_Id`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`Vendor_Id`),
  ADD KEY `R_18` (`Domn_Id`);

--
-- Indexes for table `tbl_vendorcoupon`
--
ALTER TABLE `tbl_vendorcoupon`
  ADD PRIMARY KEY (`Vendor_Id`,`Cupn_Id`),
  ADD KEY `R_9` (`Cupn_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD CONSTRAINT `R_19` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_20` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_31` FOREIGN KEY (`Loc_Id`) REFERENCES `tbl_location` (`Loc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_33` FOREIGN KEY (`Cntry_Id`) REFERENCES `tbl_country` (`Cntry_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD CONSTRAINT `R_17` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_cmpnyjobpstng`
--
ALTER TABLE `tbl_cmpnyjobpstng`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`Job_Id`,`Comp_Id`) REFERENCES `tbl_jobposting` (`Job_Id`, `Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_7` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_education_detail`
--
ALTER TABLE `tbl_education_detail`
  ADD CONSTRAINT `R_34` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD CONSTRAINT `R_11` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_13` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_jobposting`
--
ALTER TABLE `tbl_jobposting`
  ADD CONSTRAINT `R_15` FOREIGN KEY (`Comp_Id`) REFERENCES `tbl_company` (`Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_32` FOREIGN KEY (`Loc_Id`) REFERENCES `tbl_location` (`Loc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_job_submission`
--
ALTER TABLE `tbl_job_submission`
  ADD CONSTRAINT `R_25` FOREIGN KEY (`Job_Id`,`Comp_Id`) REFERENCES `tbl_jobposting` (`Job_Id`, `Comp_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_26` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD CONSTRAINT `R_30` FOREIGN KEY (`Rl_Capable_Id`) REFERENCES `tbl_rolecapabilities` (`Rl_Capable_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_rth_membership`
--
ALTER TABLE `tbl_rth_membership`
  ADD CONSTRAINT `R_27` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `R_10` FOREIGN KEY (`Cupn_Id`) REFERENCES `tbl_coupons` (`Cupn_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_userrole`
--
ALTER TABLE `tbl_userrole`
  ADD CONSTRAINT `R_28` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_29` FOREIGN KEY (`Role_Id`) REFERENCES `tbl_roles` (`Role_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_usrtechskill_level`
--
ALTER TABLE `tbl_usrtechskill_level`
  ADD CONSTRAINT `R_36` FOREIGN KEY (`Skl_Id`) REFERENCES `tbl_skills_master` (`Skl_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_37` FOREIGN KEY (`Usr_Id`) REFERENCES `tbl_user` (`Usr_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD CONSTRAINT `R_18` FOREIGN KEY (`Domn_Id`) REFERENCES `tbl_domain` (`Domn_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_vendorcoupon`
--
ALTER TABLE `tbl_vendorcoupon`
  ADD CONSTRAINT `R_8` FOREIGN KEY (`Vendor_Id`) REFERENCES `tbl_vendor` (`Vendor_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `R_9` FOREIGN KEY (`Cupn_Id`) REFERENCES `tbl_coupons` (`Cupn_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
