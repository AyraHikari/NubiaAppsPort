.class public abstract Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.super Lcom/huanju/ssp/base/core/sdk/AbstractAd;
.source "AbsNormalAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    }
.end annotation


# static fields
.field private static sAdIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

.field mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p4, "keyword"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 35
    const-string v0, "AbsNormalAd: VER_CODE=1"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    invoke-static {}, Lcom/huanju/ssp/sdk/AdManager;->getAdShareClickListener()Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public isAdReady()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    return v0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShowNow:Z

    .line 104
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->requestAd([I)V

    .line 105
    return-void
.end method

.method public loadAndShowAd()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 83
    iget-boolean v4, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mIsCountControl:Z

    if-eqz v4, :cond_0

    .line 84
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "showtime"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 85
    .local v2, "lastShowtime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndShowAd lastShowtime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",lastShowtime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 86
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, "curTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndShowAd curTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",curTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 89
    invoke-static {v2, v3, v0, v1}, Lcom/huanju/ssp/base/utils/SystemUtils;->isSameDayOfMillis(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdClose(I)V

    .line 97
    .end local v0    # "curTime":J
    .end local v2    # "lastShowtime":J
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShowNow:Z

    .line 96
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->requestAd([I)V

    goto :goto_0
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->removeadSlotId()V

    .line 181
    new-instance v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;-><init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 192
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdError(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method protected onAdReady()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdReady mAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onAdViewShow()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start call onDisplayAd() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 111
    const-string v0, "onDisplayAd onAdViewShow: VER_CODE=1"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/listener/AdListener;->onDisplayAd()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCloseAd(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 137
    :cond_0
    return-void
.end method

.method protected removeAdID()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->removeadSlotId()V

    .line 77
    return-void
.end method

.method protected removeSelf()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->removeSelf()V

    .line 67
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->removeadSlotId()V

    .line 68
    return-void
.end method

.method public removeadSlotId()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 228
    sget-object v1, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    sget-object v2, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    sget-object v2, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v0, 0x0

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 237
    :cond_1
    return-void
.end method

.method protected requestAd([I)V
    .locals 5
    .param p1, "viewSize"    # [I

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "isContainid":Z
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    if-eq v2, v3, :cond_2

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 157
    sget-object v2, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    sget-object v3, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const/4 v1, 0x1

    .line 163
    :cond_0
    if-eqz v1, :cond_2

    .line 164
    const-string v2, "\u4e00\u4e2aadSlotId \u53ea\u652f\u6301\u4e00\u4e2a\u5e7f\u544a\u4f4d"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 175
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 156
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adType:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mIsCarousel:Z

    if-nez v2, :cond_3

    .line 171
    const-string v2, "put ad slotid"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->sAdIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    :cond_3
    invoke-super {p0, p1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->requestAd([I)V

    goto :goto_1
.end method

.method public setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 1
    .param p1, "adShareClickListener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 57
    return-void
.end method

.method public setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    .line 53
    :cond_0
    return-void
.end method
