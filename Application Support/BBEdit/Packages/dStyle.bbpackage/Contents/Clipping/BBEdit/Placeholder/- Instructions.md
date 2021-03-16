# BBEdit Placeholder instructions

A **BBEdit placeholder** is a portion of text prefixed with `<#` and suffixed with `#>`, e.g. `<#labelName#>`.

Striking TAB on your keyboard when a placeholder is present causes the pointy brackets and their contents to be selected — greatly reducing the time and effort to find and edit these portions of the document. Tabbing through the document will highlight each placeholder ready to be replaced when one starts typing.

For example with a memorandum template — select the placeholder using ⇥ or ⇤ (e.g. ⇧ ⇥), you can start typing to replace it with the appropriate formality.

--
	<#sign off#>
	Mr Right

## Clipping items
 * Placeholder:                 <\##SELECTIONORINSERTION#\#>
 * Placeholder (optional):      <\#? #SELECTIONORINSERTION#\#>
 * Placeholder (optional arg):  <\#* #SELECTIONORINSERTION#\#>
 * Placeholder Start:           \#PLACEHOLDERSTART\#
 * Placeholder End:             \#PLACEHOLDEREND\#

## Script

The script remove the placeholder delimiters AND let you select a label if you consider the text between the placeholder delimiters as a label.
 * removePlaceHolder.scpt

This is the expected pattern: `[<#][CUSTOM_DELIMITER][=|=][|document_purpose|]label1[|label2][#>]`

_Line break within placeholders is not supported, use a clipping._

Source: [Oliver Boermans](https://github.com/ollicle/BBEdit-Extract-Placeholder)
<xsl:message terminate="yes">
	<#code#>
</xsl:message>
### Options
you could pre-filled the placeholder with the most frequent formality:

	--
	<#Salutations#>
	Mr Right-Now

With this placeholder selected, executing the script will remove the placeholder delimiters.

#### Pre-filled labels
Alternatively, you could pre-filled several labels:

	--
	<#Salutations|Ciao#>
	Mr Right-Now

With this placeholder selected, executing the script will remove the placeholder delimiters AND let you select a label.

#### Document the placeholder purpose by prefixing the first item with a delimiter

	--
	<#|Sign off|Salutations|Ciao|Cheers|Love#>
	Mr Right-Now

#### Using a custom delimiter such as $ via “$=|=”

	--
	<#$=|=Salutations$Ciao$Cheers$Love#>
	Mr Right-Now

	--
	<#$=|=$Salutations$Ciao$Cheers$Love#>
	Mr Right-Now

#### Using NO delimiter AND inserting the whole placeholder text via “$=|”

	--
	<#=|=Salutations | Ciao $ Hasta la vista, baby#>
	Mr Right-Now

#### No placeholders

Upon executing the script, if a BBEdit placeholder is not found within the selection, the extent of selection is used in its place.
