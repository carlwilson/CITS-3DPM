# Introduction

## Purpose

The purpose of this document is to accompany the CITS 3D Product Model Data Specification and to provider context and rationale for the principles and requirements of the specification. The specification is designed to be used for the transfer to archives as well as for records exchange between different 3D Product Information Model  systems. The specification is supported by METS profiles for the Root and Representation METS files and this accompanying Guideline document.

## Scope
Use of 3D data is widespread across many domains, with a plethora of applications and data formats. This 3D Product Model  content specification limits its scope to the area of 3D digital product data such as computer aided design (CAD) or product data model (PDM) data. There is an international standard for the long term archiving of this class of data in the LOTAR “Long Term Archiving and Retrieval of digital technical product information”[^1],  which is published as the EN and NAS 9300 series. However although LOTAR extensively references and  extends ISO 14721 the “Open reference model for Archiving Information System”, (OAIS) it does not extend into areas detailed in the E-ARK common specification for information packages (CSIP). LOTAR also references and builds on ISO 10303, the Standard for the Exchange of Product model data (STEP) and so with this E-ARK 3D PM CITS we have the opportunity to add to a layered standards model as seen below in [Section 2.3](#layered-data-model).

## Layered Data Model

This section introduces the role of the CITS 3D PM and its dependencies on the basic structures of the Information Package.

> This specification is created based on the requirements of the Common Specification for Information Packages (CSIP),  the specification for Submission Information Packages (E-ARK SIP) and the specification for Archival Information Packages (E-ARK AIP). To fully understand its requirements, we highly recommend that users review the requirements and the terminology of the source documents, before using this specification.

The data model structure is based on a layered approach for information package definitions (Figure 2). The Common Specification for Information Packages (CSIP) forms the outermost layer. The general SIP, AIP and DIP specifications add respectively, submission, archiving and dissemination information to the CSIP specification. The third layer of the model represents specific content information type specifications, such as this 3D PM specification. Additional layers for business-specific specifications and local variant implementations of any specification can be added to suit the needs of the organisation.

<a name="fig2"></a>

![Data Model Structure](figs/fig_2_data_model_structure.svg "Data Model Structure")

**Figure 2:** Data Model Structure

Every level in the data model structure inherits metadata entities and elements from the higher levels. In order to increase adoption, a flexible schema has been developed. This will allow for extension points where the schema in each layer can be extended to accommodate additional information on the next specific layer until, finally, the local implementation can add specific entities or metadata elements to satisfy specific local needs. Extension points can be implemented by:

* Embedding foreign extension schemas (in the same way as supported by [METS](http://www.loc.gov/standards/mets/) and  [PREMIS](http://www.loc.gov/standards/premis/) These both support increasing the granularity of existing metadata elements by using more detailed data structures as well as adding new types of metadata.
* Substituting metadata schemas for standards more appropriate for the local implementation.

The structure allows the addition of more detailed requirements for metadata entities, for example, by:

* Increasing the granularity of metadata elements by using more detailed data structures, or
* Adding local controlled vocabularies.

The CITS 3D PM builds on the existing LOTAR standard for “long-term archiving of digital technical product information”  which in itself builds on the standard for an Open Archival Information System (OAIS, ISO 14721) and the Standard for the Exchange of Product Model Data (STEP, ISO 1303). So for CITS 3D PM in particular we have a layered data model as seen in  ([Figure 3](#fig3)). Note however that compliance with LOTAR or STEP is not mandatory within 3D PM but is recommended. Individual organisational archiving strategies for 3D Product Model data may or may not include STEP representations of model data and may include all or some of the elements of the LOTAR standard. The 3D PM CITS provides for accomodation of these standards but makes compliance an organisational choice.

<a name="fig3"></a>
![LAYERED DATA MODEL](figs/fig_3_layered_data_model.svg "CITS #DPM Layered Data Model.")

**Figure 3:** CITS 3D PM Layered Data Model.

[^1]: <https://lotar-international.org/lotar-standard/>

## File Formats
3D product model file formats contain data representing the model and the necessary information for its display and editing plus contextual metadata to aid interpretation and usability. Most CAD software and hence file formats are proprietary, but open, neutral formats exist and can be produced from proprietary formats by direct translation or direct export from the authoring software. 

Use of file formats that offer the best long-term prospects in terms of usability, accessibility, and sustainability is recommended and is generally achieved  with formats that have wide usage, have open specifications, and are independent of specific software or developers. Neutral and open file formats are available, and there may be options to convert proprietary file formats to them; but there is risk which should be assessed for information loss in the transformation. Keeping original, proprietary formats is not ideal, but with the risk of loss of information in transforming file formats, the inclusion of original and format derivations in archival packages is recommended. 

The following are neutral product model file formats, used primarily for data exchange[^2]:

[^2]: <https://en.wikipedia.org/wiki/CAD_data_exchange>

**DXF (Drawing eXchange Format)**
Developed by Autodesk in 1982 as their data interoperability solution between AutoCAD and other CAD systems. The DXF is primarily 2D-based and its format is a tagged data representation of all the information contained in an AutoCAD drawing file, which means that each data element in the file is preceded by an integer number that is called a group code indicating the type of following data element. As most commercial application software developers have chosen to support Autodesk's native DWG as the format for AutoCAD data interoperability, DXF has become less useful.

**VDA-FS (Verband der Automobilindustrie – Flächenschnittstelle)**
Created by the German Association of the Automotive Industry in 1982 as an interoperability method for free-form surfaces. This format differs from other formats in that it only supports the communication of free-form curve and surface data with associated comments, but no other geometric or non-geometric entities. Therefore, it is limited to representations by parametric polynomials, but this covers the great majority of free-form CAD systems. It includes Bézier, B-Spline and Coons tensor product types of surfaces and corresponding curves. The VDA-FS specification is released in the German Industrial Standard DIN 66301.

**PDES (Product Data Exchange Specification)**
Originated in 1988 under the Product Definition Data Interface (PDDI) study done by McDonnell Aircraft Corporation on behalf of the U.S. Air Force. PDES was designed to completely define a product for all applications over its expected life cycle, including geometry, topology, tolerances, relationships, attributes, and features necessary to completely define a part or assembly of parts. PDES can be viewed as an expansion of IGES where organizational and technological data have been added. In fact, the later PDES contained IGES. The development of PDES under the guidance of the IGES organization and in close collaboration with the International Organization for Standardization (ISO) led to the birth of STEP.

**STEP (ISO 10303 – STandard for the Exchange of Product model data)**
The work with the ISO 10303 standard was initiated in 1984 and initially published in 1994, with the objective to standardize the exchange of product data between Product Lifecycle Management (PLM) systems. It is a very comprehensive set of specifications covering many different product types and many life cycle phases. STEP uses the neutral ISO 10303-11 format, also known as an EXPRESS schema. EXPRESS defines not only the data types but also relations and rules applying to them. STEP supports data exchange, data sharing and data archiving. For data exchange, STEP defines the transitory form of the product data that is to be transferred between a pair of applications. It supports data sharing by providing access to and operation on a single copy of the same product data by more than one application, potentially simultaneously. STEP may also be used to support the development of the archive product data itself. STEP consists of several hundred documents called parts. Every year new parts are added or new revisions of older parts are released. This makes STEP the biggest standard within ISO. The 200-series parts STEP are called Application Protocols (AP), with the specific parts directly related to CAD systems:

* 203 (Configuration controlled 3D designs of mechanical parts and assemblies) – Mainly used for 3D design and product structure. A subset of AP214 but most widely used.
* 210 (Electronic assembly, interconnect and packaging design) – CAD systems for printed circuit board.
* 212 (Electrotechnical design and installation) – CAD systems for electrical installation and cable harness.
* 214 (Core data for automotive mechanical design processes) – How STEP is represented in a text file for interchange.
* 238 (STEP-NC Application interpreted model for computerized numerical controllers) – CAD, CAM, and CNC machining process information.
* 242 (Managed model based 3D engineering) – the merging of the two leading STEP application protocols, AP 203 and AP 214.

**Parasolid XT**
Part of the Parasolid geometric modeling kernel originally developed by Shape Data and currently owned by Siemens Digital Industries Software. Parasolid can represent wireframe, surface, solid, cellular and general non-manifold models. It stores topological and geometric information defining the shape of models in transmitting files. These files have a published format so that applications can have access to Parasolid models without necessarily using the Parasolid kernel. Parasolid is capable of accepting data from other modeler formats. Its unique tolerant modeling functionality can accommodate and compensate for less accurate data.

**IGES (Initial Graphics Exchange Specification)**
An outdated format originated in late 1979 and initially published by the American National Standards Institute (ANSI) in 1980 preceding the large-scale deployment of the CAD technology in the industry. This file format considers the product definition as a file of entities, with each entity being represented in an application-independent format. After the initial release of STEP (ISO 10303) in 1994, interest in further development of IGES declined, and Version 5.3 (1996) was the last published standard.
