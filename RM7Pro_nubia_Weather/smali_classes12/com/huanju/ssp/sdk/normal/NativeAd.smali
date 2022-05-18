.class public final Lcom/huanju/ssp/sdk/normal/NativeAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;,
        Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;
    }
.end annotation


# instance fields
.field mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

.field private mNativeListener:Lcom/huanju/ssp/sdk/listener/NativeAdListener;

.field mPkgName:Ljava/lang/String;

.field mSlotId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mSlotId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->parseData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mNativeListener:Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->paseKSData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->paseBDData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->paseTTNativeExpressAdData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->paseTTData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huanju/ssp/sdk/normal/NativeAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/huanju/ssp/sdk/normal/NativeAd;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, Lcom/huanju/ssp/sdk/normal/NativeAd;->getAdConfig(JJJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestTTNativeExpress()V

    return-void
.end method

.method static synthetic access$800(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestTTFeedAd()V

    return-void
.end method

.method static synthetic access$900(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAdKS()V

    return-void
.end method

.method private getAdConfig(JJJ)V
    .locals 13
    .param p1, "curTime"    # J
    .param p3, "st"    # J
    .param p5, "et"    # J

    .prologue
    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NativeAd getAdConfig curTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",st."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",et:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 162
    const-wide/16 v6, 0x0

    .line 163
    .local v6, "reqTime":J
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 164
    const-wide/32 v6, 0x927c0

    .line 168
    :goto_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 169
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-nez v3, :cond_2

    .line 179
    :cond_0
    :goto_1
    return-void

    .line 166
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-wide/32 v6, 0x927c0

    goto :goto_0

    .line 172
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 173
    .local v4, "lastTime":J
    sub-long v8, p1, v4

    cmp-long v8, v8, v6

    if-lez v8, :cond_0

    .line 174
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 175
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-interface {v2, v8, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v8

    iget-object v9, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v9, v9, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    iget-object v10, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
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
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 546
    .local v0, "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v4, :cond_0

    .line 547
    :cond_1
    new-instance v2, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {v2, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 548
    .local v2, "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    .end local v0    # "adInfo":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .end local v2    # "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_2
    return-object v1
.end method

.method private paseBDData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobad/feeds/NativeResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mobad/feeds/NativeResponse;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paseBDData list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 532
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobad/feeds/NativeResponse;

    .line 533
    .local v0, "adInfo":Lcom/baidu/mobad/feeds/NativeResponse;
    if-eqz v0, :cond_0

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paseBDData adInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 535
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/baidu/mobad/feeds/NativeResponse;)V

    .line 536
    .local v1, "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    .end local v0    # "adInfo":Lcom/baidu/mobad/feeds/NativeResponse;
    .end local v1    # "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paseBDData responseList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 540
    return-object v2
.end method

.method private paseKSData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kwad/sdk/api/KsNativeAd;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v2, "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paseBDData list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsNativeAd;

    .line 519
    .local v0, "adInfo":Lcom/kwad/sdk/api/KsNativeAd;
    if-eqz v0, :cond_0

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paseBDData adInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 521
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/kwad/sdk/api/KsNativeAd;)V

    .line 522
    .local v1, "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    .end local v0    # "adInfo":Lcom/kwad/sdk/api/KsNativeAd;
    .end local v1    # "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paseBDData responseList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 526
    return-object v2
.end method

.method private paseTTData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTFeedAd;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 506
    .local v2, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 507
    .local v0, "adInfo":Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    if-eqz v0, :cond_0

    .line 508
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 509
    .local v1, "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    .end local v0    # "adInfo":Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .end local v1    # "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_1
    return-object v2
.end method

.method private paseTTNativeExpressAdData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v2, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 497
    .local v0, "adInfo":Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 499
    .local v1, "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    .end local v0    # "adInfo":Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .end local v1    # "response":Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    :cond_1
    return-object v2
.end method

.method private requestAd(I)V
    .locals 3
    .param p1, "reqType"    # I

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAd requestAd reqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 184
    invoke-super {p0, v2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->requestAd([I)V

    .line 217
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 186
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$3;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$3;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 194
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$4;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3

    .line 207
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$5;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$5;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-super {p0, v2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->requestAd([I)V

    goto :goto_0
.end method

.method private requestAdKS()V
    .locals 6

    .prologue
    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++requestNativeAdKS Native requestAd dspAppId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",adPlaceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    const-wide/16 v2, 0x0

    .line 227
    .local v2, "postId":J
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 231
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 232
    const-string v4, "nubia_ad"

    const-string v5, "+++requestNativeAdKS postid is not long"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_1
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-direct {v4, v2, v3}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v1

    .line 237
    .local v1, "scene":Lcom/kwad/sdk/api/KsScene;
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v4

    new-instance v5, Lcom/huanju/ssp/sdk/normal/NativeAd$6;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$6;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-interface {v4, v1, v5}, Lcom/kwad/sdk/api/KsLoadManager;->loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    goto :goto_1
.end method

.method private requestTTFeedAd()V
    .locals 8

    .prologue
    .line 427
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 428
    .local v5, "width":I
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 429
    .local v2, "height":I
    if-gtz v5, :cond_2

    if-gtz v2, :cond_2

    .line 430
    const/16 v5, 0x280

    .line 431
    const/16 v2, 0x140

    .line 437
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 439
    .local v3, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    .line 440
    if-nez v3, :cond_1

    .line 441
    const-string v6, "NativeAd"

    const-string v7, "requestTTFeedAd ttAdManager is null, init"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    .line 446
    :cond_1
    if-nez v3, :cond_4

    .line 447
    const-string v6, "NativeAd"

    const-string v7, "requestTTFeedAd ttAdManager is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_1
    return-void

    .line 432
    .end local v3    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :cond_2
    if-gtz v5, :cond_3

    .line 433
    move v5, v2

    goto :goto_0

    .line 434
    :cond_3
    if-gtz v2, :cond_0

    .line 435
    move v2, v5

    goto :goto_0

    .line 450
    .restart local v3    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :cond_4
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 451
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 452
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 453
    invoke-virtual {v6, v5, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 454
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 455
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 456
    .local v0, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v4

    .line 457
    .local v4, "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    new-instance v6, Lcom/huanju/ssp/sdk/normal/NativeAd$9;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$9;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-interface {v4, v0, v6}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 489
    .end local v0    # "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    .end local v4    # "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private requestTTNativeExpress()V
    .locals 8

    .prologue
    .line 358
    const/high16 v3, 0x43af0000    # 350.0f

    .line 359
    .local v3, "expressViewWidth":F
    const/4 v2, 0x0

    .line 361
    .local v2, "expressViewHeight":F
    :try_start_0
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 362
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 367
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestTTNativeExpress expressViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",expressViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 368
    const/4 v4, 0x0

    .line 370
    .local v4, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v4

    .line 371
    if-nez v4, :cond_0

    .line 372
    const-string v6, "NativeAd"

    const-string v7, "requestTTNativeExpress ttAdManager is null, init"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v4

    .line 378
    :cond_0
    if-nez v4, :cond_1

    .line 379
    const-string v6, "NativeAd"

    const-string v7, "requestTTNativeExpress ttAdManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    :goto_1
    return-void

    .line 363
    .end local v4    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 383
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 384
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 385
    invoke-virtual {v6, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 386
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 387
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 388
    .local v0, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v5

    .line 389
    .local v5, "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    new-instance v6, Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$8;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-interface {v5, v0, v6}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 421
    .end local v0    # "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    .end local v5    # "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    :catch_1
    move-exception v1

    .line 422
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 1759
    return-void
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAdClose(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mNativeListener:Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    .line 128
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
    .line 109
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public requestAd(Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mNativeListener:Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAd requestAd adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$2;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method public requestAdBaidu(Ljava/lang/String;)V
    .locals 7
    .param p1, "adPlaceId"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdBaidu requestAd adPlaceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdBaidu requestAd dspAppId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/baidu/mobads/AdSettings;->setSupportHttps(Z)V

    .line 279
    const/4 v3, -0x1

    .line 280
    .local v3, "width":I
    const/4 v1, -0x1

    .line 282
    .local v1, "height":I
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    :cond_1
    new-instance v0, Lcom/baidu/mobad/feeds/BaiduNative;

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/huanju/ssp/sdk/normal/NativeAd$7;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$7;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    invoke-direct {v0, v4, p1, v5}, Lcom/baidu/mobad/feeds/BaiduNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobad/feeds/BaiduNative$BaiduNativeNetworkListener;)V

    .line 339
    .local v0, "baidu":Lcom/baidu/mobad/feeds/BaiduNative;
    new-instance v4, Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    invoke-direct {v4}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "sex"

    const-string v6, "1"

    .line 341
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "fav_book"

    const-string v6, "\u8fd9\u662f\u5c0f\u8bf4\u7684\u540d\u79f01/\u8fd9\u662f\u5c0f\u8bf4\u7684\u540d\u79f02/\u8fd9\u662f\u5c0f\u8bf4\u7684\u540d\u79f03"

    .line 343
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "page_title"

    const-string v6, "\u6d4b\u8bd5\u4e66\u540d"

    .line 345
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "page_content_id"

    const-string v6, "10930484090"

    .line 347
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "page_content_category"

    const-string v6, "\u4e00\u7ea7\u5206\u7c7b/\u4e8c\u7ea7\u5206\u7c7b"

    .line 349
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    const-string v5, "page_content_label"

    const-string v6, "\u6807\u7b7e1/\u6807\u7b7e2/\u6807\u7b7e3"

    .line 351
    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobad/feeds/RequestParameters$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobad/feeds/RequestParameters$Builder;->build()Lcom/baidu/mobad/feeds/RequestParameters;

    move-result-object v2

    .line 354
    .local v2, "requestParameters":Lcom/baidu/mobad/feeds/RequestParameters;
    invoke-virtual {v0, v2}, Lcom/baidu/mobad/feeds/BaiduNative;->makeRequest(Lcom/baidu/mobad/feeds/RequestParameters;)V

    .line 355
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->appId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mPkgName:Ljava/lang/String;

    .line 106
    return-void
.end method
