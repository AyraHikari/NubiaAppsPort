.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static final DEVICE_ID_VIRTUAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Controller"

.field public static currentPCInfo:Ljava/lang/String;

.field public static jsonObject:Lorg/json/JSONObject;


# instance fields
.field private final charMap:Landroid/view/KeyCharacterMap;

.field private final connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

.field private final device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

.field flagWhileGetMessageForStop:Z

.field private lastTouchDown:J

.field private final pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private final pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final pointersState:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

.field private final sender:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    .line 51
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->currentPCInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;)V
    .locals 2
    .param p1, "device"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .param p2, "connection"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    .prologue
    const/16 v1, 0xa

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->charMap:Landroid/view/KeyCharacterMap;

    .line 80
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointersState:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

    .line 81
    new-array v0, v1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 82
    new-array v0, v1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->flagWhileGetMessageForStop:Z

    .line 85
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    .line 86
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    .line 87
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->initPointers()V

    .line 88
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    invoke-direct {v0, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->sender:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    .line 89
    return-void
.end method

.method public static getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private handleEvent()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->receiveControlMessage()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v22

    .line 150
    .local v22, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    if-eqz v2, :cond_0

    if-nez v22, :cond_2

    .line 151
    :cond_0
    const-string v2, "Controller123"

    const-string v3, "device = null"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v2, :cond_1

    .line 162
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getAction()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getKeycode()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getMetaState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->injectKeycode(III)Z

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getText()Ljava/lang/String;

    move-result-object v23

    .line 170
    .local v23, "msgPcInfoString":Ljava/lang/String;
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v19, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "usb_screen_projection_used"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    const-string v2, "usb_screen_projection_used"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->setJsonObject(Lorg/json/JSONObject;)V

    .line 177
    :cond_3
    :goto_1
    const-string v2, "gameCollectData"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const-string v3, "gameCollectData"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/GameCollectDataUtils;->saveGameCollectData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v15

    .line 254
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v2, "rms_keyboard_used"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const-string v2, "rms_keyboard_used"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/USBCollectDataInfoUtil;->sendUSBKeyBoaedPCInfo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 179
    :cond_5
    const-string v2, "frame_rate_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 180
    const/4 v2, 0x1

    const-string v3, "frame_rate_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_6

    const/16 v29, 0x1

    .line 181
    .local v29, "sendRateIs60":Z
    :goto_2
    invoke-static/range {v29 .. v29}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setCurrentSendRateIs60(Z)V

    goto/16 :goto_0

    .line 180
    .end local v29    # "sendRateIs60":Z
    :cond_6
    const/16 v29, 0x0

    goto :goto_2

    .line 182
    :cond_7
    const-string v2, "frame_bit_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 183
    const-string v2, "frame_bit_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 184
    .local v25, "num":I
    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->setIntValue2Save(I)I

    move-result v25

    .line 185
    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->changedWiredlessQualityMode(I)V

    goto/16 :goto_0

    .line 186
    .end local v25    # "num":I
    :cond_8
    const-string v2, "set_sound_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 187
    const-string v2, "set_sound_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 188
    .restart local v25    # "num":I
    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->changedSoundForNubiaMirror(I)V

    goto/16 :goto_0

    .line 189
    .end local v25    # "num":I
    :cond_9
    const-string v2, "set_mirrorclose_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    const-string v2, "Controller"

    const-string v3, "mirrorclose_from_pc"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 192
    :cond_a
    const-string v2, "set_sound_dts_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 193
    const-string v2, "Controller"

    const-string v3, "set_sound_dts_type"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "set_sound_dts_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 195
    .local v14, "dts_type":I
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 197
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_b

    .line 199
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 200
    .local v31, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 201
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SOUND_DTS_WIRED"

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2AudioForDtsUserSelected(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 205
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v31    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_b
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 206
    .restart local v31    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 207
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SOUND_DTS_WIREDLESS"

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    const-string v2, "changleitest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dts_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2AudioForDtsUserSelected(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 214
    .end local v14    # "dts_type":I
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v31    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_c
    const-string v2, "set_sound_dts_status"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 215
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "set_sound_dts_status"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v13, 0x1

    .line 217
    .local v13, "dts_switch":Z
    :goto_3
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "news 789901 dts_switch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    if-eqz v13, :cond_e

    .line 220
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DTSUtils;->turnOnDts(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 216
    .end local v13    # "dts_switch":Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_3

    .line 222
    .restart local v13    # "dts_switch":Z
    :cond_e
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/DTSUtils;->turnOffDts(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 226
    .end local v13    # "dts_switch":Z
    :cond_f
    const-string v2, "private_mode_switch"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 227
    const-string v2, "private_mode_switch"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    const/16 v27, 0x1

    .line 228
    .local v27, "private_mode_switch":Z
    :goto_4
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changlei321 jsonObject.toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changlei321 NubiaWirelessTouPingService.flagForWiredTouPing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_11

    .line 232
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 233
    .local v20, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 234
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRIVATE_MODE_USB"

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    const-string v2, "PRIVATE_MODE_USB"

    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 237
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    move/from16 v0, v27

    invoke-static {v2, v0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 238
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2SystemUSB(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 227
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v27    # "private_mode_switch":Z
    :cond_10
    const/16 v27, 0x0

    goto :goto_4

    .line 240
    .restart local v27    # "private_mode_switch":Z
    :cond_11
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 241
    .restart local v20    # "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 242
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRIVATE_MODE_WIRELESS"

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    const-string v2, "PRIVATE_MODE_WIRELESS"

    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 245
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    move/from16 v0, v27

    invoke-static {v2, v0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 246
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2System(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 249
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v27    # "private_mode_switch":Z
    :cond_12
    const-string v2, "usb_frame_bit_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "usb_frame_bit_control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 251
    .local v10, "bitrate":I
    invoke-static {v10}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->changeWiredBitrate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 258
    .end local v10    # "bitrate":I
    .end local v19    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "msgPcInfoString":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getText()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "ExpandingVisonSwitch":Ljava/lang/String;
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpandingVisonSwitch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 261
    invoke-static {}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->comeInExpandingSionMode()V

    goto/16 :goto_0

    .line 263
    :cond_13
    invoke-static {}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionMode()V

    goto/16 :goto_0

    .line 267
    .end local v9    # "ExpandingVisonSwitch":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v2, :cond_1

    .line 268
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->injectText(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :pswitch_4
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getText()Ljava/lang/String;

    move-result-object v24

    .line 273
    .local v24, "msgString":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v18, "intent2":Landroid/content/Intent;
    const-string v2, "action_intputTextFornubiaMirror"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "textString"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "newCursorPosition"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v2, "Controller889977"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NubiaPCMirror.context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v2, :cond_1

    .line 279
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 283
    .end local v18    # "intent2":Landroid/content/Intent;
    .end local v24    # "msgString":Ljava/lang/String;
    :pswitch_5
    const-string v2, "Controller1239"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v2, :cond_1

    .line 285
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getAction()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getPointerId()J

    move-result-wide v4

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getPosition()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getPressure()F

    move-result v7

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getButtons()I

    move-result v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->injectTouch(IJLcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;FI)Z

    goto/16 :goto_0

    .line 289
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v2, :cond_1

    .line 290
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getPosition()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getHScroll()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getVScroll()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->injectScroll(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;II)Z

    goto/16 :goto_0

    .line 294
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-direct/range {p0 .. p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pressBackOrTurnScreenOn()Z

    goto/16 :goto_0

    .line 299
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->expandNotificationPanel()V

    goto/16 :goto_0

    .line 302
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->collapsePanels()V

    goto/16 :goto_0

    .line 305
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getClipboardText()Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "clipboardText":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->sender:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    invoke-virtual {v2, v11}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;->pushClipboardText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .end local v11    # "clipboardText":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    const/16 v26, 0x1

    .line 312
    .local v26, "paste":Z
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->setClipboard(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 311
    .end local v26    # "paste":Z
    :cond_14
    const/16 v26, 0x0

    goto :goto_5

    .line 317
    :pswitch_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;->getAction()I

    move-result v21

    .line 319
    .local v21, "mode":I
    const-string v2, "Controller90123"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v28, "nubia_screen_off_tp"

    .line 321
    .local v28, "scrren_off":Ljava/lang/String;
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 322
    .local v12, "currentMode":I
    new-instance v17, Landroid/content/Intent;

    const-string v2, "cn.nubia.intent.action.screen_off_touping"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v17, "intent":Landroid/content/Intent;
    const/16 v30, 0x0

    .line 324
    .local v30, "sendStatus":Z
    if-nez v12, :cond_15

    .line 325
    const/16 v30, 0x1

    .line 327
    :cond_15
    const-string v2, "isOpen"

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    invoke-static/range {v30 .. v30}, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->startTurnOff_switch_onAndOff(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 332
    .end local v12    # "currentMode":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "mode":I
    .end local v28    # "scrren_off":Ljava/lang/String;
    .end local v30    # "sendStatus":Z
    :catch_1
    move-exception v15

    .line 333
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v15    # "e":Ljava/lang/Exception;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->rotateDevice()V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initPointers()V
    .locals 4

    .prologue
    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 93
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 94
    .local v2, "props":Landroid/view/MotionEvent$PointerProperties;
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 96
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 97
    .local v0, "coords":Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 98
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 100
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aput-object v2, v3, v1

    .line 101
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, v3, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v2    # "props":Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    return-void
.end method

.method private injectChar(C)Z
    .locals 9
    .param p1, "c"    # C

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    invoke-static {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/KeyComposition;->decompose(C)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "decomposed":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 352
    .local v0, "chars":[C
    :goto_0
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->charMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v6, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 353
    .local v3, "events":[Landroid/view/KeyEvent;
    if-nez v3, :cond_2

    .line 362
    :cond_0
    :goto_1
    return v4

    .line 351
    .end local v0    # "chars":[C
    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_1
    new-array v0, v5, [C

    aput-char p1, v0, v4

    goto :goto_0

    .line 356
    .restart local v0    # "chars":[C
    .restart local v3    # "events":[Landroid/view/KeyEvent;
    :cond_2
    array-length v7, v3

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v2, v3, v6

    .line 358
    .local v2, "event":Landroid/view/KeyEvent;
    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v8, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 356
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v2    # "event":Landroid/view/KeyEvent;
    :cond_3
    move v4, v5

    .line 362
    goto :goto_1
.end method

.method private injectKeycode(III)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "keycode"    # I
    .param p3, "metaState"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeyEvent(IIII)Z

    move-result v0

    return v0
.end method

.method private injectScroll(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;II)Z
    .locals 22
    .param p1, "position"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .param p2, "hScroll"    # I
    .param p3, "vScroll"    # I

    .prologue
    .line 426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 427
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getPhysicalPoint(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    move-result-object v20

    .line 428
    .local v20, "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    if-nez v20, :cond_0

    .line 430
    const/4 v2, 0x0

    .line 445
    :goto_0
    return v2

    .line 433
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v21, v2, v3

    .line 434
    .local v21, "props":Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v18, v2, v3

    .line 437
    .local v18, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 438
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 439
    const/16 v2, 0xa

    move/from16 v0, p2

    int-to-float v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 440
    const/16 v2, 0x9

    move/from16 v0, p3

    int-to-float v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 442
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->lastTouchDown:J

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    .line 443
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 445
    .local v19, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method private injectText(Ljava/lang/String;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "successCount":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-char v0, v4, v2

    .line 368
    .local v0, "c":C
    const-string v6, "Controller555123"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " c = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->injectChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 370
    const-string v6, "Controller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not inject char u+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%04x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "c":C
    :cond_1
    return v1
.end method

.method private injectTouch(IJLcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;FI)Z
    .locals 22
    .param p1, "action"    # I
    .param p2, "pointerId"    # J
    .param p4, "position"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .param p5, "pressure"    # F
    .param p6, "buttons"    # I

    .prologue
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 383
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getPhysicalPoint(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    move-result-object v19

    .line 384
    .local v19, "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    if-nez v19, :cond_0

    .line 386
    const-string v2, "Controller123"

    const-string v3, "point = null"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    .line 422
    :goto_0
    return v2

    .line 390
    :cond_0
    const-string v2, "Controller9900"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 point.toString() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointersState:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->getPointerIndex(J)I

    move-result v21

    .line 393
    .local v21, "pointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 394
    const-string v2, "Too many pointers for touch event"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V

    .line 395
    const-string v2, "Controller123"

    const-string v3, "pointerIndex = -1"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v2, 0x0

    goto :goto_0

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointersState:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->get(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    move-result-object v20

    .line 399
    .local v20, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->setPoint(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;)V

    .line 400
    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->setPressure(F)V

    .line 401
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->setUp(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointersState:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v2, v3, v6}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->update([Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v7

    .line 405
    .local v7, "pointerCount":I
    const/4 v2, 0x1

    if-ne v7, v2, :cond_4

    .line 406
    if-nez p1, :cond_2

    .line 407
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->lastTouchDown:J

    .line 418
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->lastTouchDown:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move/from16 v6, p1

    move/from16 v11, p6

    .line 419
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 421
    .local v18, "event":Landroid/view/MotionEvent;
    const-string v2, "Controller1233456"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event.toString() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 401
    .end local v7    # "pointerCount":I
    .end local v18    # "event":Landroid/view/MotionEvent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 411
    .restart local v7    # "pointerCount":I
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 412
    shl-int/lit8 v2, v21, 0x8

    or-int/lit8 p1, v2, 0x6

    goto :goto_2

    .line 413
    :cond_5
    if-nez p1, :cond_2

    .line 414
    shl-int/lit8 v2, v21, 0x8

    or-int/lit8 p1, v2, 0x5

    goto :goto_2
.end method

.method private pressBackOrTurnScreenOn()Z
    .locals 2

    .prologue
    .line 449
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    .line 450
    .local v0, "keycode":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeycode(I)Z

    move-result v1

    return v1

    .line 449
    .end local v0    # "keycode":I
    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method private setClipboard(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paste"    # Z

    .prologue
    .line 454
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->setClipboardText(Ljava/lang/String;)Z

    move-result v0

    .line 455
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    .line 456
    const-string v1, "Controller"

    const-string v2, "Device clipboard set"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    if-eqz p2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->supportsInputEvents()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    const/16 v2, 0x117

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeycode(I)Z

    .line 464
    :cond_1
    return v0
.end method

.method private static setJsonObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "jsonObjectTemp"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    :try_start_0
    sput-object p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    .line 55
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->currentPCInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->jsonObject:Lorg/json/JSONObject;

    .line 61
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception 1111 currentPCInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->currentPCInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public control()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->device:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->injectKeycode(I)Z

    .line 124
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 127
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->flagWhileGetMessageForStop:Z

    if-nez v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->handleEvent()V

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public getSender()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->sender:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnectionSender;

    return-object v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->flagWhileGetMessageForStop:Z

    .line 108
    return-void
.end method
