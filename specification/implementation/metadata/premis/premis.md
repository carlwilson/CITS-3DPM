# PREMIS
## Use of PREMIS in CITS 3D PM
The use of PREMIS within the 3D PM CITS must follow the requirements of the CITS PREMIS which can be found at: (https://dilcis.eu/content-types/cits-premis). 

Some PREMIS semantic units take the form of containers which comprise multiple sub (or even sub-sub) semantic units. Sub or sub-sub semantic units are not detailed in this specification if the container above has a level of MAY. Use of semantic units not listed should follow the requirements of the PREMIS data dictionary including the level (obligation). 

For 3D PM CITS the use of PREMIS follows an interpretation of LOTAR as described in 3D PM10 and 3D PM11 above as follows:

**3D PM10:** there SHOULD be a PREMIS file produced according to CITS PREMIS and adjusted to the requirements of this CITS in the metadata/preservation folder of the Information Package.

**3D PM11:** there SHOULD be a PREMIS file produced according to CITS PREMIS and conforming to the adjusted requirements of this CITS in each Representation of the Information Package in the representation/metadata/preservation folder.

Following CITS PREMIS the CITS 3D PM follows the requirements and recommendation of the PREMIS Data Dictionary which can be found at: (https://www.loc.gov/standards/premis/v3/premis-3-0-final.pdf).

## Attribute values and controlled vocabularies
Use of controlled vocabularies for the values of semantic units is encouraged within the PREMIS Data Dictionary and through best practice. Specific controlled vocabularies for semantic units are not provided by the CITS but their use is encouraged, particularly the use of any vocabularies provided by the LOTAR standard. If local vocabularies are used within the repository then these should be included within each package.

## Use of PREMIS at package level
PREMIS can be used in addition to METS to support compliance with LOTAR in recording  specific rights information at package level. Note that if PREMIS is used then the requirements of the CITS Preservation apply and those provided by the CITS 3D PM are in addition to these.

### Preservation information
**3D PM52:** Preservation information for the entire package (e.g. provenance, preservation actions) MAY be recorded within the PREMIS file located in the metadata/preservation folder and must follow guidelines set out in CITS PREMIS. 

### Rights Information
**3D PM53:** Rights for the entire package (e.g. copyright, license, statute, other, rights grants) MAY be recorded within the PREMIS file located in the metadata/preservation folder using the PREMIS Rights entity and must follow the guidelines set out in CITS PREMIS. Each individual rights statement (copyright, licence, statute, other, rights granted) must be held in a separate rightsStatement semantic unit. Designation of the basis for the right or permission can be taken from the vocabulary available at: http://id.loc.gov/vocabulary/preservation/rightsBasis.html which are: license, copyright, statute, other. Information on rights associated with the rights basis can be included within the otherRightsInformation PREMIS semantic unit container using values from available controlled vocabularies.

## Use of PREMIS at Representation level
PREMIS can be used in addition to METS to support compliance with LOTAR in recording  specific Validation and Verification events information at representation level. Note that if PREMIS is used then the requirements of the CITS Preservation apply and those provided by the CITS 3D PM are in addition to these.

## Preservation information
**3D PM54:** Preservation information for each Representation (e.g. provenance, preservation actions) MAY be recorded within the PREMIS file located in the representation/metadata/preservation folder and must follow guidelines set out in CITS PREMIS. 

## Validation and Verification information
**3D PM55:** Product Data Model Validation and Verification events MAY be recorded within the PREMIS file located in each representation/metadata/preservation folder, using the PREMIS Event entity and should follow guidelines set out in CITS PREMIS. Values for eventTypes, eventDetailInformation and eventOutcomeInfoirmation  should take values from a controlled vocabulary and events should be linked to their respective objects using a linking object identifier.

### Digital Signatures for Product Information Models
From **3D PM7:** AIPs MAY contain Digital Signatures associated with Product Model Representations that are encoded within a Representation PREMIS file at object level using the signatureInformation semantic unit and signature events recorded as PREMIS Event entities.

**3D PM56:**  If a Digital Signature is provided for an object then the operations to be performed to validate the object SHOULD be detailed. This could be a canonicalized method used before calculating the message digest or a pointer to a document in the representation/documentation/authentication folder.

**3D PM57:** If a Digital Signature is provided then further properties of the signature SHOULD be provided within the signatureProperties element to at least include a date and time of the signature. The granular structure of signaturePropertiesis not defined by PREMIS but an example of a possible date record within the signatureProperties element is shown below.

**3D PM58:** If a Digital Signature is provided, then information about the signer’s public key SHOULD be provided within the keyInformation element. Different types of keys have different structures and parameters and so PREMIS does not define the structure of this container element and recommends practice from “KeyInfo” in the W3C’s XML-Signature Syntax and Processing (http://www.w3.org/TR/2002/REC-xmldsig-core-20020212/) to represent key values.
