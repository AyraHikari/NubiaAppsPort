.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field private app_id:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private channel_id:Ljava/lang/String;

.field private extend:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private ssp_app_id:Ljava/lang/String;

.field private ssp_slot_id:Ljava/lang/String;

.field private ver_code:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    .line 599
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_version:Ljava/lang/String;

    .line 600
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVerCode()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ver_code:I

    .line 601
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "pk"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_id:Ljava/lang/String;

    .line 571
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    .line 576
    :goto_1
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_CHANNEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->channel_id:Ljava/lang/String;

    .line 577
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_version:Ljava/lang/String;

    .line 578
    return-void

    .line 569
    :cond_0
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_id:Ljava/lang/String;

    goto :goto_0

    .line 574
    :cond_1
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "pk"    # Ljava/lang/String;
    .param p3, "ssp_app_id"    # Ljava/lang/String;
    .param p4, "ssp_slot_id"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_id:Ljava/lang/String;

    .line 586
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    .line 591
    :goto_1
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_CHANNEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->channel_id:Ljava/lang/String;

    .line 592
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_version:Ljava/lang/String;

    .line 593
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ssp_app_id:Ljava/lang/String;

    .line 594
    iput-object p4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ssp_slot_id:Ljava/lang/String;

    .line 595
    return-void

    .line 584
    :cond_0
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_id:Ljava/lang/String;

    goto :goto_0

    .line 589
    :cond_1
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    goto :goto_1
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    if-eqz p1, :cond_0

    .line 605
    const-string v0, "pack_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    .line 606
    const-string v0, "ver_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_version:Ljava/lang/String;

    .line 607
    const-string v0, "extend"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->extend:Ljava/lang/String;

    .line 608
    const-string v0, "ver_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ver_code:I

    .line 610
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->channel_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ssp_slot_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ssp_app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;

    .prologue
    .line 554
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$App;->ver_code:I

    return v0
.end method
