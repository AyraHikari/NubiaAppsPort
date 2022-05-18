.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Network"
.end annotation


# instance fields
.field private bss_id:Ljava/lang/String;

.field private carrier:I

.field private cellular_id:Ljava/lang/String;

.field private connect_type:I

.field private ip:Ljava/lang/String;

.field private lac:Ljava/lang/String;

.field private lksd:I

.field private mcc:Ljava/lang/String;

.field private net_work_id:Ljava/lang/String;

.field private roaming:I

.field private rssi:I

.field private ssid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIpAddress(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->ip:Ljava/lang/String;

    .line 704
    const/4 v0, 0x0

    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->connect_type:I

    .line 705
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getOperatorsName()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->carrier:I

    .line 706
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCellularId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->cellular_id:Ljava/lang/String;

    .line 707
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getLac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->lac:Ljava/lang/String;

    .line 708
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->mcc:Ljava/lang/String;

    .line 709
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getBssId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->bss_id:Ljava/lang/String;

    .line 710
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetWorkID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->net_work_id:Ljava/lang/String;

    .line 711
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->ssid:Ljava/lang/String;

    .line 712
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getLksd()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->lksd:I

    .line 713
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->rssi:I

    .line 714
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRoaming()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->roaming:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$1;

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->roaming:I

    return v0
.end method

.method static synthetic access$3600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->rssi:I

    return v0
.end method

.method static synthetic access$3700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->lksd:I

    return v0
.end method

.method static synthetic access$3800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->net_work_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->bss_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->lac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->cellular_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->carrier:I

    return v0
.end method

.method static synthetic access$4500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->connect_type:I

    return v0
.end method

.method static synthetic access$4600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Network;->ip:Ljava/lang/String;

    return-object v0
.end method
