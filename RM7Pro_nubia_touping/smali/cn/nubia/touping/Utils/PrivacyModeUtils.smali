.class public Lcn/nubia/touping/Utils/PrivacyModeUtils;
.super Ljava/lang/Object;
.source "PrivacyModeUtils.java"


# static fields
.field private static final DISABLE_FOR_CURRENT_USBTYPE:Ljava/lang/String; = "disable_for_current_isusb"

.field private static final DISABLE_FOR_HDMI:Ljava/lang/String; = "disable_for_hdmi"

.field private static final DISABLE_FOR_USB:Ljava/lang/String; = "disable_for_usb"

.field private static final DISABLE_FOR_WIFI:Ljava/lang/String; = "disable_for_wifi"

.field private static final ENABLE_FOR_CURRENT_USBTYPE:Ljava/lang/String; = "enable_for_current_isusb"

.field private static final ENABLE_FOR_HDMI:Ljava/lang/String; = "enable_for_hdmi"

.field private static final ENABLE_FOR_USB:Ljava/lang/String; = "enable_for_usb"

.field private static final ENABLE_FOR_WIFI:Ljava/lang/String; = "enable_for_wifi"

.field private static final KEY_PRIVATEMODE_STATUS:Ljava/lang/String; = "hideSomeParts"

.field private static final KEY_PRIVATEMODE_WIRED:Ljava/lang/String; = "hideSomeParts_wired"

.field private static final TAG:Ljava/lang/String; = "[PrivacyModeUtils]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v7, "PRIVATE_MODE_WIRED"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "PRIVATE_MODE_WIRELESS"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "PRIVATE_MODE_USB"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 31
    const-string v7, "[PrivacyModeUtils]"

    const-string v8, "error input arg : type"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    :try_start_0
    const-string v7, "PRIVATE_MODE_WIRED"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 36
    .local v4, "isWired":Z
    const/4 v1, 0x1

    .line 37
    .local v1, "defaultStatus":Z
    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 48
    :goto_2
    invoke-static {p1, p0, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 50
    .local v6, "switchOn":Z
    if-eqz v6, :cond_6

    .line 51
    if-eqz v4, :cond_5

    const-string v5, "enable_for_hdmi"

    .line 57
    .local v5, "privateModeStatus":Ljava/lang/String;
    :goto_3
    const-string v7, "PRIVATE_MODE_USB"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    if-eqz v6, :cond_8

    .line 59
    const-string v5, "enable_for_usb"

    .line 65
    :cond_3
    :goto_4
    const-string v7, "[PrivacyModeUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privateModeStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "cn.nubia.throwscreen"

    const-string v8, "cn.nubia.throwscreen.setconfig"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const-string v7, "hideSomeParts"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_4

    .line 71
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    :cond_4
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-static {p0, p1}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatusForUSB(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 76
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "defaultStatus":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isWired":Z
    .end local v5    # "privateModeStatus":Ljava/lang/String;
    .end local v6    # "switchOn":Z
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 37
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "defaultStatus":Z
    .restart local v4    # "isWired":Z
    :sswitch_0
    :try_start_1
    const-string v8, "PRIVATE_MODE_WIRELESS"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "PRIVATE_MODE_WIRED"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "PRIVATE_MODE_USB"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    .line 39
    :pswitch_0
    const/4 v1, 0x1

    .line 40
    goto :goto_2

    .line 42
    :pswitch_1
    const/4 v1, 0x1

    .line 43
    goto :goto_2

    .line 45
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_2

    .line 51
    .restart local v6    # "switchOn":Z
    :cond_5
    const-string v5, "enable_for_wifi"

    goto :goto_3

    .line 53
    :cond_6
    if-eqz v4, :cond_7

    const-string v5, "disable_for_hdmi"

    .restart local v5    # "privateModeStatus":Ljava/lang/String;
    :goto_5
    goto :goto_3

    .end local v5    # "privateModeStatus":Ljava/lang/String;
    :cond_7
    const-string v5, "disable_for_wifi"

    goto :goto_5

    .line 61
    .restart local v5    # "privateModeStatus":Ljava/lang/String;
    :cond_8
    const-string v5, "disable_for_usb"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 37
    :sswitch_data_0
    .sparse-switch
        -0x7bc07fdc -> :sswitch_2
        -0x2d1f8722 -> :sswitch_0
        0x7277ef1f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static tellAMSPrivateModeStatusForUSB(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    :try_start_0
    const-string v4, "PRIVATE_MODE_WIRED"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, "privateModeStatus":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->getMiracastTouPingStatus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    :cond_3
    const-string v3, "disable_for_current_isusb"

    .line 88
    const-string v4, "[PrivacyModeUtils]"

    const-string v5, "privateModeStatus22222 = 222222222"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v4, :cond_5

    .line 92
    const-string v3, "enable_for_current_isusb"

    .line 93
    const-string v4, "[PrivacyModeUtils]"

    const-string v5, "privateModeStatus22222 = 333333333"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5
    if-eqz v3, :cond_0

    .line 99
    const-string v4, "[PrivacyModeUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "privateModeStatus2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "cn.nubia.throwscreen"

    const-string v5, "cn.nubia.throwscreen.setconfig"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    const-string v4, "hideSomeParts"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    instance-of v4, p1, Landroid/app/Activity;

    if-nez v4, :cond_6

    .line 105
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    :cond_6
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "privateModeStatus":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
