# Introduction
## Purpose
The purpose of this document is to describe the Content Information Type Specification (CITS) for 3D Product Models (3D PM). The specification is designed to be used for the transfer to archives as well as for records exchange between different 3D Product Information Model  systems. The specification is supported by METS profiles for the Root and Representation METS files and accompanying Guideline document.
## Scope
Use of 3D data is widespread across many domains, with a plethora of applications and data formats. This 3D Product Model  content specification limits its scope to the area of 3D digital product data such as computer aided design (CAD) or product data model (PDM) data. There is an international standard for the long term archiving of this class of data in the LOTAR “Long Term Archiving and Retrieval of digital technical product information”[^1],  which is published as the EN and NAS 9300 series. However although LOTAR extensively references and  extends ISO 14721 the “Open reference model for Archiving Information System”, (OAIS) it does not extend into areas detailed in the E-ARK common specification for information packages (CSIP). LOTAR also references and builds on ISO 10303, the Standard for the Exchange of Product model data (STEP) and so with this E-ARK 3D PM CITS we have the opportunity to add to a layered standards model as seen below.
[^1]: https://lotar-international.org/lotar-standard/

## Layered Data Model
This section introduces the role of the CITS 3D PM and its dependencies on the basic structures of the Information Package.

> This specification is created based on the requirements of the Common Specification for Information Packages (CSIP),  the specification for Submission Information Packages (E-ARK SIP) and the specification for Archival Information Packages (E-ARK AIP). To fully understand its requirements, we highly recommend that users review the requirements and the terminology of the source documents, before using this specification.

The data model structure is based on a layered approach for information package definitions (Figure 2). The Common Specification for Information Packages (CSIP) forms the outermost layer. The general SIP, AIP and DIP specifications add respectively, submission, archiving and dissemination information to the CSIP specification. The third layer of the model represents specific content information type specifications, such as this 3D PM specification. Additional layers for business-specific specifications and local variant implementations of any specification can be added to suit the needs of the organisation.

<a name="fig2"></a>
![Data Model Structure](/specification/figs/fig_2_data_model_structure.svg "Data Model Structure")

**Figure 2:** Data Model Structure

Every level in the data model structure inherits metadata entities and elements from the higher levels. In order to increase adoption, a flexible schema has been developed. This will allow for extension points where the schema in each layer can be extended to accommodate additional information on the next specific layer until, finally, the local implementation can add specific entities or metadata elements to satisfy specific local needs. Extension points can be implemented by:

+ Embedding foreign extension schemas (in the same way as supported by [METS](http://www.loc.gov/standards/mets/) and  [PREMIS](http://www.loc.gov/standards/premis/) These both support increasing the granularity of existing metadata elements by using more detailed data structures as well as adding new types of metadata.
+ Substituting metadata schemas for standards more appropriate for the local implementation. 

The structure allows the addition of more detailed requirements for metadata entities, for example, by:
+ Increasing the granularity of metadata elements by using more detailed data structures, or 
+ Adding local controlled vocabularies.

The CITS 3D PM builds on the existing LOTAR standard for “long-term archiving of digital technical product information”  which in itself builds on the standard for an Open Archival Information System (OAIS, ISO 14721) and the Standard for the Exchange of Product Model Data (STEP, ISO 1303). So for CITS 3D PM in particular we have a layered data model as seen in  ([Figure 3](#fig3)). Note however that compliance with LOTAR or STEP is not mandatory within 3D PM but is recommended. Individual organisational archiving strategies for 3D Product Model data may or may not include STEP representations of model data and may include all or some of the elements of the LOTAR standard. The 3D PM CITS provides for accomodation of these standards but makes compliance an organisational choice.

<a name="fig3"></a>
![LAYERED DATA MODEL](/specification/figs/fig_3_layered_data_model.svg "CITS #DPM Layered Data Model.")

**Figure 3:** CITS 3D PM Layered Data Model.
