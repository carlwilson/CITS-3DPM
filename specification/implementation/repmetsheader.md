#### Representation METS header element (element metsHdr)

There are no specific requirements for the header element in a CITS 3D PM Representation METS. The 3D PM Representation metsHdr element should comply with the metsHdr requirements in the appropriate Information Package profile and can be used to identify specific agents related to a Product Model Representation.

#### Representation METS descriptive metadata section (element dmdSec)

There are no specific requirements in CITS 3D PM for the Representation METS Descriptive Metadata section.

#### Representation METS administrative metadata section (element amdSec)

The Administrative Metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information;  source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as Administrative Metadata, specifically digital provenance metadata (following the available guidelines published by the Library of Congress): (<http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf>) and hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

As detailed provenance, authentication and technical metadata is required by LOTAR for each Product Information Model then CITS 3D PM strongly recommends the inclusion of a PREMIS file in the representation/metadata/preservation folder containing detailed metadata for: Verification events, Validation events, Digital Signatures and digital provenance information.
