# Use of METS in CITS 3D PM
CSIP specifies that METS files be located at the root of the package folder structure (Root METS) and optionally in each of the Representations within its respective root folder (Representation METS). CITS 3DPM has a requirement to contain at least one Representation and so will contain at minimum a root METS and a Representation METS file. 

## Root METS File
The root METS file must adhere to the requirements of the CSIP and Information Package specifications. In addition, there are specific requirements for CITS 3DPM and in some cases, the level of the CSIP or package requirements have been increased (but never decreased).

## Root METS root element
CITS 3DPM does not change or extend any of the requirements for the Root METS root element. Information is given in the tables regarding the specific content type attributes to be used in CITS 3DPM.

### Root METS header element (element metsHdr)
The tables describe the differences in the package metsHdr element between CSIP, IP and the CITS 3DPM specification.

### Root METS descriptive metadata section (element dmdSec)
According to LOTAR: “the producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).” Neither  CSIP or LOTAR make any assumptions regarding the use of specific descriptive metadata schemas and so this is left to the user organisation with a recommendation to use standardised or defined schemas.
There are no specific requirements in CITS 3DPM for the root METS descriptive metadata section.

### Root METS administrative metadata section (element amdSec)
The administrative metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information; source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as administrative metadata, specifically digital provenance metadata (following the avaiable guidelines published by the Library of Congress): (http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf) and hence all preservation metadata should be referenced from a single or multiple digiprovMD elements within the amdSec.

Note that CITS PREMIS requires that all PREMIS is referenced from the digiprovMD element, including PREMIS Rights information and not via a separate rightsMD statement. 

### Root METS file metadata section (element fileSec)
The CSIP does not make use of the METS fileSec element mandatory, but it is strongly recommended. In the 3DPM CITS the use of the METS fileSec element at the package level becomes mandatory, such as to reference the METS files within each representation.

### Root METS structural map (element structMap)
The METS structural map element is the only mandatory element in the METS specification. It provides an overview of the components described in the METS document. It can also link the elements in the structure to associated content files and metadata. In CITS 3DPM the package structMap describes the high-level structure of all the content in the package and links to at least one Representation. To allow for the inclusion of multiple Product Model Representations in each package, the CITS 3DPM specification requires that each Product Model has a discrete div element.

The Representation METS.xml is referenced from the package METS.xml via the <mptr> element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a Representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP105).

The structural map should reference the documentation/authentication file group located in the documentation/authentication sub-folder by means of a separate div element.

The structural map should reference the documentation/other file group located in the documentation/other sub-folder by means of a separate div element.

Implementers are welcome to define additional structural maps for their internal purposes by repeating the structMap element. The specific requirements for elements, sub-elements and attributes for 3DPM CITS, which differ from the CSIP, are listed in the table. 

## Representation METS Files
The Representation METS files are used to describe the data structure as included in the data folder of each Representation (Product Model representations) via the structMap element and to reference additional descriptive and preservation metadata.

### Representation METS root element
CITS 3DPM does not change or extend any of the requirements for the Representation root element but particular notice is drawn to the specific requirements of a Representation METS root element and the specific content type attributes to be used in CITS 3DPM.

### Representation METS header element (element metsHdr)
There are no specific requirements for the header element in a CITS 3DPM Representation METS. The 3DPM Representation metsHdr element should comply with the metsHdr requirements in the appropriate Information Package profile and can be used to identify specific agents related to a Product Model Representation.

### Representation METS descriptive metadata section (element dmdSec)
There are no specific requirements in CITS 3DPM for the Representation METS Descriptive Metadata section.

### Representation METS administrative metadata section (element amdSec)
The Administrative Metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information;  source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as Administrative Metadata, specifically digital provenance metadata (following the available guidelines published by the Library of Congress): (http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf) and hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

As detailed provenance, authentication and technical metadata is required by LOTAR for each Product Information Model then CITS 3DPM strongly recommends the inclusion of a PREMIS file in the representation/metadata/preservation folder containing detailed metadata for: Verification events, Validation events, Digital Signatures and digital provenance information.

### Representation METS file metadata section (element fileSec)
The CSIP does not make the use of the METS fileSec element mandatory, but it is strongly recommended. In the 3D Product Model CITS, the use of the METS fileSec element at the Representation level becomes mandatory, such as to reference the Content Data Objects within each Representation and link to preservation information held within mandatory PREMIS files.

### Representation METS structural map (element structMap)
The METS structural map element is the only mandatory element in the METS specification and is hence mandatory within the Representation METS. There must be one structural map present in each Representation METS file following the requirements of the CSIP. As Authentication documentation SHOULD be included in each Representation within 3DPM CITS, there is also a mandatory requirement for a structMap division for the documentation/authentication folder. The specific requirements for elements, sub-elements and attributes for 3DPM CITS, which differ from the CSIP, are listed in the table. 
