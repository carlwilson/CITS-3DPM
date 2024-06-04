# Package Structure
The CITS 3D Product Model information structure inherits its package structure from the E-ARK Common Specification for Information Packages and is shown in ([Figure 4](#fig4)). It can be seen that additional folders have been added for authentication documentation at root and representation level but otherwise the structure is identical. 

<a name="fig4"></a>
![Example Information Package Folder Structure](/specification/figs/fig_4_package_structure.svg "Example Information Package Folder Structure")

**Figure 4:** Example Information Package Folder Structure

A 3D Product Model Information package can consist of one to many Representations comprising Product Information Models of the same product. It is likely for example that a Product Model archival package will at minimum contain a Representation in Native Format and one in Standardised Open Format (e.g. STEP). As described in LOTAR, long-term usability of proprietary Native Format data is a risk and  conversely open derivations such as STEP are at risk of losing some properties from the original.

LOTAR requires the inclusion of information to support Validation and Verification of the data and representations, including:
+	Validation Properties Rules Data
+	Validation Properties
+	Validation reports
+	Data Quality Rules (Verification)
+	Verification reports
