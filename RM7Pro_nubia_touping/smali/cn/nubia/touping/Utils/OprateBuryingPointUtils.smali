.class public Lcn/nubia/touping/Utils/OprateBuryingPointUtils;
.super Ljava/lang/Object;
.source "OprateBuryingPointUtils.java"


# static fields
.field public static final CALL_4_KEY1:Ljava/lang/String; = "CALL_4_KEY1"

.field public static final CALL_4_KEY10:Ljava/lang/String; = "CALL_4_KEY10"

.field public static final CALL_4_KEY11:Ljava/lang/String; = "CALL_4_KEY11"

.field public static final CALL_4_KEY12:Ljava/lang/String; = "CALL_4_KEY12"

.field public static final CALL_4_KEY13:Ljava/lang/String; = "CALL_4_KEY13"

.field public static final CALL_4_KEY14:Ljava/lang/String; = "CALL_4_KEY14"

.field public static final CALL_4_KEY15:Ljava/lang/String; = "CALL_4_KEY15"

.field public static final CALL_4_KEY16:Ljava/lang/String; = "CALL_4_KEY16"

.field public static final CALL_4_KEY17:Ljava/lang/String; = "CALL_4_KEY17"

.field public static final CALL_4_KEY18:Ljava/lang/String; = "CALL_4_KEY18"

.field public static final CALL_4_KEY2:Ljava/lang/String; = "CALL_4_KEY2"

.field public static final CALL_4_KEY3:Ljava/lang/String; = "CALL_4_KEY3"

.field public static final CALL_4_KEY4:Ljava/lang/String; = "CALL_4_KEY4"

.field public static final CALL_4_KEY5:Ljava/lang/String; = "CALL_4_KEY5"

.field public static final CALL_4_KEY6:Ljava/lang/String; = "CALL_4_KEY6"

.field public static final CALL_4_KEY7:Ljava/lang/String; = "CALL_4_KEY7"

.field public static final CALL_4_KEY8:Ljava/lang/String; = "CALL_4_KEY8"

.field public static final CALL_4_KEY9:Ljava/lang/String; = "CALL_4_KEY9"

.field public static final CALL_5_KEY1:Ljava/lang/String; = "CALL_5_KEY1"

.field public static final CALL_5_KEY10:Ljava/lang/String; = "CALL_5_KEY10"

.field public static final CALL_5_KEY11:Ljava/lang/String; = "CALL_5_KEY11"

.field public static final CALL_5_KEY2:Ljava/lang/String; = "CALL_5_KEY2"

.field public static final CALL_5_KEY3:Ljava/lang/String; = "CALL_5_KEY3"

.field public static final CALL_5_KEY4:Ljava/lang/String; = "CALL_5_KEY4"

.field public static final CALL_5_KEY5:Ljava/lang/String; = "CALL_5_KEY5"

.field public static final CALL_5_KEY6:Ljava/lang/String; = "CALL_5_KEY6"

.field public static final CALL_5_KEY7:Ljava/lang/String; = "CALL_5_KEY7"

.field public static final CALL_5_KEY8:Ljava/lang/String; = "CALL_5_KEY8"

.field public static final CALL_5_KEY9:Ljava/lang/String; = "CALL_5_KEY9"

.field private static final TAG:Ljava/lang/String; = "OprateBuryingPointUtils"

.field private static deviceNameKeep:Ljava/lang/String;

.field private static deviceTypeTemp:Ljava/lang/String;

.field private static devicesNameTmp:Ljava/lang/String;

.field private static frameRate:Ljava/lang/String;

.field private static height:Ljava/lang/String;

