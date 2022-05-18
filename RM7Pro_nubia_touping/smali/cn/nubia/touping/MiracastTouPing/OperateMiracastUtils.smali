.class public Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;
.super Ljava/lang/Object;
.source "OperateMiracastUtils.java"


# static fields
.field public static final STARTMIRACAST:Ljava/lang/String; = "cn.nubia.add.display.wfd.CONNECT"

.field public static final STOPMIRACAST:Ljava/lang/String; = "cn.nubia.add.display.wfd.DISCONNECT"

.field private static final TAG:Ljava/lang/String; = "OperateMiracastUtils"

.field public static final lastMirracastTouPIngDeviceInfo:Ljava/lang/String; = "lastMirracastTouPIngDeviceInfo"

.field private static saveMiracastTouPingStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->saveMiracastTouPingStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiracastTouPingStatus()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->saveMiracastTouPingStatus:Z

    return v0
.end method

.method private static saveCurrentMiracastTouPingInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getMiracastTouPingDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "addressName":Ljava/lang/String;
    const-string v1, "OperateMiracastUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCurrentMiracastTouPingInfo addressName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "LELINKSERVER_UID"

    const-string v2, "-1111"

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "LELINKSERVER_NAME_IP"

    const-string v2, "no_info"

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "lastMirracastTouPIngDeviceInfo"

    invoke-static {p0, v1, v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static searchMiracastTouPingDevice(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    return-void
.end method

.method public static sendMiracastChangeBitrate(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitrateNum"    # I

    .prologue
    .line 99
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v0, "CN.NUBIA.NUBIA_TOUPING_BITRATE_ACTION"

    .line 101
    .local v0, "BITRATE_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "intent_bitrate":Landroid/content/Intent;
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    .end local v0    # "BITRATE_ACTION":Ljava/lang/String;
    .end local v1    # "intent_bitrate":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatType"    # I
    .param p2, "value"    # I
    .param p3, "fps"    # I

    .prologue
    .line 130
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v0, "CN.NUBIA.RESOLUTION_AND_FPS"

    .line 132
    .local v0, "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "formatType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v2, "fps"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v0    # "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isTcp"    # Z

    .prologue
    .line 109
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v0, "CN.NUBIA.TRANSPORT_TYPE_ACTION"

    .line 111
    .local v0, "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "tcpRtpTransport"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v0    # "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 112
    .restart local v0    # "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sendMiracastChangeUibc(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "UIBCSWITCH"    # Z

    .prologue
    .line 119
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v0, "CN.NUBIA.UIBC_TYPE_ACTION"

    .line 121
    .local v0, "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "UIBCSWITCH"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 122
    .restart local v0    # "TRANSPORT_TYPE_ACTION":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setMiracastTouPing(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x7a1200

    const/16 v8, 0x640

    const/4 v3, 0x1

    const/16 v7, 0x1e

    const/4 v4, 0x0

    .line 142
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v5, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-static {p0, v5, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "quality":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 147
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 148
    invoke-static {p0, v4, v8, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 149
    invoke-static {p0, v9}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 153
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 154
    invoke-static {p0, v4, v8, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 155
    const v3, 0x5b8d80

    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 159
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 160
    invoke-static {p0, v4, v8, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 161
    const v3, 0x3d0900

    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    move v0, v3

    .line 165
    .local v0, "isWifi24":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 166
    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 167
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 168
    invoke-static {p0, v4, v8, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 169
    invoke-static {p0, v9}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .end local v0    # "isWifi24":Z
    :cond_1
    move v0, v4

    .line 164
    goto :goto_1

    .line 171
    .restart local v0    # "isWifi24":Z
    :cond_2
    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 172
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 173
    const/16 v3, 0x780

    const/16 v5, 0x3c

    invoke-static {p0, v4, v3, v5}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 174
    const v3, 0xf42400

    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .line 178
    .end local v0    # "isWifi24":Z
    :pswitch_4
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    move v1, v3

    .line 179
    .local v1, "isWifi24_uhd":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 180
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 181
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 182
    invoke-static {p0, v4, v8, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 183
    invoke-static {p0, v9}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto :goto_0

    .end local v1    # "isWifi24_uhd":Z
    :cond_3
    move v1, v4

    .line 178
    goto :goto_2

    .line 185
    .restart local v1    # "isWifi24_uhd":Z
    :cond_4
    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUdpAndTcp(Landroid/content/Context;Z)V

    .line 186
    invoke-static {p0, v4}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeUibc(Landroid/content/Context;Z)V

    .line 187
    const/16 v3, 0x780

    invoke-static {p0, v4, v3, v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeResolutionAndFPS(Landroid/content/Context;III)V

    .line 188
    const v3, 0xb71b00

    invoke-static {p0, v3}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->sendMiracastChangeBitrate(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized startMiracastTouPing(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v3, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;

    monitor-enter v3

    :try_start_0
    const-string v2, "OperateMiracastUtils"

    const-string v4, "MIRACASTTOUPING startMiracastTouPing 1"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-nez p0, :cond_0

    .line 66
    :goto_0
    monitor-exit v3

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.nubia.add.display.wfd.CONNECT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->saveCurrentMiracastTouPingInfo(Landroid/content/Context;)V

    .line 51
    const-string v2, "5"

    invoke-static {p0, v2}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setTouPingType(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 58
    :cond_1
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v1

    .line 59
    .local v1, "isPlayMirrorStatus":Z
    if-eqz v1, :cond_2

    .line 60
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopMirrorTouPing()V

    .line 63
    :cond_2
    const-string v2, "PRIVATE_MODE_WIRELESS"

    invoke-static {v2, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 65
    const/4 v2, 0x1

    sput-boolean v2, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->saveMiracastTouPingStatus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isPlayMirrorStatus":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized stopMiracastTouPing(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v2, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;

    monitor-enter v2

    :try_start_0
    const-string v1, "OperateMiracastUtils"

    const-string v3, "MIRACASTTOUPING stopMiracastTouPing 0"

    invoke-static {v1, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-nez p0, :cond_0

    .line 81
    :goto_0
    monitor-exit v2

    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->disconnectWifiDisplay(Landroid/content/Context;)V

    .line 75
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.add.display.wfd.DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->stopMiracastTouPingService()V

    .line 80
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->saveMiracastTouPingStatus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
