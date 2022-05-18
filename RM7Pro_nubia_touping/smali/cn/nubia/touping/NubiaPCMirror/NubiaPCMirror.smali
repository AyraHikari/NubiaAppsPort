.class public Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;
    }
.end annotation


# static fields
.field private static final APP_GAMESPACE_STATUS:Ljava/lang/String; = "nubia_db_game_keys"

.field private static final APP_MIRROR_ENTERRING:Ljava/lang/String; = "app_mirror_entering"

.field private static final APP_MIRROR_SMALL_LAND_STATUS:Ljava/lang/String; = "nubia_sPipLand"

.field private static final APP_MIRROR_STATUS:Ljava/lang/String; = "app_mirror_status"

.field private static final APP_SCREENOFF_TOUPING_STATUS:Ljava/lang/String; = "nubia_screen_off_tp"

.field private static NubiaTouPingStatus:Z = false

.field private static final TAG:Ljava/lang/String; = "NubiaPCMirror"

.field private static final TURNON_SURFACEFLINGEReNABLE:I = 0x1

.field public static context:Landroid/content/Context;

.field public static isCurrenSuspendStatus:Z

.field private static mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

.field private static mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

.field private static mHanlde:Landroid/os/Handler;

.field private static mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

.field private static mStartingService:Landroid/os/PowerManager$WakeLock;

.field public static suspendStatusTime:J

.field private static timer:Ljava/util/Timer;

.field public static view_has_focusSaved:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const/4 v0, -0x1

    sput v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->view_has_focusSaved:I

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    .line 127
    sput-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    .line 671
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$8;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mHanlde:Landroid/os/Handler;

    .line 983
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->suspendStatusTime:J

    .line 984
    sput-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    return-void
.end method

.method private static SupportOnly60()Z
    .locals 5

    .prologue
    const/16 v4, 0x3c

    const/4 v2, 0x1

    .line 164
    :try_start_0
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 165
    sget-object v1, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gt v1, v4, :cond_0

    move v1, v2

    .line 184
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 169
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 175
    :cond_0
    :try_start_1
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v1, :cond_1

    .line 176
    sget v1, Lcn/nubia/touping/WiredTouPingMainActivity;->maxFps:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gt v1, v4, :cond_1

    move v1, v2

    .line 177
    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .local v0, "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getIsGameSpace()Z

    move-result v0

    return v0
.end method

