.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
.super Ljava/lang/Object;
.source "ControlMessage.java"


# static fields
.field public static final FLAGS_PASTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ControlMessage"

.field public static final TYPE_BACK_OR_SCREEN_ON:I = 0x4

.field public static final TYPE_COLLAPSE_NOTIFICATION_PANEL:I = 0x6

.field public static final TYPE_EXPAND_NOTIFICATION_PANEL:I = 0x5

.field public static final TYPE_ExpandingVisionSwitch_TEXT:I = 0xd

.field public static final TYPE_GET_CLIPBOARD:I = 0x7

.field public static final TYPE_HAVANODEALWITH_TEXT:I = 0x1869f

.field public static final TYPE_INJECT_KEYCODE:I = 0x0

.field public static final TYPE_INJECT_SCROLL_EVENT:I = 0x3

.field public static final TYPE_INJECT_TEXT:I = 0x1

.field public static final TYPE_INJECT_TOUCH_EVENT:I = 0x2

.field public static final TYPE_INPUT_TEXT:I = 0xb

.field public static final TYPE_PCINFO_ANDKEYBoard_TEXT:I = 0xc

.field public static final TYPE_ROTATE_DEVICE:I = 0xa

.field public static final TYPE_SET_CLIPBOARD:I = 0x8

.field public static final TYPE_SET_SCREEN_POWER_MODE:I = 0x9


# instance fields
.field private action:I

.field private buttons:I

.field private flags:I

.field private hScroll:I

.field private keycode:I

.field private metaState:I

.field private pointerId:J

.field private position:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

.field private pressure:F

.field private text:Ljava/lang/String;

.field private type:I

.field private vScroll:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static createEmpty(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 140
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 141
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    iput p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 142
    return-object v0
.end method

.method public static createExpandingVisionSwitchText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 93
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/16 v1, 0xd

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 94
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 95
    return-object v0
.end method

.method public static createHaveNoDealWithText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 77
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const v1, 0x1869f

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 78
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 79
    return-object v0
.end method

.method public static createInjectInputText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 70
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/16 v1, 0xb

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 71
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public static createInjectKeycode(III)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4
    .param p0, "action"    # I
    .param p1, "keycode"    # I
    .param p2, "metaState"    # I

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 53
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 54
    iput p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->action:I

    .line 55
    iput p1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->keycode:I

    .line 56
    iput p2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->metaState:I

    .line 57
    const-string v1, "ControlMessage12334"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public static createInjectScrollEvent(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;II)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "position"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .param p1, "hScroll"    # I
    .param p2, "vScroll"    # I

    .prologue
    .line 111
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 112
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/4 v1, 0x3

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 113
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->position:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    .line 114
    iput p1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->hScroll:I

    .line 115
    iput p2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->vScroll:I

    .line 116
    return-object v0
.end method

.method public static createInjectText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 63
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 64
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 65
    return-object v0
.end method

.method public static createInjectTouchEvent(IJLcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;FI)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 5
    .param p0, "action"    # I
    .param p1, "pointerId"    # J
    .param p3, "position"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .param p4, "pressure"    # F
    .param p5, "buttons"    # I

    .prologue
    .line 99
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 100
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 101
    iput p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->action:I

    .line 102
    iput-wide p1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pointerId:J

    .line 103
    iput p4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pressure:F

    .line 104
    iput-object p3, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->position:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    .line 105
    iput p5, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->buttons:I

    .line 106
    const-string v1, "ControlMessage123"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public static createPCANDKEYBORADInfoText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 84
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/16 v1, 0xc

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 85
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 86
    return-object v0
.end method

.method public static createSetClipboard(Ljava/lang/String;Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paste"    # Z

    .prologue
    .line 120
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 121
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/16 v1, 0x8

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 122
    iput-object p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v1, 0x1

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->flags:I

    .line 126
    :cond_0
    return-object v0
.end method

.method public static createSetScreenPowerMode(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 133
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;-><init>()V

    .line 134
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/16 v1, 0x9

    iput v1, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    .line 135
    iput p0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->action:I

    .line 136
    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->action:I

    return v0
.end method

.method public getButtons()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->buttons:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->flags:I

    return v0
.end method

.method public getHScroll()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->hScroll:I

    return v0
.end method

.method public getKeycode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->keycode:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->metaState:I

    return v0
.end method

.method public getPointerId()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pointerId:J

    return-wide v0
.end method

.method public getPosition()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->position:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pressure:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    return v0
.end method

.method public getVScroll()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->vScroll:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlMessage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->metaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->keycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->buttons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pointerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->pressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->position:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->hScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->vScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
