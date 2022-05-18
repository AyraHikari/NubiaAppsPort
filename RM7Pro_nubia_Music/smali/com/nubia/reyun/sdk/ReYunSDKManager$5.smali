.class Lcom/nubia/reyun/sdk/ReYunSDKManager$5;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackRegister(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$14(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-direct {v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$15(Lcom/nubia/reyun/sdk/ReYunSDKManager;Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$14(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$14(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceIdType()Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v3

    .line 475
    const-string v4, "register"

    .line 474
    invoke-static {v2, v3, v4, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$16(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 476
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 477
    const-string v4, "when"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 476
    invoke-static {v3, v4, v5, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$17(Lcom/nubia/reyun/sdk/ReYunSDKManager;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 478
    const-string v1, "context"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$18(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;

    move-result-object v0

    const-string v1, "register"

    invoke-interface {v0, v1, v2}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
