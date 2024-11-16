local response = syn.request({
    Url = 'https://discord.com/api/webhooks/1307143881560817756/Nvu6XQBBZJrRxx9vOtGPxZyyGsk_3d0DgHUdRCKGNxTdDllkpES1hgTB5MldYiUZCKqr',  -- Replace with your Discord webhook URL
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'  -- Specifies the content type
    },
    Body = game:GetService('HttpService'):JSONEncode({
        content = 'Someone Executed My Candy Script!'  -- The message you want to send
    })
})
