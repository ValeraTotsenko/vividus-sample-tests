Description: Demo test for pilot-gps

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|loading_spinner | By.cssSelector(.x-splash-icon) |
|login-field | By.id(login_in-inputEl) |
|password-field| By.id(password_in-inputEl) |
|enter-button     | By.id(button-1021-btnEl) |
|events-tab         | By.id(button-1446-btnEl) |
|history-tab         | By.id(menu2-btnEl) |

Scenario: scenario description
Given I am on page with URL `https://pilot-gps.com/`
When I wait until element located by `<loading_spinner>` disappears
When I wait until element located by `<login-field>` appears
When I enter `demo` in field located by `<login-field>`
When I enter `demo` in field located by `<password-field>`
When I click on element located by `<enter-button>`
When I wait until element located by `<loading_spinner>` disappears
Then page title is equal to `Tracking`
When I wait until element located by `<events-tab>` appears
When I click on element located by `<events-tab>`
When I wait until element located by `<history-tab>` appears
When I click on element located by `<history-tab>`
