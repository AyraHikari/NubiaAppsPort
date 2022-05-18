.class Lcom/nubia/reyun/sdk/ReYunPointTracker$5;
.super Ljava/lang/Object;
.source "ReYunPointTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunPointTracker;->sendReyundata(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

.field private final synthetic val$countLimit:Z

.field private final synthetic val$needRelease:Z


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iput-boolean p2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$countLimit:Z

    iput-boolean p3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$needRelease:Z

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 304
    :try_start_0
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 307
    invoke-static {v3}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v4

    .line 309
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 311
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getPostBatchCount()I

    move-result v3

    .line 313
    iget-boolean v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$countLimit:Z

    if-eqz v5, :cond_2

    move v0, v3

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDataFromGameWithLimit(IZ)Lcom/nubia/reyun/sdk/QueryData;

    move-result-object v0

    .line 314
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V

    .line 315
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 316
    iget-object v5, v0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 318
    :cond_3
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "there is no more data need to send in batch runnable"

    .line 318
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 321
    :cond_4
    :try_start_1
    iget-boolean v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$countLimit:Z

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v6}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v6

    .line 322
    invoke-virtual {v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getPostBatchCount()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 323
    :cond_5
    iget-boolean v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$countLimit:Z

    if-eqz v5, :cond_7

    .line 324
    iget-object v5, v0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v6}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v6

    .line 325
    invoke-virtual {v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getPostBatchCount()I

    move-result v6

    if-lt v5, v6, :cond_7

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 327
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-object v8, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v8}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$8(Lcom/nubia/reyun/sdk/ReYunPointTracker;Landroid/content/Context;)J

    move-result-wide v8

    .line 325
    sub-long/2addr v6, v8

    .line 327
    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 330
    :cond_6
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data.idList.size()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    const-string v2, "   mSdk.getPostBatchCount()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getPostBatchCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v1, v0}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_7
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v5

    if-nez v5, :cond_b

    .line 336
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 337
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 337
    invoke-static {v5}, Lcom/nubia/reyun/utils/CommonUtil;->isNetworkTypeWifi(Landroid/content/Context;)Z

    move-result v5

    .line 338
    if-eqz v5, :cond_0

    .line 341
    :cond_8
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nubia/reyun/utils/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    iget-boolean v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$countLimit:Z

    if-nez v5, :cond_a

    const/16 v5, 0x1f4

    if-le v3, v5, :cond_a

    .line 347
    :goto_1
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 348
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 349
    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDataFromGameWithLimit(IZ)Lcom/nubia/reyun/sdk/QueryData;

    move-result-object v0

    .line 350
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V

    .line 351
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$9(Lcom/nubia/reyun/sdk/ReYunPointTracker;Landroid/content/Context;)V

    .line 353
    :cond_9
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    iget-boolean v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$needRelease:Z

    invoke-static {v2, v0, v3, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$10(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;ZZ)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 346
    goto :goto_1

    .line 356
    :cond_b
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1, v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$11(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V

    .line 357
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1, v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$4(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V

    .line 358
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$12(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    .line 360
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->val$needRelease:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
