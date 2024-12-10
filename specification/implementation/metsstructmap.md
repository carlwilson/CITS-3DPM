#### Root METS structural map (element structMap)

The METS structural map element is the only mandatory element in the METS specification. It provides an overview of the components described in the METS document. It can also link the elements in the structure to associated content files and metadata. In CITS 3D PM the package structMap describes the high-level structure of all the content in the package and links to at least one Representation. To allow for the inclusion of multiple Product Model Representations in each package, the CITS 3D PM specification requires that each Product Model has a discrete div element.

The Representation METS.xml is referenced from the package METS.xml via the <mptr> element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a Representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP105).

The structural map should reference the documentation/authentication file group located in the documentation/authentication sub-folder by means of a separate div element.

The structural map should reference the documentation/other file group located in the documentation/other sub-folder by means of a separate div element.

Implementers are welcome to define additional structural maps for their internal purposes by repeating the structMap element. The specific requirements for elements, sub-elements and attributes for 3D PM CITS, which differ from the CSIP, are listed in the table. 
