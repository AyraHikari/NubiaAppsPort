.class public final Lcom/huanju/ssp/sdk/normal/SearchAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "SearchAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;,
        Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;
    }
.end annotation


# instance fields
.field private mSearchListener:Lcom/huanju/ssp/sdk/listener/SearchAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/SearchAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->parseData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/sdk/listener/SearchAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mSearchListener:Lcom/huanju/ssp/sdk/listener/SearchAdListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method private parseData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 85
    .local v0, "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    if-eqz v4, :cond_0

    .line 86
    new-instance v2, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-direct {v2, p0, v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 87
    .local v2, "response":Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0    # "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .end local v2    # "response":Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 477
    return-void
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAdClose(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mSearchListener:Lcom/huanju/ssp/sdk/listener/SearchAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/listener/SearchAdListener;->onAdError(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public onNativeAdReach(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SearchAd$1;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd;Ljava/util/List;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/listener/SearchAdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/listener/SearchAdListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd;->mSearchListener:Lcom/huanju/ssp/sdk/listener/SearchAdListener;

    .line 78
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->requestAd([I)V

    .line 79
    return-void
.end method
