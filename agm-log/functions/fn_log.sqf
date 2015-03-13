private ["_string"];

// Write down medical settings to A3G Framework Diary
_string = format [
"<font color='#ff0000'>AGM Medical</font><br/><br/>
CoefDamage: %1<br/>
CoefBleeding: %2<br/>
CoefPain: %3<br/>
CoefNonMedic: %4<br/>
<br/>
MaxUnconsciousnessTime: %5<br/>
AllowNonMedics: %6<br/>
RequireDiagnosis: %7<br/>
PreventInstaDeath: %8<br/>
PreventDeathWhileUnconscious: %9<br/>
SingleBandage: %10<br/>
AllowChatWhileUnconscious: %11<br/>
EnableOverdosing: %12<br/>
RequireMEDEVAC: %13<br/>
AutomaticWakeup: %14<br/>
DisableScreams: %15<br/>",
  AGM_Medical_CoefDamage,
  AGM_Medical_CoefBleeding,
  AGM_Medical_CoefPain,
  AGM_Medical_CoefNonMedic,
  AGM_Medical_MaxUnconsciousnessTime,
  AGM_Medical_AllowNonMedics,
  AGM_Medical_RequireDiagnosis,
  AGM_Medical_PreventInstaDeath,
  AGM_Medical_PreventDeathWhileUnconscious,
  AGM_Medical_SingleBandage,
  AGM_Medical_AllowChatWhileUnconscious,
  AGM_Medical_EnableOverdosing,
  AGM_Medical_RequireMEDEVAC,
  AGM_Medical_AutomaticWakeup,
  AGM_Medical_DisableScreams
];

if ( !player diarySubjectExists "A3GFramework" ) then {
  player createDiarySubject ["A3GFramework", "A3G Framework"];
};
player createDiaryRecord["A3GFramework", ["AGM Settings", _string]];