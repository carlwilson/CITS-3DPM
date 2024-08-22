# 3 Specification 

<a name="Section3.1"><a/>

## 3.1 CITS 3D PM Requirements Structure

The Content Information Type Specification for 3D Product Model data aims to define the necessary elements required to preserve the accessibility and authenticity of 3D Product Model data over time and across changing technical environments. The specification builds on the international standard for long-term archiving of Product Model data (LOTAR) and facilitates conformance to the standard within an E-ARK packaging framework. In order to achieve this the specification elevates the level (and adjusts the cardinality) of some of the requirements set out in the Common Specification (CSIP) and package specifications (namely SIP and AIP) and adds new requirements for the package structure, descriptive metadata, preservation metadata and accompanying METS files. It also introduces new requirements for authentication. The specification sets out general principals that underpin the specific requirements and further context for the requirements and principals can be found in the accompanying guideline to this document.

<a name="Section3.2"><a/>

## 3.2 Principles

### 3.2.1 Principle - support for LOTAR conformance

The LOTAR “Long Term Archiving of digital technical product information” series is an international standard for the long term archiving of Product Model data (such as computer aided design CAD or product data model PDM data). LOTAR extensively references and  extends ISO 14721 the “reference model for an Open Archival Information System”, (OAIS) but does not extend into areas detailed in the E-ARK common specification for information packages (CSIP). LOTAR also references and builds on ISO 10303, the Standard for the Exchange of Product Model data (STEP). This eArchiving 3D Product Model CITS creates a layered model for creating archival packages for Product Models that allows conformance to LOTAR and STEP whilst maintaining conformance with the CSIP and with the individual eArchiving package specifications (SIP, AIP and DIP). Specifically:

+ no mandatory requirements in this specification should conflict with (mandatory) requirements of  LOTAR;
+ specific (mandatory) requirements of LOTAR with regard to essential data or metadata elements in Information Packages ate translated as optional requirements in the 3D PM CITS;
+ the scope of the E-ARK specifications are not altered to encompass areas covered by LOTAR but not covered by E-ARK, for example process requirements and management procedures.

A conformant E-ARK 3DPM Information Package will not imply conformance or validation against LOTAR, but an archive will be able to use use the E-ARK 3DPM CITS together with the other E-ARK package specifications to produce Information Packages that can support LOTAR compliance.

### 3.2.2 Principle - use of PREMIS

PREMIS can be usefully used to meet the requirements in LOTAR for the recording of Validation and Verification events, Digital Signatures, Rights and Digital Provenance Information). Neither CSIP or 3DPM CITS makes the use of PREMIS mandatory but guidance as to how it can be used to provide LOTAR conformance is provided by this CITS. 

From the CSIP and PREMIS CITS: 
+ PREMIS should be used to record detailed technical metadata;
+ Technical information should be included in PREMIS metadata by using extension schemas;
+ Information about agents carrying out preservation actions must be recorded in the PREMIS  metadata (this is because METS agents describe agents relevant for generic IP level events, such as the creation or submission of the package, not the preservation of the data);
+ Event descriptions should be included in PREMIS metadata. Use of the official PREMIS event vocabulary (https://id.loc.gov/vocabulary/preservation/eventType.html) is recommended;
+ Detailed rights information should be included in PREMIS. High-level rights information in METS indicates restrictions. Detailed, object-specific rights information will be included in the PREMIS metadata;
+	File format information for all files should be included as Persistent Unique Identifier (PUID) values in the appropriate PREMIS semantic units.
  
Technical and preservation metadata in the context of the 3DPM CITS can include:
+	Creating agent;
+	Reference to the content information standard (e.g. STEP);
+	Reference to the LOTAR standard part for the content information type; 
+	Information about the generating system.

Event descriptions in the context of the 3DPM CITS can include:
+	Creation events;
+	Conversion or change events;
+	Digital Signature events;
+	Verification events and results;
+	Validation events and results.

Detailed technical metadata in the context of the 3DPM CITS can include:
+	File format, characterisation,  checksums;
+	Detailed part number, version, product model and issue information;
+	Relationships for the digital object (is part of, contains parts).

Rights information in the context of 3DPM CITS can include:
+	Access rights;
+	Export controls;
+	License restrictions;
+	Security classification;
+	Personal identifiable information restrictions;
+	Company specific classifications.

Use of PREMIS must conform to the requirements of the CITS Preservation Metadata. 

<a name="Section3.3"><a/>

## 3.3 Use Cases for Archiving of Product Model Data

Further detail of the use cases for long-term archiving of data in general and the rationales given in LOTAR specifically for Product Model data are given in the accompanying guideline. In summary, the use cases for archiving of Product Model data  are determined to be:

+ To enable the submission of 3D Product Model data from engineering departments in an organisation to a centralised or distributed archive, in a common format;
+ To store archival 3D Product Model data in a manner that will allow consolidation of archives intra-organisationially or with sources added through mergers or acquisitions;
+ To allow dissemination of Product Model archival data within the organisation or to external regulatory bodies preserving both the integrity of the data objects and the information packages.
