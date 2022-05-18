.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;
.super Ljava/lang/Object;
.source "ControlMessageReader.java"


# static fields
.field public static final CLIPBOARD_TEXT_MAX_LENGTH:I = 0xffc

.field static final INJECT_KEYCODE_PAYLOAD_LENGTH:I = 0x9

.field static final INJECT_SCROLL_EVENT_PAYLOAD_LENGTH:I = 0x14

.field public static final INJECT_TEXT_MAX_LENGTH:I = 0x12c

.field static final INJECT_TOUCH_EVENT_PAYLOAD_LENGTH:I = 0x1b

.field private static final RAW_BUFFER_SIZE:I = 0x1000

.field static final SET_CLIPBOARD_FIXED_PAYLOAD_LENGTH:I = 0x1

.field static final SET_SCREEN_POWER_MODE_PAYLOAD_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ControlMessageReader"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final rawBuffer:[B

.field private final textBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->rawBuffer:[B

    .line 27
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->rawBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    .line 28
    const/16 v0, 0xffc

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    .line 32
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    return-void
.end method

.method private parseExpadingVisionSwitchText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInputString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "text":Ljava/lang/String;
    const-string v1, "ControlMessageReader889977"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createExpandingVisionSwitchText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parseInjectInputText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInputString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "text":Ljava/lang/String;
    const-string v1, "ControlMessageReader889977"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createInjectInputText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parseInjectKeycode()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 5

    .prologue
    .line 124
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 130
    :goto_0
    return-object v3

    .line 127
    :cond_0
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(B)I

    move-result v0

    .line 128
    .local v0, "action":I
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 129
    .local v1, "keycode":I
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 130
    .local v2, "metaState":I
    invoke-static {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createInjectKeycode(III)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v3

    goto :goto_0
.end method

.method private parseInjectScrollEvent()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 5

    .prologue
    .line 229
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    .line 230
    const/4 v3, 0x0

    .line 235
    :goto_0
    return-object v3

    .line 232
    :cond_0
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->readPosition(Ljava/nio/ByteBuffer;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    move-result-object v1

    .line 233
    .local v1, "position":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 234
    .local v0, "hScroll":I
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 235
    .local v2, "vScroll":I
    invoke-static {v1, v0, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createInjectScrollEvent(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;II)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v3

    goto :goto_0
.end method

.method private parseInjectText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createInjectText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parseInjectTouchEvent()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 9

    .prologue
    .line 214
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/16 v8, 0x1b

    if-ge v7, v8, :cond_0

    .line 215
    const/4 v7, 0x0

    .line 225
    :goto_0
    return-object v7

    .line 217
    :cond_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(B)I

    move-result v1

    .line 218
    .local v1, "action":I
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 219
    .local v2, "pointerId":J
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->readPosition(Ljava/nio/ByteBuffer;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    move-result-object v4

    .line 221
    .local v4, "position":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v0

    .line 223
    .local v0, "pressureInt":I
    const v7, 0xffff

    if-ne v0, v7, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 224
    .local v5, "pressure":F
    :goto_1
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 225
    .local v6, "buttons":I
    invoke-static/range {v1 .. v6}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createInjectTouchEvent(IJLcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;FI)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v7

    goto :goto_0

    .line 223
    .end local v5    # "pressure":F
    .end local v6    # "buttons":I
    :cond_1
    int-to-float v7, v0

    const/high16 v8, 0x47800000    # 65536.0f

    div-float v5, v7, v8

    goto :goto_1
.end method

.method private parseInputString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 146
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v1

    .line 149
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v0

    .line 150
    .local v0, "len":I
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 153
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 154
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private parseNotDealWithText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInputString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "text":Ljava/lang/String;
    const-string v1, "ControlMessageReader889977"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createHaveNoDealWithText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parsePCANDKEYBOARDInfoText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4

    .prologue
    .line 196
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInputString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "text":Ljava/lang/String;
    const-string v1, "ControlMessageReader889977"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 201
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createPCANDKEYBORADInfoText(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parsePCInfoString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 158
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v0

    .line 162
    .local v0, "len":I
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 165
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 166
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private parseSetClipboard()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 239
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v2

    .line 242
    :cond_1
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    .local v0, "parse":Z
    :goto_1
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 247
    invoke-static {v1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createSetClipboard(Ljava/lang/String;Z)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    goto :goto_0

    .line 242
    .end local v0    # "parse":Z
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private parseSetScreenPowerMode()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    .line 254
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 255
    .local v0, "mode":I
    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createSetScreenPowerMode(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private parseString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 134
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 137
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v0

    .line 138
    .local v0, "len":I
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 141
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->textBuffer:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private static readPosition(Ljava/nio/ByteBuffer;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 260
    .local v2, "x":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 261
    .local v3, "y":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v1

    .line 262
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->toUnsigned(S)I

    move-result v0

    .line 263
    .local v0, "screenHeight":I
    const-string v4, "ControlMessageReader123345"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v4, "ControlMessageReader123345"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readPosition(1)  screenWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   screenHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v4, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    invoke-direct {v4, v2, v3, v1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;-><init>(IIII)V

    return-object v4
.end method

.method private static toUnsigned(B)I
    .locals 1
    .param p0, "value"    # B

    .prologue
    .line 273
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static toUnsigned(S)I
    .locals 1
    .param p0, "value"    # S

    .prologue
    .line 269
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public isFull()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->rawBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 7

    .prologue
    .line 56
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    const/4 v2, 0x0

    .line 120
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 61
    .local v3, "savedPosition":I
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 62
    .local v4, "type":I
    const/4 v1, 0x1

    .line 64
    .local v1, "hasDealWith":Z
    packed-switch v4, :pswitch_data_0

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    const/4 v1, 0x0

    .line 108
    :goto_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseNotDealWithText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    :cond_2
    :goto_2
    if-nez v2, :cond_0

    .line 118
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 66
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInjectKeycode()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 67
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 69
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInjectText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 70
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 72
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parsePCANDKEYBOARDInfoText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 73
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 75
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseExpadingVisionSwitchText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 76
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 78
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInjectInputText()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 79
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 81
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_5
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInjectTouchEvent()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 82
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 84
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_6
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseInjectScrollEvent()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 85
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 87
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_7
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseSetClipboard()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 88
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 90
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_8
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->parseSetScreenPowerMode()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 91
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 97
    .end local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :pswitch_9
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->createEmpty(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v2

    .line 98
    .restart local v2    # "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->isFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Buffer full, call next() to consume"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 44
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 45
    .local v0, "head":I
    const-string v2, "ControlMessageReader666"

    const-string v3, "read start = 000000000"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->rawBuffer:[B

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->rawBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 47
    .local v1, "r":I
    const-string v2, "ControlMessageReader666"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read end = 111111111  r + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 49
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Controller socket closed"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 53
    return-void
.end method
