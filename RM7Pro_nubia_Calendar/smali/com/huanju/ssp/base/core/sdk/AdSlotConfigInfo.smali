.class public Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;
.super Ljava/lang/Object;
.source "AdSlotConfigInfo.java"


# instance fields
.field public adType:Ljava/lang/String;

.field public adslotId:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public dspAdType:I

.field public dspAdslotId:Ljava/lang/String;

.field public dspAppId:Ljava/lang/String;

.field public dspId:Ljava/lang/String;

.field public dspName:Ljava/lang/String;

.field public flowRatio:I

.field public height:Ljava/lang/String;

.field public reqTime:J

.field public requestid:Ljava/lang/String;

.field public sdkEndTime:J

.field public sdkSource:I

.field public sdkStartTime:J

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->adslotId:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->appId:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspName:Ljava/lang/String;

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->flowRatio:I

    return-void
.end method
