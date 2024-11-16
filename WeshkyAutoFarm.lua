local response = syn.request({
    Url = 'https://discord.com/api/webhooks/1302125178381406289/rQVnFy43mDY6ALBbscSUUvcwAFmV_AoHEFIns8_GH4oYJFKvSx3srfRxGO-hOFx_diDj',  -- Replace with your Discord webhook URL
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'  -- Specifies the content type
    },
    Body = game:GetService('HttpService'):JSONEncode({
        content = 'Someone Executed Weshky Auto Fatm Script!'  -- The message you want to send
    })
})
