# Information Packages
The E-ARK SIP specification states that: “According to the Open Archival Information System Reference Model (OAIS) every submission of information to an archive occurs as one or more discrete transmissions of Submission Information Packages (SIPs).”

The OAIS Reference Model does not specify the format, structure or contents of these information packages. The EU funded E-ARK project (2014-2017) first acknowledged this problem and started to develop a solution in the form of an information package specification. This specification is now part of a set of specifications managed by an independent body named the Digital Information LifeCycle Interoperability Standards Board (DILCIS Board).

According to LOTAR: “The formats of the packages are defined in a Submission Agreement between the producer and the archive.” In the case of building E-ARK and LOTAR compliant information packages, the Submission Agreement will reference the E-ARK Common Specification for Information Packages, the specification for Submission Information Packages (SIP), the specification for Archival Information Packages (AIP), the specification for Dissemniation Information Packages (DIP) and the Content Information Type Specification for 3D Product Data (CITS 3D PM). 

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
In the context of the LOTAR, a Digital Signature shall be:

*	uniquely linked to the signatory;
*	capable of identifying the signatory;
*	created using means that the signatory can maintain:
*	under their sole control.
*	linked to the data to which it relates in such a manner that:
*	any subsequent change of the data is detectable.

An Engineering Sgnature is a special type of Digital Signature that expresses and fixes a volition of the signatory. It gives evidence of: 

*	the process of testifying quality of data against process / quality requirements by linking the signature owner to the data; 
*	the identity of the signatory by usage of appropriate methods of authentication;
*	the integrity of the data by using appropriate methods protecting the signed object against unauthorized changes.

The Engineering Signature is created individually for each document and is used within LOTAR  for the authentication of the data ready for archiving and stoage. An Engineering Signature includes:

*	owner name; 
*	public key from owner and certification company;
*	signature owner name and key; 
*	information about algorithm for use of the public key; 
*	start and end time of the certificate; 
*	identification number of the certificate; 

The Digital Signature is used to ensure that: 

*	the document file is an exact copy of the stored original; 
*	the document is approved by the originating company;
^	with digital engineering signatures; the document is approved by the given approver;

This process provides evidential weight for legal proceedings.
