.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HjDevice"
.end annotation


# instance fields
.field private android_id:Ljava/lang/String;

.field private avail_memory:J

.field private battery:I

.field private btmac:Ljava/lang/String;

.field private cpusn:Ljava/lang/String;

.field private cputy:Ljava/lang/String;

.field private device_type:I

.field private dpi:D

.field private h:I

.field private imei:Ljava/lang/String;

.field private imei_md5:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private isroot:I

.field private language:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private os_type:Ljava/lang/String;

.field private os_version:Ljava/lang/String;

.field private pdunid:Ljava/lang/String;

.field private por:I

.field private rp:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private vaid:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private w:I


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceType()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->device_type:I

    .line 615
    const-string v1, "Android"

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->os_type:Ljava/lang/String;

    .line 616
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->os_version:Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getVendor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->vendor:Ljava/lang/String;

    .line 618
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->model:Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->android_id:Ljava/lang/String;

    .line 620
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOaid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->oaid:Ljava/lang/String;

    .line 621
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getVaid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->vaid:Ljava/lang/String;

    .line 622
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getUdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->udid:Ljava/lang/String;

    .line 623
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imei:Ljava/lang/String;

    .line 624
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imei_md5:Ljava/lang/String;

    .line 625
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->mac:Ljava/lang/String;

    .line 628
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceDpi()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->dpi:D

    .line 629
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->por:I

    .line 630
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->language:Ljava/lang/String;

    .line 631
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getResolution()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->rp:Ljava/lang/String;

    .line 632
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->isRoot()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->isroot:I

    .line 633
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getBluetoothMac()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->btmac:Ljava/lang/String;

    .line 634
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getSerial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->pdunid:Ljava/lang/String;

    .line 635
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCpuModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->cputy:Ljava/lang/String;

    .line 636
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCPUSerial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->cpusn:Ljava/lang/String;

    .line 637
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imsi:Ljava/lang/String;

    .line 638
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getBattery()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->battery:I

    .line 639
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAvailMem()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->avail_memory:J

    .line 642
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Z)[I

    move-result-object v0

    .line 643
    .local v0, "size":[I
    aget v1, v0, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->w:I

    .line 644
    aget v1, v0, v3

    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->h:I

    .line 645
    return-void

    .end local v0    # "size":[I
    :cond_0
    move v1, v3

    .line 629
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->cputy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->pdunid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->btmac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->isroot:I

    return v0
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->rp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->por:I

    return v0
.end method

.method static synthetic access$1700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)D
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->dpi:D

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->h:I

    return v0
.end method

.method static synthetic access$1900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->w:I

    return v0
.end method

.method static synthetic access$2000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->udid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->vaid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imei_md5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->os_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->device_type:I

    return v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->avail_memory:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->battery:I

    return v0
.end method

.method static synthetic access$800(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$HjDevice;->cpusn:Ljava/lang/String;

    return-object v0
.end method
