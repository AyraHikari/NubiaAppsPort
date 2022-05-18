.class Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;
.super Ljava/lang/Object;
.source "ReYunPointTracker.java"

# interfaces
.implements Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunPointTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReYunPostBatchListener"
.end annotation


# instance fields
.field mData:Lcom/nubia/reyun/sdk/QueryData;

.field mNeedReleaseSDK:Z

.field private mNeedSplitData:Z

.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;


# direct methods
.method public constructor <init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;ZIZ)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mData:Lcom/nubia/reyun/sdk/QueryData;

    .line 702
    iput-boolean p3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mNeedReleaseSDK:Z

    .line 703
    iput-boolean p5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mNeedSplitData:Z

    .line 704
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 708
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatchJsonHttpResponseHandler.onFailure\nexception=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 710
    const-string v2, "responseBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mData:Lcom/nubia/reyun/sdk/QueryData;

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->setDataStatusToNormal(Lcom/nubia/reyun/sdk/QueryData;)V

    .line 712
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 717
    :try_start_0
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@[^_^]@ BatchJsonHttpResponseHandler.onSuccess\nresponseBody="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mData:Lcom/nubia/reyun/sdk/QueryData;

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$4(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mNeedSplitData:Z

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mNeedReleaseSDK:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$5(Lcom/nubia/reyun/sdk/ReYunPointTracker;ZZ)V

    .line 730
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mData:Lcom/nubia/reyun/sdk/QueryData;

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$6(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V

    .line 731
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 727
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->mNeedReleaseSDK:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->release()V

    goto :goto_1
.end method
