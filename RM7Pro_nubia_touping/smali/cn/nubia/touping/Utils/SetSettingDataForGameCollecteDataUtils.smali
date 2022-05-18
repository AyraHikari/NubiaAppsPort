.class public Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;
.super Ljava/lang/Object;
.source "SetSettingDataForGameCollecteDataUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "SetSettingDataForGameCollecteDataUtils"

    sput-object v0, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentSendAudioParameter(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 76
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x2

    .line 78
    .local v2, "projection_mode":I
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_1

    .line 79
    const-string v3, "SOUND_DTS_WIRED"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "id_dts":I
    if-ne v0, v4, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 84
    .end local v0    # "id_dts":I
    :cond_1
    const-string v3, "SOUND_DTS_WIREDLESS"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .restart local v0    # "id_dts":I
    if-ne v0, v4, :cond_0

    .line 86
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static sendToupingStatus2Audio(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNubiaTouPing"    # Z

    .prologue
    .line 43
    :try_start_0
    const-string v0, "cn.nubia.action.AUDIO_FOR_PROJECTION"

    .line 44
    .local v0, "AUDIO_FOR_GAMES_MODE":Ljava/lang/String;
    const-string v1, "com.dts.dtsxultra"

    .line 45
    .local v1, "AUDIO_GAME_MODE_PACKAGE":Ljava/lang/String;
    const-string v2, "com.dts.dtsxultra.activities.SRSConfigReceiver"

    .line 46
    .local v2, "AUDIO_GAME_MODE_RC":Ljava/lang/String;
    const/4 v5, 0x0

    .line 47
    .local v5, "projection_mode":I
    sget-object v6, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "projection_mode000 isNubiaTouPing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-static {p0}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->getCurrentSendAudioParameter(Landroid/content/Context;)I

    move-result v5

    .line 51
    :cond_0
    sget-object v6, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "projection_mode111 isNubiaTouPing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    const-string v6, "projection_mode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    sget-object v6, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "projection_mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "AUDIO_FOR_GAMES_MODE":Ljava/lang/String;
    .end local v1    # "AUDIO_GAME_MODE_PACKAGE":Ljava/lang/String;
    .end local v2    # "AUDIO_GAME_MODE_RC":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "projection_mode":I
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    sget-object v6, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    const-string v7, "sendToupingStatus2Audio exception"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendToupingStatus2AudioForDtsUserSelected(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUSBMirror"    # Z

    .prologue
    const/4 v1, 0x1

    .line 64
    if-eqz p1, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 68
    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v0, :cond_2

    .line 69
    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static setTouPingType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toupingType"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tp_type_for_games"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUsbType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usbType"    # Ljava/lang/String;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tp_usb_type_for_games"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startAudioChangeVoiceService(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWired"    # Z

    .prologue
    .line 97
    :try_start_0
    sget-object v2, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    const-string v3, "startAudioChangeVoiceService 0"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    if-eqz p1, :cond_2

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_2

    .line 101
    const-string v2, "SOUND_SOURCE_USB"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "voiceBy":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touping_audio_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    .end local v1    # "voiceBy":I
    :cond_2
    if-nez p1, :cond_3

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v2, :cond_3

    .line 106
    const-string v2, "SOUND_SOURCE"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .restart local v1    # "voiceBy":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touping_audio_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    .end local v1    # "voiceBy":I
    :cond_3
    sget-object v2, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    const-string v3, "startAudioChangeVoiceService 1"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    sget-object v2, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->TAG:Ljava/lang/String;

    const-string v3, "startAudioChangeVoiceService exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
