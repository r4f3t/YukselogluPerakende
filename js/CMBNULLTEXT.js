var nullText = "ÜRETİCİ";

function OnLostFocus(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText;
}




//**********************************************************************************************************

var nullText2 = "MODEL";

function OnLostFocus2(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText2;
}


//**********************************************************************************************************

var nullText3 = "MODEL TİPİ";

function OnLostFocus3(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText3;
}



//**********************************************************************************************************

var nullText4 = "MOTOR GÜCÜ";

function OnLostFocus4(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText4;
}



//**********************************************************************************************************

var nullText5 = "ÜRETİM TARİHİ";

function OnLostFocus5(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText5;
}



//**********************************************************************************************************

var nullText6 = "YAKIT TÜRÜ";

function OnLostFocus6(s, e) {
    if (s.GetValue() != "" && s.GetValue() != null)
        return;

    var input = s.GetInputElement();
    input.style.color = "gray";
    input.value = nullText6;
}





//**********************************************************************************************************
function OnGotFocus(s, e) {
    var input = s.GetInputElement();
    if (input.value == nullText || input.value == nullText2 ||input.value == nullText3 ||input.value == nullText4 ||input.value == nullText5 || input.value == nullText6) {
        input.value = "";
        input.style.color = "black";
    }
}
function OnInit(s, e) {
    OnLostFocus(s, e);
}

function OnInit2(s, e) {
    OnLostFocus2(s, e);
}

function OnInit3(s, e) {
    OnLostFocus3(s, e);
}

function OnInit4(s, e) {
    OnLostFocus4(s, e);
}

function OnInit5(s, e) {
    OnLostFocus5(s, e);
}

function OnInit6(s, e) {
    OnLostFocus6(s, e);
}