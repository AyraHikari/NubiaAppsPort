.class public Lcn/nubia/touping/Utils/TouPingProvider;
.super Landroid/content/ContentProvider;
.source "TouPingProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.touping.TouPingProvider"

.field public static final CALL10_KEY:Ljava/lang/String; = "SMALLWINDOW_MIRROR_COLLECTINGDATA"

.field public static final CALL11_1_KEY:Ljava/lang/String; = "VIEW_CURRENT_FOCUS_LOCAL"

.field public static final CALL11_KEY:Ljava/lang/String; = "VIEW_CURRENT_FOCUS_STATUS"

.field public static final CALL12_KEY:Ljava/lang/String; = "VIEW_SCREENOFFMIRROR_STATUS"

.field public static final CALL13_KEY:Ljava/lang/String; = "TOUPINGAPP_DIED_STATUS"

.field public static final CALL14_KEY:Ljava/lang/String; = "SUSPEND_REDMAGIC_TOUPING"

.field public static final CALL44_KEY:Ljava/lang/String; = "BURYINGPOINT_WIRELESS_CALL44"

.field public static final CALL4_KEY:Ljava/lang/String; = "BURYINGPOINT_WIRELESS_CALL4"

.field public static final CALL5_KEY:Ljava/lang/String; = "BURYINGPOINT_WIRE_CALL5"

.field public static final CALL6_KEY:Ljava/lang/String; = "MIRRORPLAY_TV_INFO"

.field public static final CALL7_KEY:Ljava/lang/String; = "DEVICE_NAME_SHOW"

.field public static final CALL8_KEY:Ljava/lang/String; = "VIRTURE_DISPLAY_RERRESH"

.field public static final CALL9_KEY:Ljava/lang/String; = "SMALL_MIRROR_STATUS"

.field private static final CALLCLOSE_KEY:Ljava/lang/String; = "MirrorClose"

.field private static final CALL_KEY:Ljava/lang/String; = "MirrorPlayStatus"

.field private static final HandleMsg:I = 0x1

.field private static final HandleMsg_privatemode:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TouPingProvider"

.field private static extras:Landroid/os/Bundle;

.field private static mHanlde:Landroid/os/Handler;

.field private static final matcher:Landroid/content/UriMatcher;

