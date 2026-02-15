-- Translation System in Lua

-- Table to hold translations
local translations = {}

-- Function to add a new translation
function addTranslation(language, key, value)
    if not translations[language] then
        translations[language] = {}
    end
    translations[language][key] = value
end

-- Function to translate a key to a specified language
function translate(language, key)
    if translations[language] and translations[language][key] then
        return translations[language][key]
    else
        return key -- return key if translation not found
    end
end

-- Function for smart listeners to respond to UI changes
function onChange(event)
    -- Handle event for language change or UI update
    if event.type == "languageChange" then
        local newLanguage = event.newLanguage
        -- Update UI texts based on new language
        updateUIText(newLanguage)
    end
end

-- Function to update UI text
function updateUIText(language)
    -- Assume we have some UI elements that need to be updated
    local uiElements = {"welcomeText", "exitButton", "startGameButton"}
    for _, element in ipairs(uiElements) do
        if translations[language] and translations[language][element] then
            -- Set the text of the UI element to the translated value
            setText(element, translations[language][element])
        end
    end
end

-- Dummy function for setting text in UI (to be implemented)
function setText(element, text)
    print("Setting text of " .. element .. " to: " .. text)
end