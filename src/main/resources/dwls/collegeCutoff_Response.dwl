%dw 2.0
output application/json
---
if (vars.initialPayload.collegePreference.collegeId[0] as String == payload.collegeId[0] as String)
    if((vars.initialPayload.collegePreference.collegeId[1] as String == payload.collegeId[1] as String) and (vars.initialPayload.collegePreference.collegeId[2] as String == payload.collegeId[2] as String))
        {
            "collegeCutoffs":{
                "preference1": payload[0],
                "preference2": payload[1],
                "preference3": payload[2]
            }
        }
    else 
        {
            "collegeCutoffs":{
                "preference1": payload[0],
                "preference2": payload[2],
                "preference3": payload[1]
            }
        }
else if (vars.initialPayload.collegePreference.collegeId[0] as String == payload.collegeId[1] as String)
    if((vars.initialPayload.collegePreference.collegeId[1] as String == payload.collegeId[2] as String) and (vars.initialPayload.collegePreference.collegeId[2] as String == payload.collegeId[0] as String))
        {
            "collegeCutoffs":{
                "preference1": payload[1],
                "preference2": payload[2],
                "preference3": payload[0]
            }
        }
    else 
        {
            "collegeCutoffs":{
                "preference1": payload[1],
                "preference2": payload[0],
                "preference3": payload[2]
            }
        }
else
    if((vars.initialPayload.collegePreference.collegeId[1] as String == payload.collegeId[1] as String) and (vars.initialPayload.collegePreference.collegeId[2] as String == payload.collegeId[0] as String))
        {
            "collegeCutoffs":{
                "preference1": payload[2],
                "preference2": payload[1],
                "preference3": payload[0]
            }
        }
    else 
        {
            "collegeCutoffs":{
                "preference1": payload[2],
                "preference2": payload[0],
                "preference3": payload[1]
            }
        }