.method private static addPlayGameDot(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 485
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static changeWiredBitrate(I)V
    .locals 5
    .param p0, "bitrate"    # I

    .prologue
    .line 929
    :try_start_0
    const-string v2, "NubiaPCMirror"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeWiredBitrate bitrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    iput p0, v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I

    .line 932
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v1, "param":Landroid/os/Bundle;
    const-string v2, "video-bitrate"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v1    # "param":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static changedSoundForNubiaMirror(I)V
    .locals 6
    .param p0, "num"    # I

    .prologue
    .line 961
    :try_start_0
    const-string v3, "NubiaPCMirror"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changedSoundForNubiaMirror num ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS_TOP_GAME_QUICK_MODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_0

    .line 963
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 964
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 965
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SOUND_SOURCE_USB"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 966
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 974
    :goto_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->myHandle:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 979
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 968
    :cond_0
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 969
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 970
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SOUND_SOURCE"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 971
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 975
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 977
    const-string v3, "NubiaPCMirror"

    const-string v4, "changedBitForNubiaMirror EXCEPTION"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static changedWiredlessQualityMode(I)V
    .locals 6
    .param p0, "num"    # I

    .prologue
    .line 945
    :try_start_0
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_0

    .line 956
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string v3, "NubiaPCMirror"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changedBitForNubiaMirror num ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 948
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 949
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 950
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 951
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/LeBoOprate;->changeMirrorQuality(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    const-string v3, "NubiaPCMirror"

    const-string v4, "changedBitForNubiaMirror EXCEPTION"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized getAudioCapture()Lcn/nubia/touping/AudioTackUtils/AudioCapture;
    .locals 3

    .prologue
    .line 607
    const-class v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-direct {v0}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .line 610
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$7;

    invoke-direct {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$7;-><init>()V

    invoke-virtual {v0, v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->setCaptureListener(Lcn/nubia/touping/AudioTackUtils/AudioCapture$AudioCaptureListener;)V

    .line 616
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentBitrate(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 689
    const-string v4, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 690
    .local v2, "mirrorQuality":I
    const/4 v0, 0x0

    .line 691
    .local v0, "bitrateNum":I
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v4

    int-to-float v3, v4

    .line 692
    .local v3, "wifiGeneration":F
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPingStatusUtils;->isSupportHightFPS(Landroid/content/Context;)Z

    move-result v1

    .line 693
    .local v1, "isSupportHighRefresh":Z
    packed-switch v2, :pswitch_data_0

    .line 730
    const/high16 v0, 0x700000

    .line 733
    :goto_0
    return v0

    .line 695
    :pswitch_0
    if-eqz v1, :cond_1

    .line 696
    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 697
    const/high16 v0, 0xc00000

    goto :goto_0

    .line 699
    :cond_0
    const/high16 v0, 0x1000000

    goto :goto_0

    .line 702
    :cond_1
    const/high16 v0, 0x1000000

    .line 704
    goto :goto_0

    .line 706
    :pswitch_1
    if-eqz v1, :cond_2

    .line 707
    const/high16 v0, 0x1000000

    goto :goto_0

    .line 709
    :cond_2
    const/high16 v0, 0xc00000

    .line 711
    goto :goto_0

    .line 713
    :pswitch_2
    const/high16 v0, 0x800000

    .line 714
    goto :goto_0

    .line 716
    :pswitch_3
    const/high16 v0, 0x400000

    .line 717
    goto :goto_0

    .line 719
    :pswitch_4
    if-eqz v1, :cond_4

    .line 720
    float-to-double v4, v3

    const-wide v6, 0x4003333333333333L    # 2.4

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    .line 721
    const/high16 v0, 0xc00000

    goto :goto_0

    .line 723
    :cond_3
    const/high16 v0, 0x1900000

    goto :goto_0

    .line 726
    :cond_4
    const/high16 v0, 0x1400000

    .line 728
    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentRate(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    const-string v2, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 740
    .local v0, "mirrorQuality":I
    const/4 v1, 0x0

    .line 741
    .local v1, "rateNum":I
    packed-switch v0, :pswitch_data_0

    .line 758
    const/16 v1, 0x1e

    .line 761
    :goto_0
    return v1

    .line 743
    :pswitch_0
    const/16 v1, 0x1e

    .line 744
    goto :goto_0

    .line 746
    :pswitch_1
    const/16 v1, 0x1e

    .line 747
    goto :goto_0

    .line 749
    :pswitch_2
    const/16 v1, 0x1e

    .line 750
    goto :goto_0

    .line 752
    :pswitch_3
    const/16 v1, 0x1e

    .line 753
    goto :goto_0

    .line 755
    :pswitch_4
    const/16 v1, 0x1e

    .line 756
    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentThreadId()J
    .locals 4

    .prologue
    .line 919
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-wide v2

    .line 920
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 921
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 923
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private static getIsGameSpace()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 792
    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 800
    .local v0, "default_game_key":I
    :cond_0
    :goto_0
    return v3

    .line 794
    .end local v0    # "default_game_key":I
    :cond_1
    const/16 v0, 0x10

    .line 795
    .restart local v0    # "default_game_key":I
    :try_start_0
    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nubia_db_game_keys"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 796
    .local v2, "gameKeys":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 797
    .end local v2    # "gameKeys":I
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNubiaTouPingStatus()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    return v0
.end method

.method public static getSmallMirrorStatus()Z
    .locals 4

    .prologue
    .line 804
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 806
    .local v0, "flag_small_window":Z
    :goto_0
    return v0

    .line 805
    .end local v0    # "flag_small_window":Z
    :cond_0
    const-string v1, "1"

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_mirror_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 806
    .restart local v0    # "flag_small_window":Z
    goto :goto_0
.end method

.method public static isLandForNubiaTouPingRoration(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_sPipLand"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 811
    .local v1, "sPipLand":I
    const-string v3, "NubiaPCMirror654456"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLandForNubiaTouPingRoration sPipLand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    if-ne v1, v0, :cond_0

    .line 813
    .local v0, "flag_smallMirror_land":Z
    :goto_0
    return v0

    .end local v0    # "flag_smallMirror_land":Z
    :cond_0
    move v0, v2

    .line 812
    goto :goto_0
.end method

.method public static declared-synchronized oprateMike2System(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "turnFlag"    # Z

    .prologue
    const/4 v5, 0x1

    .line 619
    const-class v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    if-nez v2, :cond_0

    .line 620
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getAudioCapture()Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    move-result-object v2

    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .line 622
    :cond_0
    if-eqz p1, :cond_4

    .line 624
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 625
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_2

    .line 626
    const-string v2, "SOUND_SOURCE_USB"

    const/4 v4, 0x2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 627
    .local v1, "voiceBy":I
    if-ne v1, v5, :cond_1

    .line 628
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "voiceBy":I
    :goto_0
    monitor-exit v3

    return-void

    .line 630
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v1    # "voiceBy":I
    :cond_1
    :try_start_1
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 619
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "voiceBy":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 633
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_2
    const-string v2, "SOUND_SOURCE"

    const/4 v4, 0x2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 634
    .restart local v1    # "voiceBy":I
    if-ne v1, v5, :cond_3

    .line 635
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->start()V

    goto :goto_0

    .line 637
    :cond_3
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->stop()V

    goto :goto_0

    .line 641
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "voiceBy":I
    :cond_4
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v2}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static regiseterSettingValueChanged(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 818
    const-string v0, "NubiaPCMirror654456"

    const-string v1, "urlName = 11111111111"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_entering"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 821
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_sPipLand"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_db_game_keys"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_screen_off_tp"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 825
    return-void
.end method

.method public static sendGameSpaceStatus2PC()V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$9;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$9;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 787
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 788
    return-void
.end method

.method public static sendMessageDelay(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayTime"    # I

    .prologue
    .line 664
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 665
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 666
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mHanlde:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendMessageDelay(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentStatus"    # Z

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 656
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendMessageDelay(Landroid/content/Context;I)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setTurnOffSkipSwitch(Z)V

    goto :goto_0
.end method

.method private static sendPhoneTouPingApkVersion(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$5;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$5;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static sendPhoneWidthAndHeight(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$4;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setCurrentSendRateIs60(Z)V
    .locals 5
    .param p0, "sendRateIs60"    # Z

    .prologue
    .line 369
    const-string v2, "NubiaPCMirror"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRateIs60 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 372
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_0

    .line 373
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 374
    .local v1, "msg":Landroid/os/Message;
    if-eqz p0, :cond_1

    .line 375
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 379
    :goto_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->myHandle:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 377
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static setCurrentSuspendTouPingStatus(Z)V
    .locals 3
    .param p0, "currentSuspendStaus"    # Z

    .prologue
    .line 1016
    if-eqz p0, :cond_0

    .line 1017
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isCurrenSuspendStatus"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isCurrenSuspendStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setLeBoLink(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    :try_start_0
    const-string v2, "touping_mode="

    .line 594
    .local v2, "key":Ljava/lang/String;
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 595
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 596
    const-string v3, "NubiaPCMirror"

    const-string v4, "set voiceBy = touping_mode= = 0"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLeBoLinkOnstart(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 544
    const-string v1, "touping_mode="

    .line 545
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 546
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 547
    .local v3, "voiceBy":I
    const-string v4, "NubiaPCMirror"

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

    .line 548
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 549
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-ne v3, v8, :cond_1

    .line 550
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

    .line 558
    :goto_0
    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-nez v4, :cond_0

    .line 559
    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    if-eqz v4, :cond_4

    if-ne v3, v7, :cond_4

    .line 560
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->turnOnQuickAudio()V

    .line 565
    :cond_0
    :goto_1
    return-void

    .line 551
    :cond_1
    if-ne v3, v7, :cond_2

    .line 552
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

    .line 553
    :cond_2
    if-ne v3, v9, :cond_3

    .line 554
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

    .line 556
    :cond_3
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

    .line 562
    :cond_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->turnOffQuickAudio()V

    goto :goto_1
.end method

.method public static setLeBoLink_USBOnstart(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 568
    const-string v1, "touping_mode="

    .line 569
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 570
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE_USB"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 571
    .local v3, "voiceBy":I
    const-string v4, "NubiaPCMirror"

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

    .line 572
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 573
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-ne v3, v8, :cond_1

    .line 574
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

    .line 582
    :goto_0
    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-nez v4, :cond_0

    .line 583
    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    if-eqz v4, :cond_4

    if-ne v3, v7, :cond_4

    .line 584
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->turnOnQuickAudio()V

    .line 589
    :cond_0
    :goto_1
    return-void

    .line 575
    :cond_1
    if-ne v3, v7, :cond_2

    .line 576
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

    .line 577
    :cond_2
    if-ne v3, v9, :cond_3

    .line 578
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

    .line 580
    :cond_3
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

    .line 586
    :cond_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->turnOffQuickAudio()V

    goto :goto_1
.end method

.method public static setNubiaTouPingStatus(Z)V
    .locals 0
    .param p0, "NubiaTouPingStatusTemp"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    .line 130
    return-void
.end method

.method public static setNubiaTouPingStatus2System(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public static setNubiaTouPingStatus2SystemUSB(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public static setTurnOffSkipSwitch(Z)V
    .locals 1
    .param p0, "switchStatus"    # Z

    .prologue
    .line 649
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setTurnOffSkipSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVoiceComeByAndStart(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 469
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v0

    .line 470
    .local v0, "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    const-string v3, "SOUND_SOURCE"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 471
    .local v2, "voiceBy":I
    invoke-virtual {v0, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->setSounceBySystem(I)Z

    move-result v1

    .line 472
    .local v1, "turnOnSound":Z
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_0

    .line 473
    const-string v3, "SOUND_SOURCE_USB"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 474
    invoke-virtual {v0, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->setUSBSounceBySystem(I)Z

    move-result v1

    .line 476
    :cond_0
    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->start()V

    .line 479
    :cond_1
    return v1
.end method

.method private static setWwakeClockStatus(Z)V
    .locals 3
    .param p0, "status"    # Z

    .prologue
    .line 387
    if-eqz p0, :cond_2

    .line 388
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 389
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 390
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000000a

    const-string v2, "nubiaTouPing"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 393
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 394
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 397
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 398
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mStartingService:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public static startNubiaTouPing(Landroid/content/Context;Landroid/media/projection/MediaProjection;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaProjection"    # Landroid/media/projection/MediaProjection;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 273
    const-string v5, "NubiaPCMirror"

    const-string v6, "nubiaMirror = 1"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_0
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v5, :cond_1

    .line 277
    const-string v5, "PRIVATE_MODE_WIRELESS"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 279
    .local v2, "privateMode":Z
    if-nez v2, :cond_0

    .line 280
    invoke-static {p0}, Lcn/nubia/touping/Utils/DialogManager;->showPrivacyPolicyDialogNubiaTouPing(Landroid/content/Context;)V

    .line 284
    :cond_0
    const-string v5, "FLOATING_WINDOW"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 286
    .local v4, "showWindow":Z
    const-string v5, "NubiaPCMirror"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showWindow : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz v4, :cond_1

    .line 288
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->showDelayTime()V

    .line 289
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v5

    const v6, 0x3385e

    invoke-virtual {v5, v6}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->postUpdateStatus(I)V

    .line 293
    .end local v2    # "privateMode":Z
    .end local v4    # "showWindow":Z
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/LogShow;->setCurrentBugSwitch(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus(Z)V

    .line 299
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->releaseScreenRecorderWhenStartMirror()V

    .line 300
    invoke-static {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance(Landroid/content/Context;Landroid/media/projection/MediaProjection;)Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v3

    .line 301
    .local v3, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->start()V

    .line 304
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->startAudioChangeVoiceService(Landroid/content/Context;Z)V

    .line 307
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 309
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v5, :cond_3

    .line 310
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2SystemUSB(Landroid/content/Context;)V

    .line 311
    const-string v5, "PRIVATE_MODE_USB"

    invoke-static {v5, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 312
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLink_USBOnstart(Landroid/content/Context;)V

    .line 313
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendUSBType(Landroid/content/Context;)V

    .line 314
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getUsbTypeInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setUsbType(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    const-string v5, "3"

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setTouPingType(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    :goto_1
    invoke-static {p0, v8}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 325
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendSmallMirrorStatus(Landroid/content/Context;)V

    .line 326
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPrivateModeStatus(Landroid/content/Context;)V

    .line 327
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentBitrateAndSound(Landroid/content/Context;)V

    .line 328
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v5, :cond_4

    .line 329
    invoke-static {p0, v8}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentDtsSelectedStatus(Landroid/content/Context;Z)V

    .line 333
    :goto_2
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendPhoneWidthAndHeight(Landroid/content/Context;)V

    .line 334
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendPhoneTouPingApkVersion(Landroid/content/Context;)V

    .line 335
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->addPlayGameDot(Landroid/content/Context;)V

    .line 337
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v0

    .line 338
    .local v0, "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->startPrepare()V

    .line 341
    :cond_2
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setVoiceComeByAndStart(Landroid/content/Context;)Z

    .line 342
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->tellSystemUI2RefreshMirrorStatus(Landroid/content/Context;)V

    .line 344
    invoke-static {}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setTouPingFrameRateNum()V

    .line 345
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->SupportOnly60()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 346
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPingStatusUtils;->isSupportHightFPS(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 347
    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V

    .line 355
    :goto_3
    invoke-static {p0, v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->oprateMike2System(Landroid/content/Context;Z)V

    .line 356
    sput-object p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    .line 357
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->regiseterSettingValueChanged(Landroid/content/Context;)V

    .line 358
    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setWwakeClockStatus(Z)V

    .line 359
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->sendGameSpaceStatus2PC()V

    .line 360
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->startTimer()V

    .line 363
    const/4 v5, -0x1

    sput v5, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->view_has_focusSaved:I

    .line 364
    sput-boolean v9, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    .line 365
    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setCurrentSuspendTouPingStatus(Z)V

    .line 366
    return-void

    .line 294
    .end local v0    # "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .end local v3    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_3
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2System(Landroid/content/Context;)V

    .line 318
    const-string v5, "PRIVATE_MODE_WIRELESS"

    invoke-static {v5, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 319
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLinkOnstart(Landroid/content/Context;)V

    .line 320
    const-string v5, "2"

    invoke-static {p0, v5}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setTouPingType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_4
    invoke-static {p0, v9}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentDtsSelectedStatus(Landroid/content/Context;Z)V

    goto :goto_2

    .line 349
    .restart local v0    # "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    :cond_5
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->showSurface()V

    .line 350
    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V

    goto :goto_3

    .line 353
    :cond_6
    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V

    goto :goto_3
.end method

.method private static startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7d0

    .line 98
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 101
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    .line 102
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$1;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 117
    return-void
.end method

.method public static declared-synchronized stopNubiaTouPing(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const-class v4, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;

    monitor-enter v4

    :try_start_0
    const-string v3, "NubiaPCMirror"

    const-string v5, "nubiaMirror = 0"

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 458
    :goto_0
    monitor-exit v4

    return-void

    .line 410
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v2

    .line 411
    .local v2, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    const-string v3, "NubiaPCMirror"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenRecorder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->stop()V

    .line 415
    :cond_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->turnOffQuickAudio()V

    .line 416
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v0

    .line 417
    .local v0, "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->stop()V

    .line 420
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus(Z)V

    .line 421
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->stop()V

    .line 422
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->stop()V

    .line 423
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->stop()V

    .line 424
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->tellSystemUI2RefreshMirrorStatus(Landroid/content/Context;)V

    .line 425
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->SupportOnly60()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->hideSurface()V

    .line 428
    :cond_3
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLink(Landroid/content/Context;)V

    .line 429
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->oprateMike2System(Landroid/content/Context;Z)V

    .line 430
    const/4 v3, 0x0

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setTurnOffSkipSwitch(Z)V

    .line 431
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->unRegisterSettingValueChanged(Landroid/content/Context;)V

    .line 432
    invoke-static {}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionMode()V

    .line 433
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideDelayTime()V

    .line 434
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-eqz v3, :cond_4

    .line 435
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/DialogManager;->releaseDialogInfo()V

    .line 436
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    .line 438
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setWwakeClockStatus(Z)V

    .line 439
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->stopTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :try_start_2
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    if-eqz v3, :cond_5

    .line 442
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    invoke-virtual {v3}, Lcn/nubia/touping/AudioTackUtils/AudioCapture;->stop()V

    .line 443
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mAudioCapture:Lcn/nubia/touping/AudioTackUtils/AudioCapture;

    .line 446
    :cond_5
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/GameCollectDataUtils;->clearGameCollectData(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    invoke-static {p0, v3}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 451
    const/4 v3, 0x2

    invoke-static {v3}, Lcn/nubia/touping/Utils/MyPresentation;->crearList(I)V

    .line 452
    const/4 v3, 0x3

    invoke-static {v3}, Lcn/nubia/touping/Utils/MyPresentation;->crearList(I)V

    .line 453
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/touping/Utils/DTSUtils;->turnOnDts(Landroid/content/Context;)V

    .line 454
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    .line 455
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    .line 456
    const/4 v3, 0x0

    sput-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    .line 457
    const/4 v3, -0x1

    sput v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->view_has_focusSaved:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 405
    .end local v0    # "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .end local v2    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 447
    .restart local v0    # "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .restart local v2    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static stopSocketLink()V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->stop()V

    .line 151
    :cond_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->stop()V

    .line 154
    :cond_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static stopTimer()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->timer:Ljava/util/Timer;

    .line 124
    :cond_0
    return-void
.end method

.method public static tellSystemUI2RefreshMirrorStatus(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifidisplay_state_change"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toRestartTouPing()V
    .locals 4

    .prologue
    .line 1000
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->releaseScreenRecorderWhenStartMirror()V

    .line 1001
    const-string v1, "TouPingProvider_CALL_14"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "come out CALL14_KEY: NubiaTouPingStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-eqz v1, :cond_0

    .line 1003
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance(Landroid/content/Context;Landroid/media/projection/MediaProjection;)Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v0

    .line 1004
    .local v0, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->start()V

    .line 1005
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->start()V

    .line 1006
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    .line 1007
    sget-boolean v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setCurrentSuspendTouPingStatus(Z)V

    .line 1008
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/CollectDataUtils;->sendCurrentSuspends()V

    .line 1012
    .end local v0    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v1, "NubiaPCMirror"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "exception NubiaTouPingStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toSuspendTouPing()V
    .locals 3

    .prologue
    .line 987
    const-string v0, "TouPingProvider_CALL_14"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "come in CALL14_KEY: NubiaTouPingStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v0, "TouPingProvider_CALL_14"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrenSuspendStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->NubiaTouPingStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    if-nez v0, :cond_0

    .line 990
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->toSuspendTouPing()V

    .line 991
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->stop()V

    .line 992
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    .line 993
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->isCurrenSuspendStatus:Z

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setCurrentSuspendTouPingStatus(Z)V

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->suspendStatusTime:J

    .line 996
    :cond_0
    return-void
.end method

.method public static turnOffQuickAudio()V
    .locals 3

    .prologue
    .line 141
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    .line 142
    sget-object v1, Lcn/nubia/touping/TouPingApplication;->sContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 143
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "is_touping_off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 144
    const-string v1, "Touping"

    const-string v2, "startNubiaTouPing  setParameters is_touping_off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public static turnOnQuickAudio()V
    .locals 3

    .prologue
    .line 135
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    .line 136
    sget-object v1, Lcn/nubia/touping/TouPingApplication;->sContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 137
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "is_touping_on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 138
    const-string v1, "Touping"

    const-string v2, "startNubiaTouPing  setParameters is_touping_on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private static unRegisterSettingValueChanged(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 828
    const-string v0, "NubiaPCMirror654456"

    const-string v1, "urlName = 00000000"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 832
    :cond_0
    return-void
.end method
