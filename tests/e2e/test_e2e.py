# tests/e2e/test_e2e.py

import pytest
from playwright.sync_api import expect  # <-- Added import

@pytest.mark.e2e
def test_hello_world(page, fastapi_server):
    page.goto('http://localhost:8000')
    assert page.inner_text('h1') == 'Hello World'

@pytest.mark.e2e
def test_calculator_add(page, fastapi_server):
    page.goto('http://localhost:8000')
    page.fill('#a', '10')
    page.fill('#b', '5')
    page.click('button:text("Add")')
    # Optional: You can also update this to use expect for consistency
    assert page.inner_text('#result') == 'Calculation Result: 15'

@pytest.mark.e2e
def test_calculator_divide_by_zero(page, fastapi_server):
    page.goto('http://localhost:8000')
    page.fill('#a', '10')
    page.fill('#b', '0')
    page.click('button:text("Divide")')
    # This waits for the text to appear (up to 5 seconds by default)
    expect(page.locator('#result')).to_have_text('Error: Cannot divide by zero!')