.class public Lcn/nubia/weather/utils/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 10
    :goto_0
    return v1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 16
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 18
    :goto_0
    return-wide v2

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
