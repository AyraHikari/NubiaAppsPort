.class public Lcn/nubia/touping/Utils/SaveTouPingParamsUtils;
.super Ljava/lang/Object;
.source "SaveTouPingParamsUtils.java"


# static fields
.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field private static final TOUPING_MEDIACODEC_BITRATE:Ljava/lang/String; = "TOUPING_MEDIACODEC_BITRATE"

.field private static final TOUPING_MEDIACODEC_IFRAME:Ljava/lang/String; = "TOUPING_MEDIACODEC_IFRAME"

.field private static final TOUPING_MEDIACODEC_SWITCH:Ljava/lang/String; = "TOUPING_MEDIACODEC_SWITCH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveTouPingParamsBitrate(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitrate"    # I

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

    const-string v2, "TOUPING_MEDIACODEC_BITRATE"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
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

.method public static saveTouPingParamsIframe(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iframe"    # I

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TOUPING_MEDIACODEC_IFRAME"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveTouPingParamsSwitch(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "switchflag"    # I

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

    const-string v2, "TOUPING_MEDIACODEC_SWITCH"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
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