.field private static object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->matcher:Landroid/content/UriMatcher;

    .line 88
    new-instance v0, Lcn/nubia/touping/Utils/TouPingProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/Utils/TouPingProvider$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->mHanlde:Landroid/os/Handler;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->object:Ljava/lang/Object;

    .line 450
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPingProvider;->showOrHideWindowInOtherDisplay(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 39
    sput-object p0, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static getFlagCALL_3(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 171
    :try_start_0
    const-string v3, "flagCALL_3"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, "sSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "flagCALL_3KEY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 176
    .end local v1    # "sSharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 437
    and-int/lit16 v0, p0, 0xfff

    .line 438
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x91

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private oprateWirelessService(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentStatus"    # Z

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/touping/LelinkProcessService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "FROM_KEY"

    const-string v3, "FROM_WIRELESS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static resetPrivateMode()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->mHanlde:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcn/nubia/touping/Utils/TouPingProvider;->mHanlde:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    :cond_0
    return-void
.end method

.method public static sendMessageDelay(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayTime"    # I

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 76
    sget-object v2, Lcn/nubia/touping/Utils/TouPingProvider;->mHanlde:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendMessageDelay(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentStatus"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcn/nubia/touping/Utils/TouPingProvider;->sendMessageDelay(Landroid/content/Context;I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setTurnOffSkipSwitch(Z)V

    goto :goto_0
.end method

.method private static setflagCALL_3(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentFlag"    # Z

    .prologue
    .line 165
    const-string v1, "flagCALL_3"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "sSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flagCALL_3KEY"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method private static showOrHideWindowInOtherDisplay(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 454
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    if-nez v9, :cond_2

    .line 455
    :cond_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->hideWindowForHelpUserPrivateInfo(Z)V

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "VIEW_CURRENT_FOCUS_STATUS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 459
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->hideWindowForHelpUserPrivateInfo(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "inputType"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 463
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->hideWindowForHelpUserPrivateInfo(Z)V

    goto :goto_0

    .line 468
    :cond_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v9

    if-nez v9, :cond_5

    .line 469
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v6

    .line 470
    .local v6, "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    if-nez v6, :cond_5

    .line 471
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->hideWindowForHelpUserPrivateInfo(Z)V

    goto :goto_0

    .line 476
    .end local v6    # "mPcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :cond_5
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "VIEW_CURRENT_FOCUS_STATUS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 477
    .local v7, "view_has_focus":I
    if-lez v7, :cond_7

    move v2, v8

    .line 478
    .local v2, "hasFocus":Z
    :goto_1
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "inputType"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 479
    .local v3, "inputType":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "nubia_systemui_wifidisplay_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_6

    move v5, v8

    .line 482
    .local v5, "isNubiaTouPing":Z
    :cond_6
    const-string v9, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "app_mirror_status"

    invoke-static {v10, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 484
    .local v1, "flag_small_window":Z
    if-nez v1, :cond_8

    if-eqz v5, :cond_8

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isSecureWindow()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 485
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcn/nubia/touping/Utils/MyPresentation;->showWindowForHelpUserPrivateInfo(Landroid/content/Context;Z)V

    goto :goto_0

    .end local v1    # "flag_small_window":Z
    .end local v2    # "hasFocus":Z
    .end local v3    # "inputType":I
    .end local v5    # "isNubiaTouPing":Z
    :cond_7
    move v2, v5

    .line 477
    goto :goto_1

    .line 489
    .restart local v1    # "flag_small_window":Z
    .restart local v2    # "hasFocus":Z
    .restart local v3    # "inputType":I
    .restart local v5    # "isNubiaTouPing":Z
    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v3}, Lcn/nubia/touping/Utils/TouPingProvider;->isPasswordInputType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v5, :cond_9

    if-nez v1, :cond_9

    .line 490
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcn/nubia/touping/Utils/MyPresentation;->showWindowForHelpUserPrivateInfo(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 492
    :cond_9
    const/4 v4, 0x1

    .line 493
    .local v4, "input_type_num":I
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "input_type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 494
    sget-object v9, Lcn/nubia/touping/Utils/TouPingProvider;->extras:Landroid/os/Bundle;

    const-string v10, "input_type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 496
    :cond_a
    if-ne v4, v8, :cond_1

    .line 497
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->hideWindowForHelpUserPrivateInfo(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    const-string v4, "TouPingProvider_call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  Lebostatus = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "MirrorPlayStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    move v1, v2

    .line 143
    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 25
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 182
    :try_start_0
    const-string v20, "CALL_1"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 183
    const-string v20, "TouPingProvider_CALL_1"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  Lebostatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v8

    .line 186
    .local v8, "currentMirrorPlayingStatus":Z
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v9

    .line 188
    .local v9, "currentNubiaPCMirrorStatus":Z
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v15

    .line 190
    .local v15, "nubiaMiracastTouPingStatus":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v21, "MirrorPlayStatus"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-eqz v15, :cond_3

    :cond_0
    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v13, 0x0

    .line 193
    .local v13, "flag":Z
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 194
    .local v7, "context":Landroid/content/Context;
    if-eqz v7, :cond_1

    .line 195
    invoke-static {v7}, Lcn/nubia/touping/Utils/TouPingProvider;->getFlagCALL_3(Landroid/content/Context;)Z

    move-result v13

    .line 197
    :cond_1
    const-string v20, "TouPingProvider_CALL_1"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "flag = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-nez v8, :cond_2

    if-eqz v13, :cond_2

    .line 199
    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setAudioNubiaProjection(Landroid/content/Context;Z)V

    .line 200
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcn/nubia/touping/Utils/TouPingProvider;->oprateWirelessService(Landroid/content/Context;Z)V

    .line 201
    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/TouPingProvider;->setflagCALL_3(Landroid/content/Context;Z)V

    .line 429
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "currentMirrorPlayingStatus":Z
    .end local v9    # "currentNubiaPCMirrorStatus":Z
    .end local v13    # "flag":Z
    .end local v15    # "nubiaMiracastTouPingStatus":Z
    :cond_2
    :goto_1
    return-object v4

    .line 191
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "currentMirrorPlayingStatus":Z
    .restart local v9    # "currentNubiaPCMirrorStatus":Z
    .restart local v15    # "nubiaMiracastTouPingStatus":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 204
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v8    # "currentMirrorPlayingStatus":Z
    .end local v9    # "currentNubiaPCMirrorStatus":Z
    .end local v15    # "nubiaMiracastTouPingStatus":Z
    :cond_4
    const-string v20, "CALL_2"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 205
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 206
    .restart local v4    # "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 207
    .restart local v7    # "context":Landroid/content/Context;
    if-nez v7, :cond_5

    .line 208
    const-string v20, "TouPingProvider_CALL_2"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    const/4 v4, 0x0

    goto :goto_1

    .line 212
    :cond_5
    :try_start_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v9

    .line 213
    .restart local v9    # "currentNubiaPCMirrorStatus":Z
    if-eqz v9, :cond_8

    .line 214
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isMonkeyRunning()Z

    move-result v20

    if-nez v20, :cond_7

    .line 215
    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 219
    :goto_2
    const-string v20, "MirrorClose"

    const-string v21, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 227
    .end local v9    # "currentNubiaPCMirrorStatus":Z
    :catch_0
    move-exception v12

    .line 228
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    const-string v20, "MirrorClose"

    const-string v21, "false"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 425
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 426
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    const-string v20, "TouPingProvider"

    const-string v21, "TouPingProvider call exception"

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 217
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "currentNubiaPCMirrorStatus":Z
    :cond_7
    :try_start_3
    const-string v20, "TouPingProvider"

    const-string v21, "isMonkeyRunning clicked switch to off by centerControl"

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    :cond_8
    const-string v20, "TouPingProvider_CALL_2"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  Lebostatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 223
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopMirrorTouPing()V

    .line 224
    const-string v20, "MirrorClose"

    const-string v21, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 232
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "currentNubiaPCMirrorStatus":Z
    :cond_9
    :try_start_4
    const-string v20, "CALL_3"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 234
    .restart local v7    # "context":Landroid/content/Context;
    if-eqz v7, :cond_a

    if-nez p4, :cond_b

    .line 235
    :cond_a
    const-string v20, "TouPingProvider_CALL_3"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " extras = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 238
    :cond_b
    const/4 v10, 0x0

    .line 239
    .local v10, "currentStatus":Z
    const-string v20, "MirrorPlayStatus"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 240
    const-string v20, "MirrorPlayStatus"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 244
    :goto_4
    invoke-static {v7, v10}, Lcn/nubia/touping/Utils/TouPingProvider;->setflagCALL_3(Landroid/content/Context;Z)V

    .line 245
    const-string v20, "TouPingProvider_CALL_3"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  currentStatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v7, v10}, Lcn/nubia/touping/Utils/LeboLinkStatusOprateUtils;->setAudioNubiaProjection(Landroid/content/Context;Z)V

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcn/nubia/touping/Utils/TouPingProvider;->oprateWirelessService(Landroid/content/Context;Z)V

    .line 250
    invoke-static {v7, v10}, Lcn/nubia/touping/Utils/TouPingProvider;->sendMessageDelay(Landroid/content/Context;Z)V

    .line 252
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setTouPingType(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    if-nez v10, :cond_c

    .line 254
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcn/nubia/touping/Utils/MyPresentation;->crearList(I)V

    .line 256
    :cond_c
    invoke-static {v7, v10}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 257
    if-eqz v10, :cond_6

    .line 259
    invoke-static {v7}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 242
    :cond_d
    const-string v20, "TouPingProvider_CALL_3"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " extras.containsKey(CALL_KEY) + "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "MirrorPlayStatus"

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 261
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "currentStatus":Z
    :cond_e
    const-string v20, "CALL_4"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 263
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_4"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz p4, :cond_6

    const-string v20, "BURYINGPOINT_WIRELESS_CALL4"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 265
    invoke-static {v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForWireLess(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .local v5, "bunlde":Landroid/os/Bundle;
    move-object v4, v5

    .line 266
    goto/16 :goto_1

    .line 268
    .end local v5    # "bunlde":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    :cond_f
    const-string v20, "CALL_44"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 270
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_44"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz p4, :cond_6

    const-string v20, "BURYINGPOINT_WIRELESS_CALL44"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 272
    invoke-static {v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForUSBMirrorCollectData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .restart local v5    # "bunlde":Landroid/os/Bundle;
    move-object v4, v5

    .line 273
    goto/16 :goto_1

    .line 275
    .end local v5    # "bunlde":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    :cond_10
    const-string v20, "CALL_5"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 277
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_5"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz p4, :cond_6

    const-string v20, "BURYINGPOINT_WIRE_CALL5"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 279
    invoke-static {v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForWire(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .restart local v5    # "bunlde":Landroid/os/Bundle;
    move-object v4, v5

    .line 280
    goto/16 :goto_1

    .line 282
    .end local v5    # "bunlde":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    :cond_11
    const-string v20, "CALL_6"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 284
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_6"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz p4, :cond_6

    const-string v20, "MIRRORPLAY_TV_INFO"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 286
    const-string v20, "MIRRORPLAY_TV_INFO"

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 287
    .local v16, "num":I
    const-string v20, "TouPingProvider_CALL_6"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static/range {v16 .. v16}, Lcn/nubia/touping/Utils/SendSurfaceControlInfo;->setMirrorNum(I)V

    goto/16 :goto_3

    .line 290
    .end local v7    # "context":Landroid/content/Context;
    .end local v16    # "num":I
    :cond_12
    const-string v20, "CALL_7"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 292
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_7"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p4, :cond_6

    const-string v20, "DEVICE_NAME_SHOW"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 294
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 295
    .restart local v4    # "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "deviceName":Ljava/lang/String;
    const-string v20, "TouPingProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v20, "DEVICE_NAME_SHOW"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    .end local v11    # "deviceName":Ljava/lang/String;
    :cond_13
    const-string v20, "CALL_8"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 302
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_8"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-eqz p4, :cond_6

    const-string v20, "VIRTURE_DISPLAY_RERRESH"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 304
    const/16 v20, 0x1f4

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcn/nubia/touping/Utils/TouPingProvider;->sendMessageDelay(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 306
    .end local v7    # "context":Landroid/content/Context;
    :cond_14
    const-string v20, "CALL_9"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 308
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_9"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p4, :cond_6

    const-string v20, "SMALL_MIRROR_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 310
    const-string v20, "SMALL_MIRROR_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 311
    .local v14, "keepVirtualDisplay":Z
    const-string v20, "TouPingProvider_CALL_9"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " keepVirtualDisplay = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v21

    const v22, 0x120006

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    if-nez v14, :cond_15

    const/16 v20, 0x1

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    const/16 v20, 0x0

    goto :goto_5

    .line 314
    .end local v7    # "context":Landroid/content/Context;
    .end local v14    # "keepVirtualDisplay":Z
    :cond_16
    const-string v20, "CALL_10"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 316
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_10"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz p4, :cond_6

    const-string v20, "SMALLWINDOW_MIRROR_COLLECTINGDATA"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 318
    const-string v20, "SMALLWINDOW_MIRROR_COLLECTINGDATA"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 319
    .local v19, "wiredlessStatus":Z
    const-string v20, "TouPingProvider_CALL_10"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  wiredlessStatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v6, 0x0

    .line 321
    .local v6, "bunlde10":Landroid/os/Bundle;
    if-eqz v19, :cond_19

    sget-boolean v20, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v20, :cond_19

    .line 323
    invoke-static {v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForUSBMirrorCollectData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    .line 324
    const-string v20, "pc_configuration"

    sget-object v21, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->currentPCInfo:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget v3, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 328
    .local v3, "bit_rate":I
    :try_start_5
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    move-result-object v18

    .line 329
    .local v18, "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    if-eqz v18, :cond_17

    .line 330
    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->videoConfig:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v3, v0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/VideoEncodeConfig;->bitrate:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 335
    .end local v18    # "screenRecorder":Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;
    :cond_17
    :goto_6
    :try_start_6
    const-string v20, "bit_rate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v20, "mirrortype"

    const-string v21, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "bit_rate":I
    :cond_18
    :goto_7
    move-object v4, v6

    .line 343
    goto/16 :goto_1

    .line 332
    .restart local v3    # "bit_rate":I
    :catch_2
    move-exception v12

    .line 333
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 338
    .end local v3    # "bit_rate":I
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_19
    move/from16 v0, v19

    invoke-static {v7, v0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getBundleDataFowSmallWindowMirror(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 339
    if-eqz v19, :cond_18

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 340
    const-string v20, "bit_rate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getCurrentBitrate(Landroid/content/Context;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 345
    .end local v6    # "bunlde10":Landroid/os/Bundle;
    .end local v7    # "context":Landroid/content/Context;
    .end local v19    # "wiredlessStatus":Z
    :cond_1a
    const-string v20, "CALL_11"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 347
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_11"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz p4, :cond_6

    const-string v20, "VIEW_CURRENT_FOCUS_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 349
    const-string v20, "TouPingProvider_CALL_11"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CALL11_KEY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v20, Lcn/nubia/touping/Utils/TouPingProvider;->mHanlde:Landroid/os/Handler;

    new-instance v21, Lcn/nubia/touping/Utils/TouPingProvider$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Lcn/nubia/touping/Utils/TouPingProvider$2;-><init>(Lcn/nubia/touping/Utils/TouPingProvider;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    sget-object v20, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v21, Lcn/nubia/touping/Utils/TouPingProvider$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/Utils/TouPingProvider$3;-><init>(Lcn/nubia/touping/Utils/TouPingProvider;Landroid/os/Bundle;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 383
    .end local v7    # "context":Landroid/content/Context;
    :cond_1b
    const-string v20, "CALL_12"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 385
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_12"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-eqz p4, :cond_6

    const-string v20, "VIEW_SCREENOFFMIRROR_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 387
    const-string v20, "TouPingProvider_CALL_12"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CALL12_KEY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v20, "VIEW_SCREENOFFMIRROR_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 389
    const-string v20, "VIEW_SCREENOFFMIRROR_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 390
    .local v17, "screenOffStatus":Z
    invoke-static/range {v17 .. v17}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendScreenOffMirrorStatus(Z)V

    goto/16 :goto_3

    .line 393
    .end local v7    # "context":Landroid/content/Context;
    .end local v17    # "screenOffStatus":Z
    :cond_1c
    const-string v20, "CALL_13"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 395
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_13"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz p4, :cond_6

    const-string v20, "TOUPINGAPP_DIED_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 397
    const-string v20, "TouPingProvider_CALL_13"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CALL13_KEY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v20, "TOUPINGAPP_DIED_STATUS"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 399
    const-string v20, "TouPingProvider_CALL_13"

    const-string v21, "111111111111"

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {v7}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionModeForApplication(Landroid/content/Context;)V

    .line 401
    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->tellSystemUI2RefreshMirrorStatus(Landroid/content/Context;)V

    .line 402
    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLink(Landroid/content/Context;)V

    .line 403
    invoke-static {v7}, Lcn/nubia/touping/Utils/GameCollectDataUtils;->clearGameCollectData(Landroid/content/Context;)V

    .line 404
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 405
    const-string v20, "TouPingProvider_CALL_13"

    const-string v21, "222222222222"

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 408
    .end local v7    # "context":Landroid/content/Context;
    :cond_1d
    const-string v20, "CALL_14"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 410
    .restart local v7    # "context":Landroid/content/Context;
    const-string v20, "TouPingProvider_CALL_14"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " context = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    if-eqz p4, :cond_6

    const-string v20, "SUSPEND_REDMAGIC_TOUPING"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v7, :cond_6

    .line 412
    const-string v20, "TouPingProvider_CALL_14"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CALL14_KEY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/Utils/TouPingProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v20, "SUSPEND_REDMAGIC_TOUPING"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    const/4 v13, 0x1

    .line 414
    .restart local v13    # "flag":Z
    :goto_8
    const-string v20, "TouPingProvider_CALL_14"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "111111111111 flag  = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  extras.toString() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-eqz v13, :cond_1f

    .line 416
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->toSuspendTouPing()V

    .line 420
    :goto_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 421
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string v20, "SUSPEND_REDMAGIC_TOUPING"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 413
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v13    # "flag":Z
    :cond_1e
    const/4 v13, 0x0

    goto :goto_8

    .line 418
    .restart local v13    # "flag":Z
    :cond_1f
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->toRestartTouPing()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
