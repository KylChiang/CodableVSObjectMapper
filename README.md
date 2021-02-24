# CodableVSObjectMapper

比較將json string轉成custom model的寫法：
1. json String -> dictionary
2. json String -> codable model
3. json String -> Mappable model by ObjectMapper


|   | codable | Mappable |
| --- | --- | --- |
| model寫法 | 欄位值簡單寫 | 需熟悉寫法、並import pod |
| 取用model值難易度 | 要稍微處理過 | 較為簡潔 |
