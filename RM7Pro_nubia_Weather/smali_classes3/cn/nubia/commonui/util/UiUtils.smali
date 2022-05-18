.class public Lcn/nubia/commonui/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationSwitch(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dynamic_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isFullScreenWindow(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 26
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImmersedStatusBar(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 30
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNubiaUi(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 15
    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcn/nubia/commonui/R$attr;->isNubiaStyle:I

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 16
    .local v0, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 17
    .local v1, "isNubiaStyle":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return v1
.end method
