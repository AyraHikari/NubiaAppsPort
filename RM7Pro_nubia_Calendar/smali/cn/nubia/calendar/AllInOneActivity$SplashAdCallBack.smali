.class public Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/listener/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplashAdCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/AllInOneActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/AllInOneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/AllInOneActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v0}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed:code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onAdReady()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/AllInOneActivity;->access$202(Lcn/nubia/calendar/AllInOneActivity;Z)Z

    .line 171
    return-void
.end method

.method public onClickAd(I)V
    .locals 2
    .param p1, "click_type"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v0}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "splash\u88ab\u70b9\u51fb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onCloseAd(I)V
    .locals 2
    .param p1, "closeType"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v0}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "splash\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onDisplayAd()V
    .locals 6

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v4}, Lcn/nubia/calendar/AllInOneActivity;->access$100(Lcn/nubia/calendar/AllInOneActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v0, v2, v4

    .line 160
    .local v0, "cast":D
    iget-object v2, p0, Lcn/nubia/calendar/AllInOneActivity$SplashAdCallBack;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v2}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splash\u5c55\u793a,\u8017\u65f6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u79d2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method
