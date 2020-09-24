*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verifying Fields in Request Demo
    Click Link    Request a Demo
    Wait Until Element Is Visible    class:frm_fields_container
    Page Should Contain Element    name:item_meta[93]
    Page Should Contain Element    name:item_meta[94]
    Page Should Contain Element    name:item_meta[95]
    Page Should Contain Element    name:item_meta[96]
    Page Should Contain Element    name:item_meta[97]
    Page Should Contain Element    class:frm_final_submit