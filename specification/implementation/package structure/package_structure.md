# 4 Implementation

<a name="Section4.1"><a/>

## 4.1 Package Structure
The CITS 3D Product Model information structure inherits its package structure from the E-ARK Common Specification for Information Packages and is shown in ([Figure 4](#fig4)). It can be seen that additional folders have been added for authentication documentation at root and representation level but otherwise the structure is identical. 

<a name="fig4"></a>
![Example Information Package Folder Structure](/specification/figs/fig_4_package_structure.svg "Example Information Package Folder Structure")

**Figure 4:** Example Information Package Folder Structure

A 3D Product Model Information package can consist of one to many representations comprising Product Information Models of the same product. It is likely for example that a Product Model archival package will at minimum contain a representation in Native Format and one in Standardised Open Format (e.g. STEP). As described in LOTAR, long-term usability of proprietary Native Format data is a risk and  conversely open derivations such as STEP are at risk of losing some properties from the original.

LOTAR requires the inclusion of information to support Validation and Verification of the data and representations, including:

+	Validation Properties Rules Data
+	Validation Properties
+	Validation reports
+	Data Quality Rules (Verification)
+	Verification reports

Validation and Verification rules information relate to the package and their outputs (properties, reports) relate to each individual representation. Within CITS 3DPM, a sub-folder named Authentication is included at root and representation levels within the Documentation folders to store the respective information related to Validation and Verification. 

It is strongly recommended that as much documentation as possible related to the production, context, provenance and terms of use of the Product Model is included in the information package such as for example: images, licence terms, project overviews, model creation information. 3DPM CITS recommends the inclusion of such information related to the Product Model in a documentation/other sub-folder and related to specific Product Information Models in representation/documentation/other sub-folders. LOTAR also requires the inclusion of a Submission Agreement in the information package that references the location of the references for Validation Properties Rules Data and Data Quality Rules (Verification) within Descriptive Information (metadata). The Submission Agreement should be located in the documentation/other sub-folder.

Specific requirements for the CITS 3D Product Model folder structure are as follows:

**3DPM1**: the package MUST have at least one representation in the Representations folder 

**3DPM2**: the Documentation folder at package level and representation level SHOULD include a sub-folder named Authentication. This is an extension of CSIPSTR16.

**3DPM3**: the Documentation folder at package and representation level SHOULD include a sub-folder named Other. This is an extension of CSIPSTR16.

<a name="Section4.2"><a/>

## 4.2 Metadata and Supporting Information

<a name="Section4.2.1"><a/>

### 4.2.1 Descriptive Metadata
According to LOTAR: “The producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).”

Neither CSIP or LOTAR prescribe specific schemas for descriptive information and so this is left to be determined by the user organisation. According to CSIP this should be according to a standardised schema such as for example EAD, Dublin Core, MODS or a locally defined schema that must be included in the package. 

It is assumed that it would also be desirable that Validation information, i.e. Validation Properties rules data is also referenced. This specification does not specify where this information should be located in any respective standardised descriptive metadata schema and this will be an organisational decision. LOTAR does however prescribe that the location of information references in SIPs be stated in a Submission Agreement. This specification also recommends that Verification and Validation supporting documentation as described below is included in the package and that Verification and Validation events are recorded within PREMIS.  

<a name="Section4.2.2"><a/>

### 4.2.2 Authentication
#### 4.2.2.1 Validation
LOTAR requires that data selected for archiving undergoes Validation checks involving the generation of Validation properties from the data and checks that the data representations meet with the recommended data quality criteria (Validation Properties Rules Data). Good archival practice dictates that we should not only include the results of those Validation checks but that Validation Properties Rules Data and Validation Properties should be included in the package. This specification also recommends that Validation events and results are recorded within preservation metadata (PREMIS).

**3DPM4:** the package Authentication sub-folder SHOULD contain Validation Rules Data files or documents.
  
**3DPM5:** each representation Authentication sub-folder SHOULD contain Validation results report files or documents.

####  4.2.2.2 Verification
LOTAR requires that each representation of the Product Model be verified using Data Quality Rules and that these documents are referenced from Descriptive Information (DI). The data Verification process is supported by the following documents:

+	Data Quality Rules (Verification)
+	Data Verification results report
  
Good archival practice states that we should not only include the reference to Verification results in Descriptive Metadata but should include the Data Quality Rules and the Verification reports within each Representation. This specification also recommends that Verification events and results  are recorded with Preservation Metadata (PREMIS).

**3DPM6:** the Information Package SHOULD contain Data Quality Rules files or documents within the /documentation/authentication sub-folder.
  
**3DPM7:** each Representation SHOULD contain files or documents containing Verification results reports in the representation/documentation/authentication sub-folder.
  
This specification does not detail the content or format of Validation and Verification information which may be specified within other standards such as LOTAR.

<a name="Section4.2.3"><a/>

### 4.2.3 Digital Signatures

A Digital Signature is a defined method to sign an object in electronic environments; it provides means to authenticate the signatory and the signed object in an unambiguous and safe way by attaching to or logically associating data in digital form to other digital objects. In LOTAR it is defined by an encrypted hash code with additional information such as time of creation and owner of the signature. 

LOTAR requires that a Digital Signature is provided on Ingest, i.e. production of AIPs from SIPs. Note that LOTAR also requires that signatures are ‘created using means that the signatory can maintain’, which may exclude the use of 3rd party certificate and time stamp providers.

**3DPM8:** Information Packages MAY contain Digital Signatures associated with Product Model Representations that are encoded within a Representation PREMIS file.

This specification recommends that any Digital Signature information be recorded within PREMIS [Section 2](#/specification/specification/specification.md). PREMIS also requires that the operations to be performed for validating a Digital Signature are known. This can be by means of a canonicalized method, or if by a local method either documentation or a persistent link to archived documentation or a resource must be provided.

**3DPM9:** If Digital Signatures are provided then documentation MUST be included in the documentation/authentication folder or a persistent link provided to a resource. 

<a name="Section4.2.4"><a/>

### 4.2.4 Preservation Metadata

LOTAR requires that Information Packages include Preservation Description Information (PDI) which in turn comprises information related to:

+	Provenance
+	Reference
+	Fixity
+	Context

According to the Common Specification for Presevation Metadata (CSPM): “When using Preservation Metadata together with the Common Specification for Information Packages (CSIP) (http://earkcsip.dilcis.eu), it is recommended that these are included in the information package in PREMIS format. Although this is not mandatory, all tools claiming to be able to validate CSIP compliant Information Packages may  also validate PREMIS metadata once it exists within the package. The two high-level requirements for the use of PREMIS in Common Specification IPs are that:

+	All preservation metadata is created according to official PREMIS guidelines;
+	All PREMIS metadata is referenced from the amdSec/digiprovMD element of the appropriate METS file.

It is recommended that users review the Common Specification for Preservation Metadata.

3DPM recommends the inclusion of PREMIS files at Representation level to include Authentication events, Provenance and Digital Signature information for Product Information Models and Content Objects.

**3DPM10:** there SHOULD be a PREMIS file produced according to the CSPM and the requirements of this CITS in the representation/metadata/preservation folder of each Representation of the Information Package.

<a name="Section4.2.5"><a/>

### 4.2.5 Rights Metadata
From the principle above detailed Rights information should be recorded within PREMIS and as such a PREMIS file should be included at package level to contain this. 

**3DPM11:** there SHOULD be a PREMIS file produced according to the CSPM and the requirements of this CITS in the metadata/preservation folder of the Information Package containing Rights information.

<a name="Section4.3"><a/>

## 4.3 Use of METS in CITS 3D PM
CSIP specifies that METS files be located at the root of the package folder structure (Root METS) and optionally in each of the Representations within its respective root folder (Representation METS). The CITS 3D PM has a requirement to contain at least one Representation and so will contain at minimum a root METS and a Representation METS file. 

### 4.3.1 Root METS File
The root METS file must adhere to the requirements of the CSIP and Information Package specifications. In addition, there are specific requirements for CITS 3D PM and in some cases, the level of the CSIP or package requirements have been increased (but never decreased).

### 4.3.2 Root METS root element
CITS 3D PM does not change or extend any of the requirements for the Root METS root element. Information is given in the tables regarding the specific content type attributes to be used in CITS 3D PM.

### 4.3.3 Root METS header element (element metsHdr)
The tables describe the differences in the package metsHdr element between CSIP, IP and the CITS 3D PM specification.

### 4.3.4 Root METS descriptive metadata section (element dmdSec)
According to LOTAR: “the producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).” Neither  CSIP or LOTAR make any assumptions regarding the use of specific descriptive metadata schemas and so this is left to the user organisation with a recommendation to use standardised or defined schemas.

There are no specific requirements in CITS 3D PM for the root METS descriptive metadata section.

### 4.3.5 Root METS administrative metadata section (element amdSec)
The administrative metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information; source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as administrative metadata, specifically digital provenance metadata (following the avaiable guidelines published by the Library of Congress): (http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf) and hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

As detailed Rights information is required by LOTAR for the package then CITS 3D PM recommends the inclusion of a PREMIS file in the metadata/preservation folder containing detailed Rights information as described in [section 4.5.3]{#section4.5.3) and any digital provenance metadata as described in the CITS Preservation Metadata. 

### 4.3.6 Root METS file metadata section (element fileSec)
The CSIP does not make use of the METS fileSec element mandatory, but it is strongly recommended. In the 3D PM CITS the use of the METS fileSec element at the package level becomes mandatory, such as to reference the METS files within each representation.

### 4.3.7 Root METS structural map (element structMap)
The METS structural map element is the only mandatory element in the METS specification. It provides an overview of the components described in the METS document. It can also link the elements in the structure to associated content files and metadata. In CITS 3D PM the package structMap describes the high-level structure of all the content in the package and links to at least one Representation. To allow for the inclusion of multiple Product Model Representations in each package, the CITS 3D PM specification requires that each Product Model has a discrete div element.

The Representation METS.xml is referenced from the package METS.xml via the <mptr> element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a Representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP105).

The structural map should reference the documentation/authentication file group located in the documentation/authentication sub-folder by means of a separate div element.

The structural map should reference the documentation/other file group located in the documentation/other sub-folder by means of a separate div element.

Implementers are welcome to define additional structural maps for their internal purposes by repeating the structMap element. The specific requirements for elements, sub-elements and attributes for 3D PM CITS, which differ from the CSIP, are listed in the table. 

## 4.4 Representation METS Files
The Representation METS files are used to describe the data structure as included in the data folder of each Representation (Product Model representations) via the structMap element and to reference additional descriptive and preservation metadata.

### 4.4.1 Representation METS root element
CITS 3D PM does not change or extend any of the requirements for the Representation root element but particular notice is drawn to the specific requirements of a Representation METS root element and the specific content type attributes to be used in CITS 3D PM.

### 4.4.2 Representation METS header element (element metsHdr)
There are no specific requirements for the header element in a CITS 3D PM Representation METS. The 3D PM Representation metsHdr element should comply with the metsHdr requirements in the appropriate Information Package profile and can be used to identify specific agents related to a Product Model Representation.

### 4.4.3 Representation METS descriptive metadata section (element dmdSec)
There are no specific requirements in CITS 3D PM for the Representation METS Descriptive Metadata section.

### 4.4.4 Representation METS administrative metadata section (element amdSec)
The Administrative Metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information;  source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as Administrative Metadata, specifically digital provenance metadata (following the available guidelines published by the Library of Congress): (http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf) and hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

As detailed provenance, authentication and technical metadata is required by LOTAR for each Product Information Model then CITS 3D PM strongly recommends the inclusion of a PREMIS file in the representation/metadata/preservation folder containing detailed metadata for: Verification events, Validation events, Digital Signatures and digital provenance information.

### 4.4.5 Representation METS file metadata section (element fileSec)
The CSIP does not make the use of the METS fileSec element mandatory, but it is strongly recommended. In the 3D Product Model CITS, the use of the METS fileSec element at the Representation level becomes mandatory, such as to reference the Content Data Objects within each Representation and link to preservation information held within mandatory PREMIS files.

### 4.4.6 Representation METS structural map (element structMap)
The METS structural map element is the only mandatory element in the METS specification and is hence mandatory within the Representation METS. There must be one structural map present in each Representation METS file following the requirements of the CSIP. As Authentication documentation SHOULD be included in each Representation within 3D PM CITS, there is also a mandatory requirement for a structMap division for the documentation/authentication folder. The specific requirements for elements, sub-elements and attributes for 3D PM CITS, which differ from the CSIP, are listed in the table. 

<a name="Section4.5"><a/>

## 4.5 PREMIS

<a name="Section4.5.1"><a/>

### 4.5.1 Use of PREMIS in CITS 3D PM
The use of PREMIS within the 3D PM CITS must follow the requirements of the CITS PREMIS which can be found at: (https://dilcis.eu/content-types/cits-premis). 

Some PREMIS semantic units take the form of containers which comprise multiple sub (or even sub-sub) semantic units. Sub or sub-sub semantic units are not detailed in this specification if the container above has a level of MAY. Use of semantic units not listed should follow the requirements of the PREMIS data dictionary including the level (obligation). 

For 3D PM CITS the use of PREMIS follows an interpretation of LOTAR as described in 3D PM10 and 3D PM11 above as follows:

**3D PM10:** there SHOULD be a PREMIS file produced according to CITS PREMIS and adjusted to the requirements of this CITS in the metadata/preservation folder of the Information Package.

**3D PM11:** there SHOULD be a PREMIS file produced according to CITS PREMIS and conforming to the adjusted requirements of this CITS in each Representation of the Information Package in the representation/metadata/preservation folder.

Following CITS PREMIS the CITS 3D PM follows the requirements and recommendation of the PREMIS Data Dictionary which can be found at: (https://www.loc.gov/standards/premis/v3/premis-3-0-final.pdf).

<a name="Section4.5.2"><a/>

### 4.5.2 Attribute values and controlled vocabularies
Use of controlled vocabularies for the values of semantic units is encouraged within the PREMIS Data Dictionary and through best practice. Specific controlled vocabularies for semantic units are not provided by the CITS but their use is encouraged, particularly the use of any vocabularies provided by the LOTAR standard. If local vocabularies are used within the repository then these should be included within each package.

<a name="Section4.5.3"><a/>

### 4.5.3 Use of PREMIS at package level
PREMIS can be used in addition to METS to support compliance with LOTAR in recording  specific rights information at package level. Note that if PREMIS is used then the requirements of the CITS Preservation apply and those provided by the CITS 3D PM are in addition to these.

#### 4.5.3.1 Preservation information
**3D PM52:** Preservation information for the entire package (e.g. provenance, preservation actions) MAY be recorded within the PREMIS file located in the metadata/preservation folder and must follow guidelines set out in CITS PREMIS. 

#### 4.5.3.2 Rights Information
**3D PM53:** Rights for the entire package (e.g. copyright, license, statute, other, rights grants) MAY be recorded within the PREMIS file located in the metadata/preservation folder using the PREMIS Rights entity and must follow the guidelines set out in CITS PREMIS. Each individual rights statement (copyright, licence, statute, other, rights granted) must be held in a separate rightsStatement semantic unit. Designation of the basis for the right or permission can be taken from the vocabulary available at: http://id.loc.gov/vocabulary/preservation/rightsBasis.html which are: license, copyright, statute, other. Information on rights associated with the rights basis can be included within the otherRightsInformation PREMIS semantic unit container using values from available controlled vocabularies.

<a name="Section4.5.4"><a/>

### 4.5.4 Use of PREMIS at Representation level
PREMIS can be used in addition to METS to support compliance with LOTAR in recording  specific Validation and Verification events information at representation level. Note that if PREMIS is used then the requirements of the CITS Preservation apply and those provided by the CITS 3D PM are in addition to these.

#### 4.5.4.1 Preservation information
**3D PM54:** Preservation information for each Representation (e.g. provenance, preservation actions) MAY be recorded within the PREMIS file located in the representation/metadata/preservation folder and must follow guidelines set out in CITS PREMIS. 

<a name="Section4.5.5"><a/>

#### 4.5.4.2 Validation and Verification information
**3D PM55:** Product Data Model Validation and Verification events MAY be recorded within the PREMIS file located in each representation/metadata/preservation folder, using the PREMIS Event entity and should follow guidelines set out in CITS PREMIS. Values for eventTypes, eventDetailInformation and eventOutcomeInfoirmation  should take values from a controlled vocabulary and events should be linked to their respective objects using a linking object identifier.

#### 4.5.4.3 Digital Signatures for Product Information Models
From **3D PM7:** AIPs MAY contain Digital Signatures associated with Product Model Representations that are encoded within a Representation PREMIS file at object level using the signatureInformation semantic unit and signature events recorded as PREMIS Event entities.

**3D PM56:**  If a Digital Signature is provided for an object then the operations to be performed to validate the object SHOULD be detailed. This could be a canonicalized method used before calculating the message digest or a pointer to a document in the representation/documentation/authentication folder.

**3D PM57:** If a Digital Signature is provided then further properties of the signature SHOULD be provided within the signatureProperties element to at least include a date and time of the signature. The granular structure of signaturePropertiesis not defined by PREMIS but an example of a possible date record within the signatureProperties element is shown below.

**3D PM58:** If a Digital Signature is provided, then information about the signer’s public key SHOULD be provided within the keyInformation element. Different types of keys have different structures and parameters and so PREMIS does not define the structure of this container element and recommends practice from “KeyInfo” in the W3C’s XML-Signature Syntax and Processing (http://www.w3.org/TR/2002/REC-xmldsig-core-20020212/) to represent key values.
