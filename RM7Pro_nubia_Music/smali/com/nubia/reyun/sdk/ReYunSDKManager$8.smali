.class Lcom/nubia/reyun/sdk/ReYunSDKManager$8;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSessionStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private final synthetic val$sessionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->val$sessionName:Ljava/lang/String;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager$8;)Lcom/nubia/reyun/sdk/ReYunSDKManager;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 652
    :try_start_0
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackSessionStart isUpload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsfirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$20(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 657
    const-string v1, "trackSessionStart Error: isUpload false! Did you open switch?"

    .line 656
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$20(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$21(Lcom/nubia/reyun/sdk/ReYunSDKManager;Z)V

    .line 662
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->val$sessionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$22(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 665
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$23()Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    move-result-object v0

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-eq v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v6

    .line 670
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getStoredPauseTime()J

    move-result-wide v4

    .line 671
    sub-long v0, v6, v4

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getHttpHandler()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$8$1;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$8$1;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 680
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->val$sessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackStartup(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getStoredSessionStartTime()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSession(Ljava/lang/String;JJ)V

    .line 683
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedSessionStartTime(J)V

    .line 684
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedPauseTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
