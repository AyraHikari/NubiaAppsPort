.class public Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;
.super Ljava/lang/Object;
.source "LeboLinkStatusOprateUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeboLinkStatusOprateUtils"

.field private static mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPlayGameDot(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 78
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 79
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "CHOOSEN_DEVICE"

    const-string v8, "TV"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "ThrowAt":Ljava/lang/String;
    const-string v7, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "mirrorQuality":I
    const-string v2, ""

    .line 83
    .local v2, "mirrorQualityInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 84
    const-string v2, "1080p"

    .line 96
    :goto_0
    const-string v6, "system"

    .line 97
    .local v6, "voiceByInfo":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 98
    const-string v7, "SOUND_SOURCE"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 99
    .local v5, "voiceBy":I
    if-ne v5, v10, :cond_5

    .line 100
    const-string v6, "system_mike"

    .line 121
    .end local v5    # "voiceBy":I
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenObject="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ResolutionLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ScreenSound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "setPutInfo":Ljava/lang/String;
    const-string v7, "LeboLinkStatusOprateUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPutInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lebo_throwing"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    return-void

    .line 85
    .end local v3    # "setPutInfo":Ljava/lang/String;
    .end local v6    # "voiceByInfo":Ljava/lang/String;
    :cond_1
    if-ne v1, v10, :cond_2

    .line 86
    const-string v2, "1080p"

    goto :goto_0

    .line 87
    :cond_2
    if-ne v1, v9, :cond_3

    .line 88
    const-string v2, "1080p"

    goto :goto_0

    .line 89
    :cond_3
    const/4 v7, 0x4

    if-ne v1, v7, :cond_4

    .line 90
    const-string v2, "1080p"

    goto :goto_0

    .line 93
    :cond_4
    const-string v2, "auto"

    goto :goto_0

    .line 101
    .restart local v5    # "voiceBy":I
    .restart local v6    # "voiceByInfo":Ljava/lang/String;
    :cond_5
    if-ne v5, v9, :cond_6

    .line 102
    const-string v6, "system"

    goto :goto_1

    .line 103
    :cond_6
    if-ne v5, v11, :cond_7

    .line 104
    const-string v6, "mike"

    goto :goto_1

    .line 106
    :cond_7
    const-string v6, "no"

    goto :goto_1

    .line 108
    .end local v5    # "voiceBy":I
    :cond_8
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string v7, "SOUND_SOURCE_USB"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 110
    .restart local v5    # "voiceBy":I
    if-ne v5, v10, :cond_9

    .line 111
    const-string v6, "system_mike"

    goto/16 :goto_1

    .line 112
    :cond_9
    if-ne v5, v9, :cond_a

    .line 113
    const-string v6, "system"

    goto/16 :goto_1

    .line 114
    :cond_a
    if-ne v5, v11, :cond_b

    .line 115
    const-string v6, "mike"

    goto/16 :goto_1

    .line 117
    :cond_b
    const-string v6, "no"

    goto/16 :goto_1
.end method

.method private static declared-synchronized getAudioCapture()Lcn/nubia/touping/AudioTackUtils/AudioCapture;
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-direct {v0}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .line 32
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    new-instance v2, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils$1;

    invoke-direct {v2}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils$1;-><init>()V

    invoke-virtual {v0, v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->setCaptureListener(Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;)V

    .line 38
    sget-object v0, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized oprateMike2System(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "turnFlag"    # Z

    .prologue
    .line 160
    const-class v3, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    if-nez v2, :cond_0

    .line 161
    invoke-static {}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->getAudioCapture()Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    move-result-object v2

    sput-object v2, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .line 163
    :cond_0
    if-eqz p1, :cond_2

    .line 165
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "SOUND_SOURCE"

    const/4 v4, 0x2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 167
    .local v1, "voiceBy":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 168
    sget-object v2, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "voiceBy":I
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    .line 171
    :cond_2
    :try_start_1
    sget-object v2, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setAudioNubiaProjection(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 46
    :try_start_0
    const-string v3, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "setSystemProperties"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 48
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "sys.nubia.touping.nubiaprojection"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-nez p0, :cond_0

    .line 75
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setLeBoLinkOnstart(Landroid/content/Context;)V

    .line 59
    invoke-static {v9, p0}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setCurrentLinkStatus2PhoneManager(ZLandroid/content/Context;)V

    .line 60
    invoke-static {p0, v9}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->oprateMike2System(Landroid/content/Context;Z)V

    .line 61
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeBoOprate;->saveCurrentLinkDevice(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->addPlayGameDot(Landroid/content/Context;)V

    .line 71
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifidisplay_state_change"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 72
    :catch_1
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setLeBoLink(Landroid/content/Context;)V

    .line 66
    invoke-static {v8, p0}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setCurrentLinkStatus2PhoneManager(ZLandroid/content/Context;)V

    .line 67
    invoke-static {p0, v8}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->oprateMike2System(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method private static setCurrentLinkStatus2PhoneManager(ZLandroid/content/Context;)V
    .locals 1
    .param p0, "cannotBeKilled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    invoke-direct {v0, p1, p0}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;-><init>(Landroid/content/Context;Z)V

    .line 156
    .local v0, "mAppRunningStatusProviderUpdater":Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;
    invoke-virtual {v0}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->update()V

    .line 157
    return-void
.end method

.method private static setLeBoLink(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v1, "touping_mode="

    .line 147
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 148
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE"

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 149
    .local v3, "voiceBy":I
    const-string v4, "LeboLinkStatusOprateUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set voiceBy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 151
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private static setLeBoLinkOnstart(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 129
    const-string v1, "touping_mode="

    .line 130
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, "voiceBy":I
    const-string v4, "LeboLinkStatusOprateUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set voiceBy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 134
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-ne v3, v8, :cond_0

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    if-ne v3, v7, :cond_1

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    if-ne v3, v9, :cond_2

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
