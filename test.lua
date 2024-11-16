-- Function to send a message to Discord
local function sendWebhookMessage(executorName)
    local message = {
        content = executorName .. " has executed the Roblox executor!"
    }
    
    local jsonMessage = HttpService:JSONEncode(message)
    
    -- Sending the HTTP request
    local success, response = pcall(function()
        return HttpService:PostAsync(webhookUrl, jsonMessage, Enum.HttpContentType.ApplicationJson)
    end)
    
    if not success then
        warn("Failed to send webhook: " .. response)
    end
end

-- Call the function when the script is executed
sendWebhookMessage(player.Name)
