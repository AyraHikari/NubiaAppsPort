.class public Lcom/nubia/reyun/sdk/ReYunPointTracker;
.super Ljava/lang/Object;
.source "ReYunPointTracker.java"

# interfaces
.implements Lcom/nubia/reyun/sdk/IPointTracker;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanAesToPush:I

.field private mCanAesToTraffic:I

.field private mMostEffortTime:J

.field private mPolicyResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

.field mPostBatchTask:Ljava/util/TimerTask;

.field private mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private mTimeResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

.field private mTrackCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUploadTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/nubia/reyun/sdk/ReYunSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToTraffic:I

    .line 39
    iput v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToPush:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mMostEffortTime:J

    .line 76
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunPointTracker$1;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker$1;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mPostBatchTask:Ljava/util/TimerTask;

    .line 440
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunPointTracker$2;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker$2;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mTimeResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

    .line 487
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker$3;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mPolicyResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

    .line 44
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mTrackCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getWorkHandler()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0, p1, p2, p3}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->postBatchToReYun(Lcom/nubia/reyun/sdk/QueryData;ZZ)V

    return-void
.end method

.method static synthetic access$11(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->sendBatchToNubia(Lcom/nubia/reyun/sdk/QueryData;)V

    return-void
.end method

.method static synthetic access$12(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->checkAuditSend()V

    return-void
.end method

.method static synthetic access$2(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->scheduleTaskByPolicy()V

    return-void
.end method

.method static synthetic access$3(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->updateSwitch()V

    return-void
.end method

.method static synthetic access$4(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->deleteRecordsByIds(Lcom/nubia/reyun/sdk/QueryData;)V

    return-void
.end method

.method static synthetic access$5(Lcom/nubia/reyun/sdk/ReYunPointTracker;ZZ)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->postBatch(ZZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->removeDataStatus(Lcom/nubia/reyun/sdk/QueryData;)V

    return-void
.end method

.method static synthetic access$7(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mTrackCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$8(Lcom/nubia/reyun/sdk/ReYunPointTracker;Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->getPostBatchtTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$9(Lcom/nubia/reyun/sdk/ReYunPointTracker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->savePostBatchtTime(Landroid/content/Context;)V

    return-void
.end method

.method private addAuditRecord(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v0

    .line 130
    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "audit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 135
    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 137
    const-string v1, "session"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-wide v2, v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionStartTime:J

    .line 138
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insertOrUpdateAudit(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    :goto_1
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v2

    .line 141
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insertOrUpdateAudit(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private canAes()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 207
    iget v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToPush:I

    if-ne v2, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/utils/CommonUtil;->canAesToPush(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToPush:I

    .line 210
    :cond_0
    iget v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToTraffic:I

    if-ne v2, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/utils/CommonUtil;->canAesToTrafficControl(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToTraffic:I

    .line 213
    :cond_1
    iget v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToPush:I

    if-ne v1, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mCanAesToTraffic:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAuditSend()V
    .locals 14

    .prologue
    .line 668
    const/16 v2, 0x8

    :try_start_0
    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 672
    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->getAuditTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 673
    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->saveAuditTime(Landroid/content/Context;)V

    .line 675
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 676
    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 675
    invoke-static {v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v9

    .line 677
    invoke-virtual {v9}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 678
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v10

    .line 679
    invoke-virtual {v9, v10, v11}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryAuditAll(J)Ljava/util/List;

    move-result-object v12

    .line 680
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 681
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-lt v8, v13, :cond_2

    .line 686
    invoke-virtual {v9, v10, v11}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->washOldData(J)V

    .line 687
    invoke-virtual {v9}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v2

    .line 691
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 682
    :cond_2
    :try_start_1
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nubia/reyun/sdk/AuditData;

    move-object v7, v0

    .line 683
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const-string v3, "audit"

    const-string v4, "audit"

    const-string v5, "1"

    iget-object v6, v7, Lcom/nubia/reyun/sdk/AuditData;->map:Ljava/util/Map;

    .line 684
    iget-object v7, v7, Lcom/nubia/reyun/sdk/AuditData;->mAccountId:Ljava/lang/String;

    .line 683
    invoke-virtual/range {v2 .. v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1
.end method

.method private deleteRecordsByIds(Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 4

    .prologue
    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 737
    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 736
    invoke-static {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 739
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 743
    invoke-virtual {v2}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V

    .line 747
    :goto_1
    return-void

    .line 740
    :cond_0
    iget-object v0, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->deleteFromGameById(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private fetchPolicy()V
    .locals 6

    .prologue
    .line 265
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getSdkIsUseNet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 270
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 271
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 272
    const-string v3, "app_key"

    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    sget-object v3, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetch policy app_key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "app_key"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 275
    const-string v2, "app_info"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const-string v3, "fetchpolicy"

    invoke-virtual {v2, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getUploadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->makeParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mPolicyResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

    const/4 v4, 0x0

    .line 280
    invoke-static {v0, v2, v1, v3, v4}, Lcom/nubia/reyun/sdk/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;I)V

    .line 285
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getExpiredTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->clearExpiredRecordFromDbase(Landroid/content/Context;I)V

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private fetchTime()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getSdkIsUseNet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const-string v2, "fetchtime"

    invoke-virtual {v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getUploadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2, v3, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->makeParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mTimeResponseHandler:Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;

    const/4 v4, 0x0

    .line 292
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nubia/reyun/sdk/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;I)V

    goto :goto_0
.end method

.method private getAesKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAesKey:Ljava/lang/String;

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Lcom/nubia/reyun/utils/rsa/AES;->getAesKey()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v1

    iput-object v0, v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAesKey:Ljava/lang/String;

    .line 222
    :cond_0
    return-object v0
.end method

.method private getAuditTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 852
    if-nez p1, :cond_0

    .line 857
    :goto_0
    return-wide v0

    .line 856
    :cond_0
    const-string v2, "ry"

    const/4 v3, 0x0

    .line 855
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 857
    const-string v3, "audit_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getPostBatchtTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 830
    if-nez p1, :cond_0

    .line 835
    :goto_0
    return-wide v0

    .line 834
    :cond_0
    const-string v2, "ry"

    const/4 v3, 0x0

    .line 833
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 835
    const-string v3, "post_batch_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private postBatch(ZZ)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 375
    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 378
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDbCount()I

    move-result v1

    .line 379
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V

    .line 380
    div-int/lit16 v0, v1, 0x1f4

    .line 381
    rem-int/lit16 v1, v1, 0x1f4

    .line 382
    if-lez v1, :cond_0

    .line 383
    add-int/lit8 v0, v0, 0x1

    .line 385
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    .line 399
    return-void

    .line 386
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->sendReyundata(ZZ)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private postBatchToReYun(Lcom/nubia/reyun/sdk/QueryData;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 636
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    const-string v1, "data size equals zero, so stop post"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getSdkIsUseNet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postBatchToReYun, count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postBatchToReYun, count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getRetryCountLimit()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunPointTracker$ReYunPostBatchListener;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;Lcom/nubia/reyun/sdk/QueryData;ZIZ)V

    .line 655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 656
    const-string v2, "src"

    const-string v3, "sdk"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 658
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const-string v4, "batch"

    invoke-virtual {v3, v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getUploadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v5, p1, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->makeParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    .line 657
    invoke-static {v2, v3, v1, v0, v4}, Lcom/nubia/reyun/sdk/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;I)V

    .line 663
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->checkAuditSend()V

    goto/16 :goto_0
.end method

.method private removeDataStatus(Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 786
    const-string v1, "ds"

    const/4 v2, 0x0

    .line 785
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 788
    iget-object v0, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    return-void

    .line 788
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 790
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private saveAuditTime(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 839
    if-eqz p1, :cond_0

    .line 841
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 840
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 843
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 844
    const-string v1, "audit_time"

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 844
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 846
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    :cond_0
    return-void
.end method

.method private savePostBatchtTime(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 817
    if-eqz p1, :cond_0

    .line 819
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 818
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 821
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 822
    const-string v1, "post_batch_time"

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 822
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 824
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    :cond_0
    return-void
.end method

.method private scheduleTaskByPolicy()V
    .locals 6

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mPostBatchTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    .line 64
    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getPostBatchInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendBatchToNubia(Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 630
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sendData(Landroid/content/Context;Ljava/util/List;)V

    .line 631
    return-void

    .line 627
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 628
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendMostEffortData()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method private sendReyundata(ZZ)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getHttpHandler()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker$5;-><init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method private trackAuditData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->canAes()Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getSdkIsEncrypt()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 154
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    if-eqz v0, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->getAesKey()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nubia/reyun/utils/rsa/AES;->getSendData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/String;

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const/4 v1, 0x0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 166
    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 168
    const/16 v0, 0x64

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v3}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->queryDataFromGameWithLimit(IZ)Lcom/nubia/reyun/sdk/QueryData;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    :goto_1
    if-lt v3, v6, :cond_5

    .line 174
    :cond_1
    invoke-virtual {v5}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->dataList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 180
    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->dataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 183
    :goto_3
    if-lt v1, v3, :cond_6

    .line 196
    const-string v0, "audit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->addAuditRecord(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->checkAuditSend()V

    .line 204
    :cond_3
    :goto_4
    return-void

    .line 160
    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 171
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->deleteFromGameById(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 170
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 177
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 184
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sendData(Landroid/content/Context;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    if-lez v1, :cond_7

    .line 189
    const-wide/16 v6, 0x2

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 183
    :cond_7
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 190
    :catch_2
    move-exception v0

    goto :goto_5
.end method

.method private trackRun(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getSdkIsEncrypt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/nubia/reyun/utils/CommonUtil;->addRecordToDbase(Landroid/content/Context;Ljava/lang/String;[B)J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->addAuditRecord(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isNetworkTypeWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    :cond_0
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->getAesKey()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nubia/reyun/utils/rsa/AES;->getSendData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/nubia/reyun/utils/CommonUtil;->addRecordToDbase(Landroid/content/Context;Ljava/lang/String;[B)J

    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    const-string v0, "install"

    if-eq p1, v0, :cond_0

    .line 249
    const-string v0, "batch"

    invoke-virtual {p0, v0, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 251
    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    const-string v0, "batchwithlimit"

    invoke-virtual {p0, v0, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 253
    :cond_4
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "startup"

    if-ne p1, v0, :cond_0

    .line 259
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "batch"

    invoke-virtual {p0, v0, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 603
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isSdkUpload()Z

    move-result v0

    .line 604
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isCcUpload()Z

    move-result v1

    .line 605
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isInWhiteList()Z

    move-result v2

    .line 606
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getNubiaUserExperiencePlan()Z

    move-result v3

    .line 607
    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v4

    .line 608
    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0, v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setUploadSwitch(Z)V

    .line 621
    :goto_0
    return-void

    .line 612
    :cond_0
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    .line 613
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0, v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setUploadSwitch(Z)V

    goto :goto_0

    .line 616
    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 617
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0, v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setUploadSwitch(Z)V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setUploadSwitch(Z)V

    goto :goto_0
.end method


# virtual methods
.method clearDataStatus()V
    .locals 3

    .prologue
    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 752
    const-string v1, "ds"

    const/4 v2, 0x0

    .line 751
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 754
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mUploadTimer:Ljava/util/Timer;

    .line 126
    :cond_0
    return-void
.end method

.method public setDataStatusToNormal(Lcom/nubia/reyun/sdk/QueryData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 763
    const-string v1, "ds"

    .line 762
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 765
    iget-object v0, p1, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 770
    return-void

    .line 765
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 767
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    const-string v0, "fetchpolicy"

    if-ne p1, v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->fetchPolicy()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "fetchtime"

    if-ne p1, v0, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->fetchTime()V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "batch"

    if-ne p1, v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0, v1, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->postBatch(ZZ)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "batchwithlimit"

    if-ne p1, v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->postBatch(ZZ)V

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "batchwhenquit"

    if-ne p1, v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, v2, v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->postBatch(ZZ)V

    goto :goto_0

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getIsSendByNubia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->trackAuditData(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 113
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->trackRun(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 114
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mSdk:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker;->mTrackCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setRecordTrackCount(I)V

    goto :goto_0
.end method
