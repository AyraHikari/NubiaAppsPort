.class Lcn/nubia/calendar/util/CtaUtils$5;
.super Ljava/lang/Object;
.source "CtaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/util/CtaUtils;->obtainWeatherDate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/util/CtaUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/util/CtaUtils;

    .prologue
    .line 256
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils$5;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iput-object p2, p0, Lcn/nubia/calendar/util/CtaUtils$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 260
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, "currentTime":J
    iget-object v5, p0, Lcn/nubia/calendar/util/CtaUtils$5;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/calendar/util/WeatherUtils;->getWeatherFromWeatherProvider(Landroid/content/Context;)Z

    move-result v4

    .line 262
    .local v4, "getDataSuccess":Z
    const-string v5, "calendar_preset"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataSuccess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcn/nubia/calendar/util/CtaUtils;->access$200()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 264
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcn/nubia/calendar/util/CtaUtils$5;->val$context:Landroid/content/Context;

    instance-of v5, v5, Lcn/nubia/calendar/HomeActivity;

    if-eqz v5, :cond_0

    .line 265
    invoke-static {v2, v3}, Lcn/nubia/calendar/util/CtaUtils;->access$202(J)J

    .line 266
    iget-object v0, p0, Lcn/nubia/calendar/util/CtaUtils$5;->val$context:Landroid/content/Context;

    check-cast v0, Lcn/nubia/calendar/HomeActivity;

    .line 267
    .local v0, "activity":Lcn/nubia/calendar/HomeActivity;
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 268
    invoke-virtual {v0}, Lcn/nubia/calendar/HomeActivity;->setGoToTime2RefreshWeartherView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0    # "activity":Lcn/nubia/calendar/HomeActivity;
    .end local v2    # "currentTime":J
    .end local v4    # "getDataSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
