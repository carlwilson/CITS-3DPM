# Specification

## Requirements Structure

The Content Information Type Specification for 3D Product Model Data aims to define the necessary elements required to preserve the accessibility and authenticity of 3D Product Model Data over time and across changing technical environments. The specification builds on the international standard for long-term archiving of Product Model Data (LOTAR) and in order to achieve this, elevates the level (and adjusts the cardinality) of some of the requirements set out in the Common Specification (CSIP) and package specifications (namely SIP and AIP) and adds new requirements for the package structure, descriptive metadata, preservation metadata and accompanying METS files. It also introduces new requirements for authentication and Verification. The specification sets out general principals that underpin the specific requirements and further context for the requirements and justification for the principals follow in this acompanying guideline.

## Principals

### Principal – support for LOTAR conformance

The LOTAR “Long Term Archiving of digital technical product information” series is an international standard for the long term archiving of Product Model data (such as computer aided design CAD or product data model PDM data). LOTAR extensively references and  extends ISO 14721 the “Open reference model for Archiving Information System”, (OAIS) but does not extend into areas detailed in the E-ARK common specification for information packages (CSIP). LOTAR also references and builds on ISO 10303, the Standard for the Exchange of Product Model data (STEP). This eArchiving 3D Product Model CITS creates a layered model for creating archival packages for Product Models that allows conformance to LOTAR and STEP whilst maintaining conformance with the CSIP and with the individual eArchiving package specifications (SIP, AIP and DIP). Specifically:

* no requirements in this specification should conflict with mandatory requirements of  LOTAR;
* requirements of LOTAR with regard to essential data or metadata elements in Information Packages become optional should requirements in the 3D PM CITS;
* the scope of the E-ARK specifications  are not altered to encompass areas covered by LOTAR but not covered by E-ARK, for example process requirements and management procedures.

A conformant E-ARK 3D PM Information Package will not imply conformance or validation against LOTAR, but an archive will be able to use use the E-ARK 3D PM CITS together with the other E-ARK package specifications to produce Information Packages that support LOTAR compliance.

###	Principal – use of PREMIS

From the CSIP and PREMIS CITS: 

