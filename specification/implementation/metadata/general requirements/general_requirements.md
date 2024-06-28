# Metadata and Supporting Information
## Descriptive Metadata
According to LOTAR: “The producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).”

Neither CSIP or LOTAR prescribe specific schemas for descriptive information and so this is left to be determined by the user organisation. According to CSIP this should be according to a standardised schema such as for example EAD, Dublin Core, MODS or a locally defined schema that must be included in the package. 

It is assumed that it would also be desirable that Validation information, i.e. Validation Properties rules data is also referenced. This specification does not specify where this information should be located in any respective standardised descriptive metadata schema and this will be an organisational decision. LOTAR does however prescribe that the location of information references in SIPs be stated in a Submission Agreement. It also recommends that Verification and Validation supporting documentation as described below is included in the package and that Verification and Validation events are recorded within PREMIS.  

## Authentication
### Validation
LOTAR requires that data selected for archiving undergoes Validation checks involving the generation of Validation properties from the data and checks that the data representations meet with the recommended data quality criteria (Validation Properties Rules Data). Good archival practice dictates that we should not only include the results of those Validation checks but that Validation Properties Rules Data and Validation Properties should be included in the package. This specification also recommends that Validation events and results are recorded within preservation metadata (PREMIS).

**3DPM4:** the package Authentication sub-folder SHOULD contain Validation Rules Data files or documents.
  
**3DPM5:** each representation Authentication sub-folder SHOULD contain Validation results report files or documents.

###  Verification
LOTAR requires that each representation of the Product Model be verified using Data Quality Rules and that these documents are referenced from Descriptive Information (DI). The data Verification process is supported by the following documents:

+	Data Quality Rules (Verification)
+	Data Verification results report
  
Good archival practice states that we should not only include the reference to Verification results in Descriptive Metadata but should include the Data Quality Rules and the Verification reports within each Representation. This specification also recommends that Verification events and results  are recorded with Preservation Metadata (PREMIS).

**3DPM6:** the Information Package SHOULD contain Data Quality Rules files or documents within the /documentation/authentication sub-folder.
  
**3DPM7:** each Representation SHOULD contain files or documents containing Verification results reports in the representation/documentation/authentication sub-folder.
  
This specification does not detail the content or format of Validation and Verification information which may be specified within other standards such as LOTAR.

## Digital Signatures

A Digital Signature is a defined method to sign an object in electronic environments; it provides means to authenticate the signatory and the signed object in an unambiguous and safe way by attaching to or logically associating data in digital form to other digital objects. In LOTAR it is defined by an encrypted hash code with additional information such as time of creation and owner of the signature. 

LOTAR requires that a Digital Signature is provided on Ingest, i.e. production of AIPs from SIPs. Note that LOTAR also requires that signatures are ‘created using means that the signatory can maintain’, which may exclude the use of 3rd party certificate and time stamp providers.

**3DPM8:** Information Packages MAY contain Digital Signatures associated with Product Model Representations that are encoded within a Representation PREMIS file.

This specification recommends that any Digital Signature information be recorded within PREMIS (see Principle 5.2). PREMIS also requires that the operations to be performed for validating a Digital Signature are known. This can be by means of a canonicalized method, or if by a local method either documentation or a persistent link to archived documentation or a resource must be provided.

**3DPM9:** If Digital Signatures are provided then documentation MUST be included in the documentation/authentication folder or a persistent link provided to a resource. 

## Preservation Metadata

LOTAR requires that Information Packages include Preservation Description Information (PDI) which in turn comprises information related to:

+	Provenance
+	Reference
+	Fixity
+	Context

According to the CITS PREMIS: “When using Preservation Metadata together with the Common Specification for Information Packages (CSIP) (http://earkcsip.dilcis.eu), it is recommended that these are included in the information package in PREMIS format. Although this is not mandatory, all tools claiming to be able to validate CSIP compliant Information Packages may  also validate PREMIS metadata once it exists within the package. The two high-level requirements for the use of PREMIS in Common Specification IPs are that:

+	All preservation metadata is created according to official PREMIS guidelines;
+	All PREMIS metadata is referenced from the amdSec/digiprovMD element of the appropriate METS file.

It is recommended that users review the CITS PREMIS specification.

3DPM recommends the inclusion of PREMIS files at Representation level to include Authentication events, Provenenace and Digital Signature information for Product Information Models and Content Objects respectively.

**3DPM10:** there SHOULD be a PREMIS file produced according to CITS PREMIS and the requirements of this CITS in the representation/metadata/preservation folder of each Representation of the Information Package.

## Rights Metadata
From the principle above detailed Rights information should be recorded within PREMIS and as such a PREMIS file should be included at package level to contain this. 

**3DPM11:** there SHOULD be a PREMIS file produced according to CITS PREMIS and the requirements of this CITS in the metadata/preservation folder of the Information Package.

