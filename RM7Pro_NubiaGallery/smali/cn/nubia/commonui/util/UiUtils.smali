.class public Lcn/nubia/commonui/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationSwitch(Landroid/content/Context;)I
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dynamic_effect"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isFullScreenWindow(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImmersedStatusBar(I)Z
    .locals 1

    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNubiaUi(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0400af

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method
