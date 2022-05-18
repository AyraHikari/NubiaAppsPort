.class Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowTimeOutTast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$1;

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowTimeOutTast isTimeoutEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3002(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1013
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3102(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1014
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1015
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1600(Lcom/huanju/ssp/sdk/normal/SplashAd;J)V

    .line 1016
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3601(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 1017
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1020
    return-void
.end method
