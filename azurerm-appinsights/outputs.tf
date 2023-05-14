output "instrumentation_key" {
    description = "The Instrumentation Key for the Application Insights component"
    value = azurerm_application_insights.appinsights.instrumentation_key
}

output "connection_string" {
    description = "The Connection String for the Application Insights component. (Sensitive)"
    value = azurerm_application_insights.appinsights.connection_string
}
