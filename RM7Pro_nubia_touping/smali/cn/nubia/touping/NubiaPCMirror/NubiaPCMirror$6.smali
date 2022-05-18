.class final Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;
.super Ljava/lang/Object;
.source "NubiaPCMirror.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->addPlayGameDot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 489
    :try_start_0
    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 490
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "CHOOSEN_DEVICE"

    const-string v9, "TV"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "ThrowAt":Ljava/lang/String;
    const-string v8, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 493
    .local v2, "mirrorQuality":I
    const-string v3, ""

    .line 494
    .local v3, "mirrorQualityInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 495
    const-string v3, "1080p"

    .line 507
    :goto_0
    const-string v7, "system"

    .line 508
    .local v7, "voiceByInfo":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v8, :cond_9

    .line 509
    :cond_0
    const-string v8, "SOUND_SOURCE"

    const/4 v9, 0x2

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 510
    .local v6, "voiceBy":I
    if-ne v6, v11, :cond_6

    .line 511
    const-string v7, "system_mike"

    .line 532
    .end local v6    # "voiceBy":I
    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ScreenObject="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ResolutionLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ScreenSound="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "setPutInfo":Ljava/lang/String;
    const-string v8, "NubiaPCMirror"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPutInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$6;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lebo_throwing"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    .end local v0    # "ThrowAt":Ljava/lang/String;
    .end local v2    # "mirrorQuality":I
    .end local v3    # "mirrorQualityInfo":Ljava/lang/String;
    .end local v4    # "setPutInfo":Ljava/lang/String;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "voiceByInfo":Ljava/lang/String;
    :goto_2
    return-void

    .line 496
    .restart local v0    # "ThrowAt":Ljava/lang/String;
    .restart local v2    # "mirrorQuality":I
    .restart local v3    # "mirrorQualityInfo":Ljava/lang/String;
    .restart local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    if-ne v2, v11, :cond_3

    .line 497
    const-string v3, "1080p"

    goto :goto_0

    .line 498
    :cond_3
    if-ne v2, v10, :cond_4

    .line 499
    const-string v3, "1080p"

    goto :goto_0

    .line 500
    :cond_4
    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    .line 501
    const-string v3, "1080p"

    goto/16 :goto_0

    .line 504
    :cond_5
    const-string v3, "auto"

    goto/16 :goto_0

    .line 512
    .restart local v6    # "voiceBy":I
    .restart local v7    # "voiceByInfo":Ljava/lang/String;
    :cond_6
    if-ne v6, v10, :cond_7

    .line 513
    const-string v7, "system"

    goto :goto_1

    .line 514
    :cond_7
    if-ne v6, v12, :cond_8

    .line 515
    const-string v7, "mike"

    goto :goto_1

    .line 517
    :cond_8
    const-string v7, "no"

    goto :goto_1

    .line 519
    .end local v6    # "voiceBy":I
    :cond_9
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v8, :cond_1

    .line 520
    const-string v8, "SOUND_SOURCE_USB"

    const/4 v9, 0x2

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 521
    .restart local v6    # "voiceBy":I
    if-ne v6, v11, :cond_a

    .line 522
    const-string v7, "system_mike"

    goto/16 :goto_1

    .line 523
    :cond_a
    if-ne v6, v10, :cond_b

    .line 524
    const-string v7, "system"

    goto/16 :goto_1

    .line 525
    :cond_b
    if-ne v6, v12, :cond_c

    .line 526
    const-string v7, "mike"

    goto/16 :goto_1

    .line 528
    :cond_c
    const-string v7, "no"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 535
    .end local v0    # "ThrowAt":Ljava/lang/String;
    .end local v2    # "mirrorQuality":I
    .end local v3    # "mirrorQualityInfo":Ljava/lang/String;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "voiceBy":I
    .end local v7    # "voiceByInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
