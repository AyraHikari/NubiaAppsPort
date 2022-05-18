.class public Lcn/nubia/weather/umeng/UmengUtils;
.super Ljava/lang/Object;
.source "UmengUtils.java"


# static fields
.field private static final USER_EXPERIENCE_PLAN:Ljava/lang/String; = "user_experience_plan"

.field private static isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initUmeng(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_experience_plan"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    .line 42
    sget-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v1, v2

    .line 42
    goto :goto_1
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    sget-boolean v0, Lcn/nubia/weather/umeng/UmengUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->reportError(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    return-void
.end method
