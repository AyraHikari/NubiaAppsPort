.class Lcom/nubia/reyun/sdk/ReYunPointTracker$3;
.super Ljava/lang/Object;
.source "ReYunPointTracker.java"

# interfaces
.implements Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunPointTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 490
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPolicyResponseHandler.onFailure\nexception=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    const-string v2, "responseBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$2(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    .line 495
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@[^_^]@ mPolicyResponseHandler.onSuccess\n["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 503
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 595
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$2(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    .line 599
    :cond_1
    return-void

    .line 504
    :cond_2
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 505
    const-string v5, "app_key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 506
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v6}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 507
    const-string v1, "cache"

    const/4 v2, 0x3

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit16 v1, v1, 0xe10

    invoke-virtual {v2, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setExpiredTime(I)V

    .line 509
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->clearPolicy()V

    .line 510
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->clearSwitch()V

    .line 511
    const-string v1, "whitelist"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addSwitch(I)V

    .line 514
    :cond_3
    const-string v1, "sdk_upload"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 515
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addSwitch(I)V

    .line 517
    :cond_4
    const-string v1, "cc_upload"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 518
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addSwitch(I)V

    .line 520
    :cond_5
    const-string v1, "audit"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 521
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addSwitch(I)V

    .line 524
    :cond_6
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$3(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    .line 525
    const-string v1, "disable_events"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 526
    if-eqz v2, :cond_7

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 528
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_a

    .line 536
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setDisableEvents(Ljava/util/List;)V

    .line 538
    :cond_7
    const-string v1, "policys"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_8

    .line 540
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_3
    if-lt v0, v2, :cond_c

    .line 565
    :cond_8
    const/16 v0, 0x3e

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    .line 569
    if-nez v0, :cond_9

    .line 570
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 572
    :cond_9
    const-string v0, "deviceid"

    const-string v1, "imei"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setmDeviceIdType(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storePolicy(Landroid/content/Context;)V

    .line 576
    const-string v0, "version"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/AES;->intToBytes(I)[B

    move-result-object v1

    .line 579
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 580
    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_0

    .line 581
    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/AES;->setSPVer(I)V

    .line 582
    const-string v0, "pub_key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/AES;->setSPPubkey(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 530
    :cond_a
    :try_start_2
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 531
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 533
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 542
    :cond_c
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 543
    const-string v5, "key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 544
    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 545
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 540
    :cond_d
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 546
    :cond_e
    const-string v6, "realtime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 547
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 591
    :catch_1
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 548
    :cond_f
    :try_start_3
    const-string v6, "batch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 549
    const/16 v5, 0x8

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 550
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v5

    .line 551
    const-string v6, "count"

    const/16 v7, 0x32

    .line 550
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setPostBatchCount(I)V

    goto :goto_4

    .line 552
    :cond_10
    const-string v6, "startup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 553
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    goto :goto_4

    .line 554
    :cond_11
    const-string v6, "develop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 555
    const/16 v3, 0x40

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    goto :goto_4

    .line 556
    :cond_12
    const-string v6, "interval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 557
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 558
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v5

    .line 559
    const-string v6, "time"

    const v7, 0x15f90

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 558
    invoke-virtual {v5, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setPostBatchInterval(I)V

    goto :goto_4

    .line 560
    :cond_13
    const-string v3, "quit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 561
    const/16 v3, 0x20

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 503
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
