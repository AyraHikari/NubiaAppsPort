.class public Lcn/nubia/weather/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areaKeyConverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "areaKey"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v2, 0x0

    .line 111
    :goto_0
    return-object v2

    .line 103
    :cond_0
    const/4 v2, 0x0

    .line 105
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "startPosition":I
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "endPosition":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 108
    .end local v1    # "endPosition":I
    .end local v3    # "startPosition":I
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpVal"    # F

    .prologue
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 24
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getWindDegree(Ljava/lang/String;)I
    .locals 8
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0xc

    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 52
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 53
    .local v0, "speedVaule":I
    if-ge v0, v1, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-lt v0, v2, :cond_0

    .line 57
    if-ge v0, v3, :cond_2

    .line 58
    const/4 v1, 0x2

    goto :goto_0

    .line 59
    :cond_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 60
    const/4 v1, 0x3

    goto :goto_0

    .line 61
    :cond_3
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_4

    .line 62
    const/4 v1, 0x4

    goto :goto_0

    .line 63
    :cond_4
    const/16 v1, 0x27

    if-ge v0, v1, :cond_5

    .line 64
    const/4 v1, 0x5

    goto :goto_0

    .line 65
    :cond_5
    const/16 v1, 0x32

    if-ge v0, v1, :cond_6

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    const/16 v1, 0x3e

    if-ge v0, v1, :cond_7

    .line 68
    const/4 v1, 0x7

    goto :goto_0

    .line 69
    :cond_7
    const/16 v1, 0x4b

    if-ge v0, v1, :cond_8

    .line 70
    const/16 v1, 0x8

    goto :goto_0

    .line 71
    :cond_8
    const/16 v1, 0x59

    if-ge v0, v1, :cond_9

    .line 72
    const/16 v1, 0x9

    goto :goto_0

    .line 73
    :cond_9
    const/16 v1, 0x67

    if-ge v0, v1, :cond_a

    .line 74
    const/16 v1, 0xa

    goto :goto_0

    .line 75
    :cond_a
    const/16 v1, 0x76

    if-ge v0, v1, :cond_b

    .line 76
    const/16 v1, 0xb

    goto :goto_0

    .line 77
    :cond_b
    const/16 v1, 0x87

    if-ge v0, v1, :cond_c

    move v1, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_c
    const/16 v1, 0x96

    if-ge v0, v1, :cond_d

    .line 80
    const/16 v1, 0xd

    goto :goto_0

    .line 81
    :cond_d
    const/16 v1, 0xa7

    if-ge v0, v1, :cond_e

    .line 82
    const/16 v1, 0xe

    goto :goto_0

    .line 83
    :cond_e
    const/16 v1, 0xb8

    if-ge v0, v1, :cond_f

    .line 84
    const/16 v1, 0xf

    goto :goto_0

    .line 85
    :cond_f
    const/16 v1, 0xca

    if-ge v0, v1, :cond_10

    .line 86
    const/16 v1, 0x10

    goto :goto_0

    .line 87
    :cond_10
    const/16 v1, 0xdd

    if-ge v0, v1, :cond_11

    move v1, v4

    .line 88
    goto :goto_0

    :cond_11
    move v1, v4

    .line 90
    goto :goto_0
.end method

.method public static startViewLink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dailyForecaseLink"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
