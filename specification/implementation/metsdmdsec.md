### Root METS descriptive metadata section (element dmdSec)

According to LOTAR: “the producer creates a set of Descriptive Information (DI), which includes archive metadata meeting the archives requirements (according to ISO 14721:2003 – OAIS).” Neither  CSIP or LOTAR make any assumptions regarding the use of specific descriptive metadata schemas and so this is left to the user organisation with a recommendation to use standardised or defined schemas.

There are no specific requirements in CITS 3D PM for the root METS descriptive metadata section.

### Root METS administrative metadata section (element amdSec)

The administrative metadata section contains four sub-sections each used to record different types of metadata for package content: technical metadata (element techMD) records technical metadata; rights metadata (element rightsMD) records intellectual property rights information; source metadata (element sourceMD) records descriptive technical or rights metadata for an analogue source for a digital object; and digital provenance metadata (element digiprovMD) records digital preservation information, e.g. audit information for an object’s lifecycle.

The CSIP (and METS) categorise preservation metadata as administrative metadata, specifically digital provenance metadata (following the avaiable guidelines published by the Library of Congress): (<http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf>) and hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

As detailed Rights information is required by LOTAR for the package then CITS 3D PM recommends the inclusion of a PREMIS file in the metadata/preservation folder containing detailed Rights information as described in [Section 4.5.3](#Section4.5.3) and any digital provenance metadata as described in the CITS Preservation Metadata.

### Root METS file metadata section (element fileSec)

The CSIP does not make use of the METS fileSec element mandatory, but it is strongly recommended. In the 3D PM CITS the use of the METS fileSec element at the package level becomes mandatory, such as to reference the METS files within each representation.
