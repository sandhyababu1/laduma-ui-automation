Cypress.Commands.add("login", () => {
    cy.visit('https://laduma-identity.azurewebsites.net/Account/Login')
    cy.get('input[id="Username"]').type('alice')
    cy.get('input[id="Password"]').type('Pass123$')
    cy.get('.btn').contains('Login').click()
})