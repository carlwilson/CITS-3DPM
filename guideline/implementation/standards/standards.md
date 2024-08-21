# 4 Implementation

<a name="Section4.1"><a/>

## 4.1 Standards

<a name="Section4.1.1"><a/>

### 4.1.1 LOTAR
LOTAR is a standard for the long term archiving and retrieval of digital technical product documentation such as 3D, Computer Aided Design (CAD) and Product Digital Model (PDM) data. 

In common with E-ARK, LOTAR references and extends OAIS, but there is a different but complementary focus within the standard and the specifications. Firstly, E-ARK is concerned with the Information Packages described in OAIS (SIP, AIP, DIP), refining their definition such as to:

1.	Establish a common understanding of the requirements which need to be met in order to achieve interoperability of Information Packages;
2.	Establish a common base for the development of more specific Information Package definitions and tools within the digital preservation community;
3.	Propose the details of an XML-based implementation of the requirements using, to the largest possible extent, standards which are widely used in international digital preservation.

E-ARK is not prescriptive on process and encompasses multiple use cases for submission of content to an archive, which can be involve multiple different entities or organisations. For example E-ARK can envisage situations where SIPs are created at a Producer or at an Archive. 

Secondly, LOTAR is not concerned with package structure but with the data content of the packages and with the main phases of archiving as described by OAIS: data preparation, ingest, archival atorage, access and retrieval. It does not consider interoperability, as the Archives considered will typically be owned and managed by the data owners. 

LOTAR extends OAIS with detailed process views, which provide normative descriptions of key aspects of the process, together with extended descriptions of roles and responsibilities. The process views identify any data format conversions required, the preparation of Validation information and the execution of Validation and Verification tests. These process views have the objective of establishing a certifiable process for archiving.

<a name="Section4.1.2"><a/>

### 4.1.2 PREMIS
From the EARK PREMIS Content Information Type Specification (CITS):

