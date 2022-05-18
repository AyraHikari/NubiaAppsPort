.class Lcom/nubia/reyun/sdk/ReYunSDKManager$10;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSessionEnd(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$23()Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    move-result-object v0

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-eq v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedPauseTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
