.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GPS"
.end annotation


# instance fields
.field private coordinate_type:I

.field private location:[D

.field private timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->coordinate_type:I

    .line 690
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getLocation()[D

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->location:[D

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;-><init>()V

    return-void
.end method

.method static synthetic access$4700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .prologue
    .line 688
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)[D
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->location:[D

    return-object v0
.end method

.method static synthetic access$4900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;

    .prologue
    .line 688
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$GPS;->coordinate_type:I

    return v0
.end method