“When using preservation metadata together with the Common Specification for Information Packages (CSIP) (http://earkcsip.dilcis.eu), it is recommended that these are included in the information package in PREMIS format. Although this is not mandatory, all tools claiming to be able to validate CSIP compliant Information Packages must also be able to validate PREMIS metadata once it exists within the package”. The two high-level requirements for the use of PREMIS in Common Specification IPs are that:

*	All preservation metadata is created according to official PREMIS guidelines;
*	All PREMIS metadata is referenced from the amdSec/digiprovMD element of the appropriate METS file.

Further, to enhance the interoperability of the CSIP and to strengthen the management of information packages (IPs) in an archive, this specification imposes additional requirements regarding the use of PREMIS for describing IPs. The principles adopted in the CSIP for deciding which additional PREMIS semantic units are required are:

*	PREMIS should be used to record detailed technical metadata;
*	Technical information should be included in PREMIS metadata by using extension schemas;
*	Information about agents carrying out preservation actions must be recorded in the PREMIS metadata (this is because the METS agents describe agents relevant for generic IP level events, such as the creation or submission of the package, not the preservation of the data);
*	Event descriptions should be included in PREMIS metadata. Use of the official PREMIS event vocabulary (https://id.loc.gov/vocabulary/preservation/eventType.html) is recommended (note that more elaborate descriptions can be made than are made in this CITS);
*	Detailed rights information should be included in PREMIS. High-level rights information in METS indicates restrictions. Detailed, object-specific rights information will be included in the PREMIS metadata;
*	File format information for all files should be included as Persistent Unique Identifier (PUID) values in the appropriate PREMIS semantic units.

PREMIS is one way to record Preservation Description Information for an information package (the other being METS) and specifically for LOTAR, the following preservation actions need to be recorded:

1.	Engineering (Digital) Signatures
2.	Engineering (Digital) Signature events 
3.	Validation events 
4.	Verification events

The use of PREMIS within the 3D PM CITS requires that information packages also conform to the CITS PREMIS (use of PREMIS is not mandatory within CSIP but if used there are a number of MUST and SHOULD requirements. So, the following PREMIS semantic units SHOULD be included:

1.	Checksums
2.	File format
3.	Relationship (if IP is part of another IP)
4.	Event identifier
5.	Link to agent/object
6.	Migration event type
7.	PREMIS agent
8.	PREMIS rights

<a name="Section4.1.3"><a/>

### 4.1.3 METS
The main requirement for METS files in a CSIP Information Package is that these need to follow the official METS Schema version 1.12 http://www.loc.gov/standards/mets/mets-schemadocs.html (used by CSIP version 2.1) and the extension schema developed for the CSIP and published by the DILCIS Board. As new versions of METS Schema become available the DILCIS Board will evaluate these and, if necessary, update the CSIP.

The METS specification requires a METS profile document which describes the use of METS and the METS elements. All the requirements described in this specification are also expressed with METS profiles for the CITS 3D PM root and representation METS which can be found at: CSIP https://github.com/DILCISBoard/E-ARK-CSIP/tree/master/profile.

CSIP specifies that METS files be located at the root of the package folder structure (root METS) and optionally in each of the Representations within its respective root folder (representation METS). CITS 3D PM has a requirement to contain at least one Representation and so will contain at minimum a root METS and a representation METS file. 

<a name="Section4.2"><a/>

## 4.2 Information Packages
The E-ARK SIP specification states that: “According to the Open Archival Information System Reference Model (OAIS) every submission of information to an archive occurs as one or more discrete transmissions of Submission Information Packages (SIPs).”

The OAIS Reference Model does not specify the format, structure or contents of these information packages. The EU funded E-ARK project (2014-2017) first acknowledged this problem and started to develop a solution in the form of an information package specification. This specification is now part of a set of specifications managed by an independent body named the Digital Information LifeCycle Interoperability Standards Board (DILCIS Board).

According to LOTAR: [^1] “The formats of the packages are defined in a Submission Agreement between the producer and the archive.” In the case of building E-ARK and LOTAR compliant information packages, the Submission Agreement will reference the E-ARK Common Specification for Information Packages, the specification for Submission Information Packages (SIP), the specification for Archival Information Packages (AIP), the specification for Dissemniation Information Packages (DIP) and the Content Information Type Specification for 3D Product Data (CITS 3D PM). 

LOTAR defines the minimum content for information packages and the processes for creating them, definitions for the LOTAR terms can be found in the glossary and descriptions of the involved data below.

**SIP Contents**
*	Content Information (CI)
*	Preservation Description Information (PDI) 
*	Description Information (DI) 
*	Packaging Information (PI) 

**AIP Contents**
*	Content Information (CI)
*	Preservation Description Information (PDI)
*	Packaging Information (PI)
*	Digital Signature Information
  
**DIP Contents**
*	Content Information (CI) – which can be from more than one AIP
*	Packaging Information (PI)

The following are descriptions taken from LOTAR regarding the involved entities in Information Packages. 3D PM CITS describes how these entities can be represented in E-ARK Information Packages.

**Content Information (CI)**:
Content Information includes the set of information that is the original target of preservation (and includes different Representations of that data).

**Description Information (DI)**:
The set of information consisting primarily of Package Descriptions (Descriptive Metadata) which is provided to a data management function in the repository (and in the case of CSIP included in Information Packages) to support the finding, ordering and retrieving by consumers of archived information holdings. Descriptive Information can be extended with storage information and with reference information for the Product Model. (storage information is not included in E-ARK packages but as this is an extension of Descriptive Information that is passed to the repository, this is not an issue).

Descriptive Information includes archive metadata meeting the standards for the specific archive (according to ISO 14721:2003 – OAIS). The descriptive information also includes a reference to the data Verification results report. For E-ARK this should be more correctly included in preservation metadata (METS or PREMIS) but can also be included in Descriptive Information for compliance purposes.

**Preservation Description Information (PDI)**:
PDI is information which is necessary to preserve the interpretation of the Content Information and which can be categorized as Provenance, Reference, Fixity, and Context information.

According to OAIS, the four categories can briefly be described as follows:

*	Provenance describes the source of the Content Information, who has had custody of it since its origin, and its history (including processing history);
*	Context describes how the Content Information relates to other information outside the Information Package. For example, it would describe why the Content Information was produced, and it may include a description of how it relates to another Content Information object that is available in the archive;
*	Reference provides one or more identifiers, or systems of identifiers, by which the Content Information may be uniquely identified; 
*	Fixity provides a wrapper, or protective shield, that protects the Content Information from undocumented alteration. For example, it may involve a checksum over the Content Information of a digital Information Package.

Within LOTAR PDI also includes Validation and Verification information including: Validation Properties/reports and Verification reports. 

**Packaging Information (PI)**:
Administrative data needed for archive data management. Packaging information is that information used to bind and identify the components of an Information Package. - information which, either actually or logically, binds, identifies and relates the CI and PDI.

**Engineering (Digital) Signature**:
In the context of the LOTAR, a Digital Signature shall be[^2]:

*	uniquely linked to the signatory;
*	capable of identifying the signatory;
*	created using means that the signatory can maintain:
*	under their sole control.
*	linked to the data to which it relates in such a manner that:
*	any subsequent change of the data is detectable.

An Engineering Sgnature is a special type of Digital Signature that expresses and fixes a volition of the signatory. It gives evidence of[^3]: 

*	the process of testifying quality of data against process / quality requirements by linking the signature owner to the data; 
*	the identity of the signatory by usage of appropriate methods of authentication;
*	the integrity of the data by using appropriate methods protecting the signed object against unauthorized changes.

The Engineering Signature is created individually for each document and is used within LOTAR  for the authentication of the data ready for archiving and stoage. An Engineering Signature includes[^4]:

*	owner name; 
*	public key from owner and certification company;
*	signature owner name and key; 
*	information about algorithm for use of the public key; 
*	start and end time of the certificate; 
*	identification number of the certificate; 

The Digital Signature is used to ensure that: 

*	the document file is an exact copy of the stored original; 
*	the document is approved by the originating company;
*	with digital engineering signatures; the document is approved by the given approver;

This process provides evidential weight for legal proceedings.

<a name="Section4.3"><a/>

## 4.3 Package Structure
The CITS 3D Product Model information structure inherits its package structure from the E-ARK Common Specification for Information Packages and is shown in ([Figure 4](#fig4)). It can be seen that additional folders have been added for authentication documentation at root and representation level but otherwise the structure is identical. 

<a name="fig4"></a>
![Example Information Package Folder Structure](/specification/figs/fig_4_package_structure.svg "Example Information Package Folder Structure")

**Figure 4:** Example Information Package Folder Structure

A 3D Product Model Information package can consist of one to many Representations comprising Product Information Models of the same product. It is likely for example that a Product Model archival package will at minimum contain a Representation in Native Format and one in Standardised Open Format (e.g. STEP). As described in LOTAR, long-term usability of proprietary Native Format data is a risk and  conversely open derivations such as STEP are at risk of losing some properties from the original.

LOTAR requires the inclusion of information to support Validation and Verification of the data and representations, including:
+	Validation Properties Rules Data
+	Validation Properties
+	Validation reports
+	Data Quality Rules (Verification)
+	Verification reports

<a name="Section4.4"><a/>

## 4.4 Descriptive Metadata
According to LOTAR[^5]: “The producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).”

Neither CSIP or LOTAR prescribe specific schemas for Descriptive Information and so this is left to be determined by the user organisation. CSIP states that this should be according to a standardised schema and EAD is generally recommended. 

LOTAR also states: “ descriptive information should include a reference to data Verification report(s)” and as the data Verification process is conducted for each Representation, according to CSIP rules this Descriptive Metadata should be held at Representation level. In addition, although LOTAR asks only for a reference to the Verification report, it is good archival practice to also include the reports,  together with the criteria for data quality (Data Quality Rules). 

If a standardised metadata schema is used at Representation level then a suitable location for the reference will need to be found in the chosen schema (for example EAD), or provided in a schema extension and this location specified in the Submission Agreement. Extensions to standardised metadata schemas should also be included in the package Schemas folder.

<a name="Section4.5"><a/>

## 4.5 Preservation Metadata
LOTAR requires that Information Packages include Preservation Description Information (PDI) which in turn comprises information related to:

*	Provenance
*	Reference
*	Fixity
*	Context

According to the CITS PREMIS: “When using preservation metadata together with the Common Specification for Information Packages (CSIP) (http://earkcsip.dilcis.eu), it is recommended that these are included in the Information Package in PREMIS format. Although this is not mandatory, all tools claiming to be able to validate CSIP compliant Information Packages must also be able to validate PREMIS metadata once it exists within the package. The two high-level requirements for the use of PREMIS in Common Specification IPs are that:
•	All preservation metadata is created according to official PREMIS guidelines;
•	All PREMIS metadata is referenced from the amdSec/digiprovMD element of the appropriate METS file.

It is recommended that users review the CITS PREMIS specification.

In addition, LOTAR states[^6] that “the producer shall integrate Validation properties into the PDI to ensure that the existence of Validation Properties for later automatic Validation processes.  As the Content Objects and Validation Properties related to Content Objects are held at Representation and as CITS 3D PM also requires the inclusion of Digital Signatures with each Representation then CITS 3D PM recommends the use of PREMIS at Representation level.

[^]:EN/NAS 9300 Part 011, 6.9
[^2]:EN/NAS 9300 Part 005, 3.4
[^3}: EN/NAS 9300 Part 005, 3.4.1
[^4]: EN/NAS 9300 Part 005, 7.1
[^5]: EN/NAS 9300 Part 011, 6.8
[^6]: EN/NAS 9300 Part 011, 6.7
