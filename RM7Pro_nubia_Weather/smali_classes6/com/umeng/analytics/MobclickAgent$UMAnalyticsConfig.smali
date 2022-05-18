.class public Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/MobclickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UMAnalyticsConfig"
.end annotation


# instance fields
.field public mAppkey:Ljava/lang/String;

.field public mChannelId:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mIsCrashEnable:Z

.field public mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    .line 477
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 478
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    .line 482
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 485
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;Z)V

    .line 486
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 6

    .prologue
    .line 489
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;Z)V

    .line 490
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    .line 477
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 478
    iput-object v1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    .line 494
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    .line 495
    iput-object p2, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    .line 496
    iput-object p3, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    .line 497
    iput-boolean p5, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    .line 498
    if-eqz p4, :cond_0

    .line 499
    iput-object p4, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 518
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 503
    :sswitch_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    goto :goto_0

    .line 506
    :sswitch_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    goto :goto_0

    .line 509
    :sswitch_2
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_ANALYTICS_OEM:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    goto :goto_0

    .line 512
    :sswitch_3
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME_OEM:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    goto :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_3
    .end sparse-switch
.end method