* PREMIS should be used to record detailed technical metadata;
* Information about agents carrying out preservation actions must be recorded in the PREMIS  metadata (this is because METS agents describe agents relevant for generic IP level events, such as the creation or submission of the package, not the preservation of the data);
* Event descriptions should be included in PREMIS metadata. Use of the official PREMIS event vocabulary (<https://id.loc.gov/vocabulary/preservation/eventType.html>) is recommended;
* Detailed rights information should be included in PREMIS. High-level rights information in METS indicates restrictions. Detailed, object-specific rights information will be included in the PREMIS metadata;
* File format information for all files should be included as Persistent Unique Identifier (PUID) values in the appropriate PREMIS semantic units.

Technical and preservation metadata in the context of the 3DPM CITS can include:

* Creating agent;
* Reference to the content information standard (e.g. STEP);
* Reference to the LOTAR standard part for the content information type;
* Information about the generating system.
  
Event descriptions include:

* Creation events;
* Conversion or change events;
* Electronic signature events;
* Verification events and results;
* Validation events and results.
  
Detailed technical metadata in the context of the 3DPM CITS include:

* File format, characterisation,  checksums;
* Detailed part number, version, product model and issue information;
* Relationships for the digital object (is part of, contains parts).

Rights information includes:

* Access rights;
* Export controls;
* License restrictions;
* Copyright owner;
* Security classification;
* Personal identifiable information restrictions;
* Company specific classifications.
  
Use of PREMIS must conform to the requirements of the Common Specification for Preservation Metadata (CSPM).

## Use cases for archiving of 3D product model data

According to the Common Specification: “Regardless of the formats and systems in question, it is necessary to consider whether the information needs to be retained and managed for longer periods of time." The reasons for this might be, for example:

* to meet legal and regulatory obligations
* to provide for efficient reuse
* to satisfy historical, cultural, scientific and business interest.
  
In LOTAR the objectives for keeping data for long-term are clearly distinguished into two major categories[^3]:

* Legal requirements/certification requirements, such as for proof of technical documentation for actions in law
* Business requirements, such as keeping knowledge
  
Within the two categories LOTAR offers four characteristics which describe the objectives in more detail:

* to preserve the original data (generated by a source system) so that it can be used as evidence of what the data was at a particular date. This characteristic fits with the subcategory ‘legal requirement’
* to keep data available to new users over the period for which it is kept. This characteristic fits with the subcategories ‘legal requirement’ and ‘business requirement’.
* to be able to preserve the source of the kept data. This characteristic fits with the subcategory ‘business requirement’.
* to be able to reuse the data, for example, by modifying design data to meet new requirements. This characteristic fits with the subcategory ‘business requirement’.
  
The two major categories for keeping data stated by LOTAR imply a private (as opposed to public) archive which is under the control of the organisation which hopes to benefit from the value of the content in the future (business requirements) or to manage future risk with respect to the data (legal/certification requirements). Requirements for interoperability in this situation will be intra-organisational rather than inter-organisational, where there may over time be exchange or movement of data between locations and as a result of changes in organisation structure.

The use cases considered within the specification are therefore:

1. To enable the submission of 3D Product Model data from engineering departments in an organisation to a centralised or distributed archive, in a common format;
2. To store archival 3D Product Model data in a manner that will allow consolidation of archives intra-organisationially or with sources added through mergers or acquisitions;
3. To allow dissemination of Preoduct Model archival data within the organisation or to external regulatory bodies preserving both the integrity of the data objects and the information packages.

## LOTAR

### Long-term archiving

Within LOTAR, long-term archiving has a specific, defined meaning as follows[^4]:

* Storage of a copy of data in an appropriate way for record, certification and legal purposes
* Data will be preserved and kept available for use within the archive and possibly for further use
* With certified conversion processes, the Native Data Representation generated by the source system can be converted into a Representation which is appropriate for long term archiving. To fulfil legal and certification requirements, the stored form can be an accurate or approximate Representation of the source
* Integrity must be ensured by a Digital Signature
* The data is retained over the long term
* Invariance is mandatory
* Business, legal and certification requirements are covered
  
The E-ARK Common Specification for Information Packages states as its aim:

> “…specifications which aim to provide a common set of usage descriptions of international standards for packaging digital information for archiving purposes. These specifications are based on common, international standards for transmitting, describing and preserving digital data. They also utilise the Reference Model for an Open Archival Information System (OAIS), which has Information Packages as its foundation.”  

E-ARK CSIP does not attempt to make a definition of archiving, but as both CSIP and LOTAR use OAIS as a foundation it is useful to cite the OAIS Reference Model definition of an Open Archive Information System (OAIS), as follows:

> “An Archive system consisting of hardware, software, information, and policy-based processes and procedures put in place and operated by an organization and its staff. The organization has accepted the responsibility to preserve information and make it available for a Designated Community. The organization may be part of a larger organization. The system meets a set of mandatory responsibilities that allows an OAIS Archive to be distinguished from other uses of the term ‘archive’. The term ‘Open’ in OAIS is used to imply that this Recommended Practice and future related Recommended Practices and standards are developed in open forums, and it does not imply that access to the Archive is unrestricted.”

### Data Model

The following is the LOTAR description of its data model. The contents of data packages are also described in LOTAR as detailed below. Broadly, the LOTAR data model considers the data comprising a Representation of the product model as follows[^5]:

* The core data model
* The required metadata
* The engineering approvals data (as a Digital Signature)
* The Validation information

Note that LOTAR defines two different data authentication processes, namely Validation and Verification which are considered as distinct events in the 3D PM CITS. In some parts of LOTAR however, the term Validation is used to cover all data  authentication processes.

### The Core Model

The core model identifies the essential minimum of data which is required to preserve the design intent for a given purpose. The domain specific parts of LOTAR identify a purpose or set of purposes through appropriate use cases, and therefore the core model which is required to support the business cases. The core model is defined as a system of data elements together with their representation information, interpretation information and data quality criteria they must meet.

### Metadata

Metadata considered within the LOTAR data model is limited to data used to retrieve the package and data used to Validate the data and its provenance.

The scope of the metadata depends on the particular use cases it applies to, and is detailed in the domain specific parts. These also detail any data quality criteria applicable to the metadata. According to LOTAR: “Additional metadata may be applied, and should be agreed in the ingest (submission) agreement. Data used in the internal management of the archive is outside of the scope of LOTAR. In addition the detailed intellectual property rights information may be explicitly identified, described, documented in the Archival Information package during ingest and after the retrieval process.”[^6]

It is implicit in LOTAR that metadata accompanies data in the submission to the archive and is used within the digital repository or OAIS to aid the retrieval of data and to provide proof of provenance. It is not explicitly required that metadata is included in the package, but E-ARK CSIP sets minimum standards for this such that information packages are completely self describing and interoperable outside the digital repository or OAIS.

### Digital and Engineering Signatures

A Digital Signature is a sort of seal of digital data. It is produced by using mathematical algorithm with the help of a private cryptographic key. With the help of the related public key the signature can be checked at any time to identify the signature-key-owner and to proof the integrity of the data. The Digital Signature may follow the rules given by, for example: Directive in 1999/93/EC of the European parliament and the council from the 13th of December, 1999 about collective basic conditions of Digital Signature.

A Digital Signature has to be renewed every approximately 5-6 years. For LOTAR, therefore, the Digital Signature is only used to safeguard the data integrity for the short period between the producers' release and the transfer to the archive system. Time stamps (Digital Signatures authenticated by 3rd party services such as to identify producers and time of creation are used within LOTAR alongside stored data (AIPs). As this information is held outside of the archival package it is out of scope of the E-ARK specification. The encoding of Digital Signatures within PREMIS in Submission Information Packages (SIPs), should be adequate for verification on ingest into the archive.

According to LOTAR[^7]:

> “An  Engineering Signature supports a business release process. With it the data producer asserts that the prepared data fits with the process and quality requirements from the engineering point of view. It may also identify the approver. Similarly to metadata the engineering signature is domain dependent and the use of it should be agreed between the producer and the archive.”

Engineering Signatures are described in LOTAR as being Digital Signatures as they are accommpagnying digital product models. It is important to note that in LOTAR the engineering signature is attesting the quality of the product data as submitted, not the long term authenticity or quality of the archived data.

### Validation

LOTAR defines sets of Validation Properties. The Validation Properties are used within automatic or manual processes to check the consistency of data content during transformations from one Representation and/or format into another Representation and/or format. LOTAR defines domain specific Validation Properties, for example, for CAD and PDM but further extensions of Validation properties are possible by user agreement. The use of Validation properties is mandatory, ensuring the data integrity and process security. Recommended subsets of STEP Validation properties are described within LOTAR-1xx series and LOTAR-2xx series.

A Validation Property should be something that is relatively simple to compute, compact to store, but which detects the most important errors. It is recommended to use at a minimum Validation properties for the key and the global characteristics of the object the Validation Properties are assigned to. For example, geometric models may include Validation criteria such as surface area, volume, or centre of gravity, which are highly sensitive to errors in the model. Engineering correctness is out of scope for Validation Properties.

Validation Properties in LOTAR analyse only the correctness of the Representation of the core model. However, it should be noted that an invalid Representation is often an indication of an engineering error.

The Producer calculates Validation Properties and produces a results report either manually or automatically during data preparation according to Validation Property Rules. The Validation Properties are  integrated into Preservation Description Information (PDI) during data preparation and the results report included in the SIP. 

LOTAR requires that data selected for archiving undergoes data quality or Validation checks involving the generation of Validation properties from the data and checks that each Representation of the data meets with the recommended data quality criteria (Validation rules data). Good archival practice dictates that we should not only include the results of those Validation checks but that Validation rules data and Validation properties should be included in the package. The specification also recommends that Validation events and results are recorded within preservation metadata (PREMIS).

### Verification

The intention of Verification is to ensure that data is correctly represented. Verification rules ensure that a data Representation meets the quality requirements within defined tolerances. A Verification is successful if no Verification rule is violated. The Verification rules are domain specific and are defined for example within the LOTAR-1xx series and LOTAR-2xx series. Only Verification rules belonging to the core models are part of LOTAR.

Data Verification of a Representation of data (e.g. a STEP Representation) for a SIP will result in a Verification Results report. LOTAR requires that a reference to the Verification Results report should be included in the SIP Descriptive Information (metadata) and a copy of the report may be also included. 

LOTAR requires that each Representation of the Product Model be verified using data quality rules. The data Verification process is supported by the following documents:

* Data quality rules (Verification)
* Data Verification results report
  
A reference to the Verification results report should be included in Descriptive Information (LOTAR). Good archival practice states that we should not only include the reference to Verification results in descriptive metadata but should include the Data Quality Rules and the Verification reports within each Representation. The CITS also suggests that Verification events and results  are recorded with preservation metadata (PREMIS).

[^3]: EN/NAS 9300 Part 003, 4.1.3
[^4]: EN/NAS 9300 Part 003, 4.2.6
[^5]: EN/NAS 9300 Part 003, 7.3.2.1
[^6]: EN/NAS 9300 Part 003, 7.3.2.3
[^7]: EN/NAS 9300 Part 003, 7.3.2.4
