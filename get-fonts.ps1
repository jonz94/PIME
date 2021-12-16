chcp 65001 | Out-Null;
Add-Type -AssemblyName PresentationCore;

$families = [Windows.Media.Fonts]::SystemFontFamilies;

foreach ($family in $families) {
    $name = $family.FamilyNames[[Windows.Markup.XmlLanguage]::GetLanguage('zh-tw')]
    # $name = $family.FamilyNames[[Windows.Markup.XmlLanguage]::GetLanguage('zh-cn')]
    # $name = $family.FamilyNames[[Windows.Markup.XmlLanguage]::GetLanguage('en-us')]
    Write-Output $name
}
