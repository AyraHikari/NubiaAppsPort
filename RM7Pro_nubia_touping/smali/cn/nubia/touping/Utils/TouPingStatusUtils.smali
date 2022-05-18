.class public Lcn/nubia/touping/Utils/TouPingStatusUtils;
.super Ljava/lang/Object;
.source "TouPingStatusUtils.java"


# static fields
.field private static final DEFAULT:I = 0x0

.field private static final HIGHREFRESHRATE:Ljava/lang/String; = "HighRefreshRate"

.field private static final TAG:Ljava/lang/String; = "TouPingStatusUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportHightFPS(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HighRefreshRate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v3, v1, :cond_0

    .line 18
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 18
    goto :goto_0
.end method
