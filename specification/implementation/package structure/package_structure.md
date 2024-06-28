# Package Structure
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
