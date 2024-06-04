# Standards
## LOTAR
LOTAR is a standard for the long term archiving and retrieval of digital technical product documentation such as 3D, Computer Aided Design (CAD) and Product Digital Model (PDM) data. 

In common with E-ARK, LOTAR references and extends OAIS, but there is a different but complementary focus within the standard and the specifications. Firstly, E-ARK is concerned with the Information Packages described in OAIS (SIP, AIP, DIP), refining their definition such as to:

1.	Establish a common understanding of the requirements which need to be met in order to achieve interoperability of Information Packages;
2.	Establish a common base for the development of more specific Information Package definitions and tools within the digital preservation community;
3.	Propose the details of an XML-based implementation of the requirements using, to the largest possible extent, standards which are widely used in international digital preservation.

E-ARK is not prescriptive on process and encompasses multiple use cases for submission of content to an archive, which can be involve multiple different entities or organisations. For example E-ARK can envisage situations where SIPs are created at a Producer or at an Archive. 

Secondly, LOTAR is not concerned with package structure but with the data content of the packages and with the main phases of archiving as described by OAIS: data preparation, ingest, archival atorage, access and retrieval. It does not consider interoperability, as the Archives considered will typically be owned and managed by the data owners. 

LOTAR extends OAIS with detailed process views, which provide normative descriptions of key aspects of the process, together with extended descriptions of roles and responsibilities. The process views identify any data format conversions required, the preparation of Validation information and the execution of Validation and Verification tests. These process views have the objective of establishing a certifiable process for archiving.

## PREMIS
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

## METS
The main requirement for METS files in a CSIP Information Package is that these need to follow the official METS Schema version 1.12 http://www.loc.gov/standards/mets/mets-schemadocs.html (used by CSIP version 2.1) and the extension schema developed for the CSIP and published by the DILCIS Board. As new versions of METS Schema become available the DILCIS Board will evaluate these and, if necessary, update the CSIP.

The METS specification requires a METS profile document which describes the use of METS and the METS elements. All the requirements described in this specification are also expressed with METS profiles for the CITS 3D PM root and representation METS which can be found at: CSIP https://github.com/DILCISBoard/E-ARK-CSIP/tree/master/profile.

CSIP specifies that METS files be located at the root of the package folder structure (root METS) and optionally in each of the Representations within its respective root folder (representation METS). CITS 3D PM has a requirement to contain at least one Representation and so will contain at minimum a root METS and a representation METS file. 