.field private static width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    .line 121
    const-string v0, "TV"

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    .line 618
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceNameKeep:Ljava/lang/String;

    .line 673
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->width:Ljava/lang/String;

    .line 674
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->height:Ljava/lang/String;

    .line 675
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->frameRate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGlobalSettings(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "privateModeStatus"    # Z

    .prologue
    .line 794
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cast_privacy_model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAllNeedDataForUSBMirrorCollectData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    .line 416
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 417
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "device_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 418
    const-string v1, "duration"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 419
    const-string v1, "privacy_status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getPrivateMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 420
    const-string v1, "cast_package"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 421
    const-string v1, "cast_app"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 422
    const-string v1, "sound_output"

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getSourceByUSB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 423
    const-string v1, "width"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getResolutionWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 424
    const-string v1, "height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getResolutionHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 425
    const-string v1, "phone_refresh_rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 426
    const-string v1, "interface_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getUSBType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 427
    const-string v1, "bitrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 428
    const-string v1, "pc_system_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_system_version"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 429
    const-string v1, "pc_display_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_display_size"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 430
    const-string v1, "pc_screen_resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_screen_resolution"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 431
    const-string v1, "pc_graphics_card"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_graphics_card"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 432
    const-string v1, "pc_cpu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_cpu"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 433
    const-string v1, "pc_memory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pc_memory"

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 434
    const-string v1, "sound_effect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 435
    goto/16 :goto_0
.end method

.method public static getAllNeedDataForWire(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALL_5_KEY1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "CALL_5_KEY2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWireThrowScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v1, "CALL_5_KEY3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getPrivateModeWire(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v1, "CALL_5_KEY4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getPackageNameWire(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v1, "CALL_5_KEY5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAppNameWire(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v1, "CALL_5_KEY6"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getSoundOutput(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v1, "CALL_5_KEY7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getHDMIMirrorWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v1, "CALL_5_KEY8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getHDMIMirrorHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v1, "CALL_5_KEY9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getHDMIMirrorFrameRate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v1, "CALL_5_KEY10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getHDMIMirrorPhoneScreenFrameRate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "CALL_5_KEY11"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWireMirrorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-object v0
.end method

.method public static getAllNeedDataForWireLess(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALL_4_KEY1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getStartType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "CALL_4_KEY2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getLinkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "CALL_4_KEY3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getReceiveDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "CALL_4_KEY4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getRevicesDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "CALL_4_KEY5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getUseTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "CALL_4_KEY6"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getResolutionWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "CALL_4_KEY7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getResolutionHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "CALL_4_KEY8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getCurrentBitrate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "CALL_4_KEY9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWifiFrequency(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "CALL_4_KEY10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getVoiceComeBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "CALL_4_KEY11"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getThrowQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "CALL_4_KEY12"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getPrivateModeWireless(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "CALL_4_KEY13"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWifi_g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "CALL_4_KEY14"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getMirrorAppPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "CALL_4_KEY15"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getMirrorAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "CALL_4_KEY16"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getPhoneRefreshRate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "CALL_4_KEY17"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWirelessMirrorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "CALL_4_KEY18"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getWirelessNetPic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getAppNameWire(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 662
    const-string v0, ""

    return-object v0
.end method

.method public static getBundleDataFowSmallWindowMirror(Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wiredLessstaus"    # Z

    .prologue
    .line 884
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 893
    :goto_0
    return-object v0

    .line 885
    :cond_0
    const/4 v0, 0x0

    .line 886
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 887
    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForWireLess(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 888
    invoke-static {p0, v0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getBundleWirredLessDataFowSmallWindowMirror(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 890
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getAllNeedDataForWire(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 891
    invoke-static {p0, v0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getBundleDataWirredFowSmallWindowMirror(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static getBundleDataWirredFowSmallWindowMirror(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 854
    const-string v12, "CALL_5_KEY1"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "call_1":Ljava/lang/String;
    const-string v12, "CALL_5_KEY2"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, "call_2":Ljava/lang/String;
    const-string v12, "CALL_5_KEY3"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 857
    .local v5, "call_3":Ljava/lang/String;
    const-string v12, "CALL_5_KEY4"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 858
    .local v6, "call_4":Ljava/lang/String;
    const-string v12, "CALL_5_KEY5"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "call_5":Ljava/lang/String;
    const-string v12, "CALL_5_KEY6"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, "call_6":Ljava/lang/String;
    const-string v12, "CALL_5_KEY7"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 861
    .local v9, "call_7":Ljava/lang/String;
    const-string v12, "CALL_5_KEY8"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 862
    .local v10, "call_8":Ljava/lang/String;
    const-string v12, "CALL_5_KEY9"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 863
    .local v11, "call_9":Ljava/lang/String;
    const-string v12, "CALL_5_KEY10"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, "call_10":Ljava/lang/String;
    const-string v12, "CALL_5_KEY11"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "call_11":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v12, "device_name"

    invoke-static {v0, v12, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 868
    const-string v12, "duration"

    invoke-static {v0, v12, v4}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 869
    const-string v12, "privacy_status"

    invoke-static {v0, v12, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 870
    const-string v12, "cast_package"

    invoke-static {v0, v12, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 871
    const-string v12, "cast_app"

    invoke-static {v0, v12, v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 872
    const-string v12, "sound_output"

    invoke-static {v0, v12, v8}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 873
    const-string v12, "width"

    invoke-static {v0, v12, v9}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 874
    const-string v12, "height"

    invoke-static {v0, v12, v10}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 875
    const-string v12, "frame_rate"

    invoke-static {v0, v12, v11}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 876
    const-string v12, "screen_refresh_rate"

    invoke-static {v0, v12, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 877
    const-string v12, "cast_way"

    invoke-static {v0, v12, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 878
    const-string v12, "OprateBuryingPointUtils"

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v12, v13}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-object v0
.end method

.method private static getBundleWirredLessDataFowSmallWindowMirror(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 811
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 848
    :goto_0
    return-object v3

    .line 812
    :cond_0
    const-string v21, "CALL_4_KEY1"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, "call_1":Ljava/lang/String;
    const-string v21, "CALL_4_KEY2"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 814
    .local v13, "call_2":Ljava/lang/String;
    const-string v21, "CALL_4_KEY3"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 815
    .local v14, "call_3":Ljava/lang/String;
    const-string v21, "CALL_4_KEY4"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 816
    .local v15, "call_4":Ljava/lang/String;
    const-string v21, "CALL_4_KEY5"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 817
    .local v16, "call_5":Ljava/lang/String;
    const-string v21, "CALL_4_KEY6"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 818
    .local v17, "call_6":Ljava/lang/String;
    const-string v21, "CALL_4_KEY7"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 819
    .local v18, "call_7":Ljava/lang/String;
    const-string v21, "CALL_4_KEY8"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 820
    .local v19, "call_8":Ljava/lang/String;
    const-string v21, "CALL_4_KEY9"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 821
    .local v20, "call_9":Ljava/lang/String;
    const-string v21, "CALL_4_KEY10"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 822
    .local v5, "call_10":Ljava/lang/String;
    const-string v21, "CALL_4_KEY11"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "call_11":Ljava/lang/String;
    const-string v21, "CALL_4_KEY12"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 824
    .local v7, "call_12":Ljava/lang/String;
    const-string v21, "CALL_4_KEY13"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 825
    .local v8, "call_13":Ljava/lang/String;
    const-string v21, "CALL_4_KEY14"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 826
    .local v9, "call_14":Ljava/lang/String;
    const-string v21, "CALL_4_KEY15"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 827
    .local v10, "call_15":Ljava/lang/String;
    const-string v21, "CALL_4_KEY16"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 828
    .local v11, "call_16":Ljava/lang/String;
    const-string v21, "CALL_4_KEY17"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 829
    .local v12, "call_17":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v21, "open_way"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v4}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 831
    const-string v21, "connection_way"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v13}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 832
    const-string v21, "device_type"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v14}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 833
    const-string v21, "device_name"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v15}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 834
    const-string v21, "duration"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v3, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 835
    const-string v21, "width"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 836
    const-string v21, "height"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 837
    const-string v21, "bit_rate"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 838
    const-string v21, "wifiInfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 839
    const-string v21, "sound_source"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 840
    const-string v21, "quality"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 841
    const-string v21, "privacy_status"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 842
    const-string v21, "wifi_g"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v8}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 843
    const-string v21, "cast_package"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v9}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 844
    const-string v21, "cast_app"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v10}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 845
    const-string v21, "screen_refresh_rate"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v11}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 846
    const-string v21, "cast_way"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v12}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 847
    const-string v21, "OprateBuryingPointUtils"

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getCurrentBitrate()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    :try_start_0
    const-string v3, "sys.nubia.projection.wired.remote"

    .line 622
    .local v3, "key":Ljava/lang/String;
    const-string v5, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 623
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "getSystemProperties"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 624
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 626
    sput-object v1, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceNameKeep:Ljava/lang/String;

    .line 634
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 629
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceNameKeep:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    sget-object v1, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceNameKeep:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getEffect(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 348
    const/4 v1, -0x1

    .line 349
    .local v1, "id_dts":I
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_1

    .line 351
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 352
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "SOUND_DTS_WIRED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 358
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v3, "OprateBuryingPointUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changleitest777 id_dts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "none"

    .line 360
    .local v0, "effect":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 371
    const-string v0, "exernal_amplifier"

    .line 374
    :goto_1
    return-object v0

    .line 354
    .end local v0    # "effect":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 355
    .restart local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "SOUND_DTS_WIREDLESS"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 362
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .restart local v0    # "effect":Ljava/lang/String;
    :pswitch_0
    const-string v0, "exernal_amplifier"

    .line 363
    goto :goto_1

    .line 365
    :pswitch_1
    const-string v0, "shooting"

    .line 366
    goto :goto_1

    .line 368
    :pswitch_2
    const-string v0, "earphone"

    .line 369
    goto :goto_1

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getHDMIMirrorFrameRate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    sget-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->frameRate:Ljava/lang/String;

    return-object v0
.end method

.method private static getHDMIMirrorHeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 704
    sget-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->height:Ljava/lang/String;

    return-object v0
.end method

.method private static getHDMIMirrorPhoneScreenFrameRate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHDMIMirrorWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    sget-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->width:Ljava/lang/String;

    return-object v0
.end method

.method public static getLinkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_1

    .line 82
    const-string v1, "usb"

    .line 94
    .local v0, "currentLinkType":I
    .local v1, "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 83
    .end local v0    # "currentLinkType":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v2, :cond_2

    .line 84
    const-string v1, "scan_code"

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, ""

    .line 88
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getLinkType()I

    move-result v0

    .line 89
    .restart local v0    # "currentLinkType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 90
    const-string v1, "search"

    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 92
    const-string v1, "scan_code"

    goto :goto_0
.end method

.method public static getMirrorAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string v0, ""

    return-object v0
.end method

.method public static getMirrorAppPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const-string v0, ""

    return-object v0
.end method

.method private static getPackageNameWire(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 657
    const-string v0, ""

    return-object v0
.end method

.method public static getPhoneRefreshRate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrivateMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    const-string v1, "PRIVATE_MODE_USB"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    .local v0, "privateMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPrivateModeWire(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    const-string v1, ""

    .line 646
    .local v1, "result":Ljava/lang/String;
    const-string v2, "PRIVATE_MODE_WIRED"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 647
    .local v0, "privateModeSwitch":Z
    if-eqz v0, :cond_0

    .line 648
    const-string v1, "on"

    .line 652
    :goto_0
    return-object v1

    .line 650
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method public static getPrivateModeWireless(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v1, "turn_on"

    .line 216
    .local v1, "result":Ljava/lang/String;
    const-string v2, "PRIVATE_MODE_WIRELESS"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 217
    .local v0, "autoMode":Z
    if-eqz v0, :cond_0

    .line 218
    const-string v1, "turn_on"

    .line 222
    :goto_0
    return-object v1

    .line 220
    :cond_0
    const-string v1, "turn_off"

    goto :goto_0
.end method

.method public static getReceiveDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v0, "TV"

    .line 101
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorTypeIsPC()Z

    move-result v1

    .line 103
    .local v1, "isPC":Z
    if-eqz v1, :cond_1

    .line 104
    const-string v0, "PC"

    .line 108
    :goto_0
    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    .line 117
    .end local v1    # "isPC":Z
    :cond_0
    :goto_1
    return-object v0

    .line 106
    .restart local v1    # "isPC":Z
    :cond_1
    const-string v0, "TV"

    goto :goto_0

    .line 109
    .end local v1    # "isPC":Z
    :cond_2
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    const-string v0, "PC"

    .line 111
    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_3
    sget-object v2, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->deviceTypeTemp:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getResolutionHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getCurrentHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getResolutionWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getCurrentWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getRevicesDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-string v0, "TV"

    .line 124
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getConnectInfos()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v3, v0

    .line 139
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    :goto_0
    return-object v3

    .line 127
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 128
    .local v2, "mSelectInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "name":Ljava/lang/String;
    sput-object v3, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    goto :goto_0

    .line 131
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    .end local v2    # "mSelectInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    const-string v0, "nubiaPC"

    .line 133
    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    move-object v3, v0

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    sget-object v4, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 137
    sget-object v3, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->devicesNameTmp:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v3, v0

    .line 139
    goto :goto_0
.end method

.method private static getSettingRefreshNum(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x5a

    .line 379
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_screen_rate"

    const/16 v4, 0x5a

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    .local v1, "num":I
    packed-switch v1, :pswitch_data_0

    .line 397
    const/16 v1, 0x5a

    .line 404
    .end local v1    # "num":I
    :goto_0
    return v1

    .line 382
    .restart local v1    # "num":I
    :pswitch_0
    const/16 v1, 0x3c

    .line 383
    goto :goto_0

    .line 385
    :pswitch_1
    const/16 v1, 0x5a

    .line 386
    goto :goto_0

    .line 388
    :pswitch_2
    const/16 v1, 0x78

    .line 389
    goto :goto_0

    .line 391
    :pswitch_3
    const/16 v1, 0x90

    .line 392
    goto :goto_0

    .line 394
    :pswitch_4
    const/16 v1, 0xa5

    .line 395
    goto :goto_0

    .line 401
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getSoundOutput(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 667
    const-string v1, "WIRED_SOUND_OUTPUT"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 669
    .local v0, "sound":Z
    if-eqz v0, :cond_0

    const-string v1, "receiver"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "phone"

    goto :goto_0
.end method

.method private static getSourceByUSB(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const-string v1, "device"

    .line 313
    .local v1, "resule":Ljava/lang/String;
    const-string v2, "SOUND_SOURCE_USB"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 314
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-object v1

    .line 316
    :pswitch_0
    const-string v1, "null"

    .line 317
    goto :goto_0

    .line 319
    :pswitch_1
    const-string v1, "botn"

    .line 320
    goto :goto_0

    .line 322
    :pswitch_2
    const-string v1, "device"

    .line 323
    goto :goto_0

    .line 325
    :pswitch_3
    const-string v1, "microphone"

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStartType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v1, ""

    .line 59
    .local v1, "result":Ljava/lang/String;
    sget-object v0, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->currentStartType:Ljava/lang/String;

    .line 60
    .local v0, "currentStartType":Ljava/lang/String;
    const-string v2, "FROMOTHERAPP_DEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v1, "launch"

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const-string v2, "FROMOTHERAPP_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v1, "setting"

    goto :goto_0

    .line 64
    :cond_2
    const-string v2, "FROMOTHERAPP_GAMESPACE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    const-string v1, "gamecontrol"

    goto :goto_0

    .line 66
    :cond_3
    const-string v2, "FROMOTHERAPP_SYSTEMUI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string v1, "controlcenter"

    goto :goto_0

    .line 68
    :cond_4
    const-string v2, "FROMOTHERAPP_SMALLWINDOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    const-string v1, "smallwindow"

    goto :goto_0

    .line 70
    :cond_5
    const-string v2, "FROMOTHERAPP_VIRTUALGAMEHANDLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    const-string v1, "virtualgamehandle"

    goto :goto_0

    .line 72
    :cond_6
    const-string v2, "FROMOTHERAPP_ENT_KIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v1, "tool_case"

    goto :goto_0
.end method

.method public static getThrowQuality(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const-string v1, ""

    .line 198
    .local v1, "result":Ljava/lang/String;
    const-string v2, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, "mirrorQuality":I
    if-nez v0, :cond_0

    .line 200
    const-string v1, "HD"

    .line 210
    :goto_0
    return-object v1

    .line 201
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 202
    const-string v1, "SD"

    goto :goto_0

    .line 203
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 204
    const-string v1, "fluent"

    goto :goto_0

    .line 205
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 206
    const-string v1, "anchor"

    goto :goto_0

    .line 208
    :cond_3
    const-string v1, "auto"

    goto :goto_0
.end method

.method private static getUSBType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    const-string v0, "none"

    .line 333
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getUsbTypeInfo()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "usbType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const-string v0, "USB20"

    .line 343
    :cond_0
    :goto_0
    const-string v2, "changlei898989"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-object v0

    .line 336
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const-string v0, "USB30"

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb3.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    const-string v0, "USB31"

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const-string v0, "USB31"

    goto :goto_0
.end method

.method public static getUseTime()J
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getVoiceComeBy(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const-string v1, "device"

    .line 177
    .local v1, "resule":Ljava/lang/String;
    const-string v2, "SOUND_SOURCE"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-object v1

    .line 180
    :pswitch_0
    const-string v1, "null"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    const-string v1, "botn"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    const-string v1, "device"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_3
    const-string v1, "microphone"

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getWifiFrequency(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiFrequency(Landroid/content/Context;)I

    move-result v0

    .line 168
    .local v0, "wifiFrequency":I
    if-gez v0, :cond_0

    .line 169
    sget v0, Lcn/nubia/touping/Utils/UtilsWifi;->wifiFrequencyNum:I

    .line 171
    :cond_0
    return v0
.end method

.method public static getWifi_g(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v1

    .line 229
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 230
    sget v1, Lcn/nubia/touping/Utils/UtilsWifi;->numberWifi_g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getWireMirrorType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 719
    const-string v2, "mirror"

    .line 720
    .local v2, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 722
    .local v1, "flag_small_window":Z
    :try_start_0
    const-string v3, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "app_mirror_status"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 723
    const-string v3, "OprateBuryingPointUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flag_small_window = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    if-eqz v1, :cond_0

    .line 728
    const-string v2, "small_window"

    .line 730
    :cond_0
    return-object v2

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWireThrowScreen(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    const-string v0, "0"

    return-object v0
.end method

.method public static getWirelessMirrorType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v2, "mirror"

    .line 258
    .local v2, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 260
    .local v1, "flag_small_window":Z
    :try_start_0
    const-string v3, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "app_mirror_status"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 261
    const-string v3, "OprateBuryingPointUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flag_small_window = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    if-eqz v1, :cond_0

    .line 267
    const-string v2, "small_window"

    .line 269
    :cond_0
    return-object v2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const-string v3, "OprateBuryingPointUtils"

    const-string v4, "flag_small_window = exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getWirelessNetPic(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-string v0, ""

    .line 275
    .local v0, "eventValue":Ljava/lang/String;
    const-string v2, "FLOATING_WINDOW"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, "mirrorStatus":Z
    if-eqz v1, :cond_0

    .line 277
    const-string v0, "on"

    .line 281
    :goto_0
    return-object v0

    .line 279
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public static setAllNeedData2SystemForUSBMirror(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 584
    if-nez p0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string v0, "send_device_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getBuildDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 587
    const-string v0, "bitrate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 588
    const-string v0, "pc_system_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_system_version"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 589
    const-string v0, "pc_display_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_display_size"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 590
    const-string v0, "pc_screen_resolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_screen_resolution"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 591
    const-string v0, "pc_graphics_card"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_graphics_card"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 592
    const-string v0, "pc_cpu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_cpu"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 593
    const-string v0, "pc_memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pc_memory"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 594
    const-string v0, "sound_effect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 596
    const-string v0, "display_projection_frame_rate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_projection_frame_rate"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 597
    const-string v0, "limit_frame_rate_to_60fps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "limit_frame_rate_to_60fps"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 598
    const-string v0, "delay_closing_window"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delay_closing_window"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 599
    const-string v0, "live_optimization_default"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "live_optimization_default"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 600
    const-string v0, "single_window_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "single_window_mode"

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 601
    const-string v0, "OprateBuryingPointUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "usb_screen_projection_used"

    invoke-static {v0, p1}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public static setAllNeedData2SystemForWire(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 764
    const-string v13, "CALL_5_KEY1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "call_1":Ljava/lang/String;
    const-string v13, "CALL_5_KEY2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "call_2":Ljava/lang/String;
    const-string v13, "CALL_5_KEY3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, "call_3":Ljava/lang/String;
    const-string v13, "CALL_5_KEY4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 768
    .local v7, "call_4":Ljava/lang/String;
    const-string v13, "CALL_5_KEY5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 769
    .local v8, "call_5":Ljava/lang/String;
    const-string v13, "CALL_5_KEY6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 770
    .local v9, "call_6":Ljava/lang/String;
    const-string v13, "CALL_5_KEY7"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 771
    .local v10, "call_7":Ljava/lang/String;
    const-string v13, "CALL_5_KEY8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 772
    .local v11, "call_8":Ljava/lang/String;
    const-string v13, "CALL_5_KEY9"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, "call_9":Ljava/lang/String;
    const-string v13, "CALL_5_KEY10"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "call_10":Ljava/lang/String;
    const-string v13, "CALL_5_KEY11"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "call_11":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v13, "device_name"

    invoke-static {v1, v13, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 778
    const-string v13, "duration"

    invoke-static {v1, v13, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 779
    const-string v13, "privacy_status"

    invoke-static {v1, v13, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 780
    const-string v13, "cast_package"

    invoke-static {v1, v13, v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 781
    const-string v13, "cast_app"

    invoke-static {v1, v13, v8}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 782
    const-string v13, "sound_output"

    invoke-static {v1, v13, v9}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 783
    const-string v13, "width"

    invoke-static {v1, v13, v10}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 784
    const-string v13, "height"

    invoke-static {v1, v13, v11}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 785
    const-string v13, "frame_rate"

    invoke-static {v1, v13, v12}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 786
    const-string v13, "screen_refresh_rate"

    invoke-static {v1, v13, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 787
    const-string v13, "cast_way"

    invoke-static {v1, v13, v4}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 788
    const-string v13, "OprateBuryingPointUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hdmi data : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v13, "wired_screen_projection_used"

    invoke-static {v13, v1}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 790
    return-void
.end method

.method public static setAllNeedData2SystemForWireLess(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 519
    if-nez p0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v23, "CALL_4_KEY1"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "call_1":Ljava/lang/String;
    const-string v23, "CALL_4_KEY2"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 522
    .local v15, "call_2":Ljava/lang/String;
    const-string v23, "CALL_4_KEY3"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 523
    .local v16, "call_3":Ljava/lang/String;
    const-string v23, "CALL_4_KEY4"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 524
    .local v17, "call_4":Ljava/lang/String;
    const-string v23, "CALL_4_KEY5"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 525
    .local v18, "call_5":Ljava/lang/String;
    const-string v23, "CALL_4_KEY6"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 526
    .local v19, "call_6":Ljava/lang/String;
    const-string v23, "CALL_4_KEY7"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 527
    .local v20, "call_7":Ljava/lang/String;
    const-string v23, "CALL_4_KEY8"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 528
    .local v21, "call_8":Ljava/lang/String;
    const-string v23, "CALL_4_KEY9"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 529
    .local v22, "call_9":Ljava/lang/String;
    const-string v23, "CALL_4_KEY10"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "call_10":Ljava/lang/String;
    const-string v23, "CALL_4_KEY11"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "call_11":Ljava/lang/String;
    const-string v23, "CALL_4_KEY12"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, "call_12":Ljava/lang/String;
    const-string v23, "CALL_4_KEY13"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "call_13":Ljava/lang/String;
    const-string v23, "CALL_4_KEY14"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 534
    .local v10, "call_14":Ljava/lang/String;
    const-string v23, "CALL_4_KEY15"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 535
    .local v11, "call_15":Ljava/lang/String;
    const-string v23, "CALL_4_KEY16"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, "call_16":Ljava/lang/String;
    const-string v23, "CALL_4_KEY17"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 537
    .local v13, "call_17":Ljava/lang/String;
    const-string v23, "CALL_4_KEY18"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 539
    .local v14, "call_18":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v23, "open_way"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 541
    const-string v23, "connection_way"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v15}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 542
    const-string v23, "device_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 543
    const-string v23, "device_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 544
    const-string v23, "duration"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 545
    const-string v23, "width"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 546
    const-string v23, "height"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 547
    const-string v23, "bit_rate"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 548
    const-string v23, "wifiInfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 549
    const-string v23, "sound_source"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 550
    const-string v23, "quality"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 551
    const-string v23, "privacy_status"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v8}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 552
    const-string v23, "wifi_g"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v9}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 553
    const-string v23, "cast_package"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v10}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 554
    const-string v23, "cast_app"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v11}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 555
    const-string v23, "screen_refresh_rate"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v12}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 556
    const-string v23, "cast_way"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v13}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 557
    const-string v23, "wireless_pic"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v14}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 561
    const-string v23, "send_device_name"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getBuildDevice()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 562
    const-string v23, "bitrate"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 563
    const-string v23, "pc_system_version"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_system_version"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 564
    const-string v23, "pc_display_size"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_display_size"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 565
    const-string v23, "pc_screen_resolution"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_screen_resolution"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 566
    const-string v23, "pc_graphics_card"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_graphics_card"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 567
    const-string v23, "pc_cpu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_cpu"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 568
    const-string v23, "pc_memory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pc_memory"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 569
    const-string v23, "sound_effect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 571
    const-string v23, "display_projection_frame_rate"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "display_projection_frame_rate"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 572
    const-string v23, "limit_frame_rate_to_60fps"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "limit_frame_rate_to_60fps"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 573
    const-string v23, "delay_closing_window"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "delay_closing_window"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 574
    const-string v23, "live_optimization_default"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "live_optimization_default"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 576
    const-string v23, "single_window_mode"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "single_window_mode"

    invoke-static/range {v25 .. v25}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 578
    const-string v23, "OprateBuryingPointUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "wireless data : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v23, "wireless_screen_projection_used"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public static setAllNeedData2SystemForWireLessMiracast(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v24, "CALL_4_KEY1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "call_1":Ljava/lang/String;
    const-string v24, "CALL_4_KEY2"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "call_2":Ljava/lang/String;
    const-string v24, "CALL_4_KEY3"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 446
    .local v16, "call_3":Ljava/lang/String;
    const-string v24, "CALL_4_KEY4"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 447
    .local v17, "call_4":Ljava/lang/String;
    const-string v24, "CALL_4_KEY5"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 448
    .local v18, "call_5":Ljava/lang/String;
    const-string v24, "CALL_4_KEY6"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 449
    .local v19, "call_6":Ljava/lang/String;
    const-string v24, "CALL_4_KEY7"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 450
    .local v20, "call_7":Ljava/lang/String;
    const-string v24, "CALL_4_KEY8"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 451
    .local v21, "call_8":Ljava/lang/String;
    const-string v24, "CALL_4_KEY9"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 452
    .local v22, "call_9":Ljava/lang/String;
    const-string v24, "CALL_4_KEY10"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, "call_10":Ljava/lang/String;
    const-string v24, "CALL_4_KEY11"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "call_11":Ljava/lang/String;
    const-string v24, "CALL_4_KEY12"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "call_12":Ljava/lang/String;
    const-string v24, "CALL_4_KEY13"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "call_13":Ljava/lang/String;
    const-string v24, "CALL_4_KEY14"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, "call_14":Ljava/lang/String;
    const-string v24, "CALL_4_KEY15"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, "call_15":Ljava/lang/String;
    const-string v24, "CALL_4_KEY16"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, "call_16":Ljava/lang/String;
    const-string v24, "CALL_4_KEY17"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, "call_17":Ljava/lang/String;
    const-string v24, "CALL_4_KEY18"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, "call_18":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v24, "open_way"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 464
    const-string v24, "connection_way"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v15}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 465
    const-string v24, "device_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 466
    const-string v24, "device_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 467
    const-string v24, "duration"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 468
    const-string v24, "width"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 469
    const-string v24, "height"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 470
    const-string v24, "bit_rate"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 471
    const-string v24, "wifiInfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 472
    const-string v24, "sound_source"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v6}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 473
    const-string v24, "quality"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v7}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 474
    const-string v24, "privacy_status"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v8}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 475
    const-string v24, "wifi_g"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v9}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 476
    const-string v24, "cast_package"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v10}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 477
    const-string v24, "cast_app"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v11}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 478
    const-string v24, "screen_refresh_rate"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v12}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 479
    const-string v24, "cast_way"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v13}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 480
    const-string v24, "wireless_pic"

    move-object/from16 v0, v24

    invoke-static {v4, v0, v14}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 482
    const-string v24, "phone_refresh_rate"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getSettingRefreshNum(Landroid/content/Context;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 484
    invoke-static/range {p0 .. p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiGeneration(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    const/16 v23, 0x1

    .line 485
    .local v23, "is5wifi":Z
    :goto_1
    if-eqz v23, :cond_2

    .line 486
    const-string v24, "connection_2.4g"

    const-string v25, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 487
    const-string v24, "connection_5g"

    const-string v25, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 496
    :goto_2
    const-string v24, "send_device_name"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getBuildDevice()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 497
    const-string v24, "bitrate"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 498
    const-string v24, "pc_system_version"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_system_version"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 499
    const-string v24, "pc_display_size"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_display_size"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 500
    const-string v24, "pc_screen_resolution"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_screen_resolution"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 501
    const-string v24, "pc_graphics_card"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_graphics_card"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 502
    const-string v24, "pc_cpu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_cpu"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 503
    const-string v24, "pc_memory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "pc_memory"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 504
    const-string v24, "sound_effect"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 506
    const-string v24, "display_projection_frame_rate"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "display_projection_frame_rate"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 507
    const-string v24, "limit_frame_rate_to_60fps"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "limit_frame_rate_to_60fps"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 508
    const-string v24, "delay_closing_window"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "delay_closing_window"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 509
    const-string v24, "live_optimization_default"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "live_optimization_default"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 510
    const-string v24, "single_window_mode"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "single_window_mode"

    invoke-static/range {v26 .. v26}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;->getJsonStringByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 512
    const-string v24, "OprateBuryingPointUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "miracast data: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcn/nubia/touping/Utils/LogShow;->debuge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v24, "miracast_screen_projection_used"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 484
    .end local v23    # "is5wifi":Z
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 489
    .restart local v23    # "is5wifi":Z
    :cond_2
    const-string v24, "connection_2.4g"

    const-string v25, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 490
    const-string v24, "connection_5g"

    const-string v25, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public static setParamWired(III)V
    .locals 2
    .param p0, "widthParam"    # I
    .param p1, "heightParam"    # I
    .param p2, "frameRateParam"    # I

    .prologue
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->width:Ljava/lang/String;

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->height:Ljava/lang/String;

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->frameRate:Ljava/lang/String;

    .line 696
    return-void
.end method

.method public static setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wiredStatus"    # Z

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 681
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->width:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->height:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->frameRate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "params":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wired_projection_params"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    .end local v1    # "params":Ljava/lang/String;
    :goto_0
    return-void

    .line 684
    :cond_0
    const-string v1, ""

    .line 685
    .restart local v1    # "params":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wired_projection_params"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    .end local v1    # "params":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setPutInfoString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-object p0
.end method
