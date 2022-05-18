.class abstract Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
.super Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
.source "AbsNormalAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbsAdView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;


# direct methods
.method protected constructor <init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;Landroid/content/Context;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onClickAd(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onClickAd(I)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->onDetachedFromWindow()V

    .line 210
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->removeadSlotId()V

    .line 211
    return-void
.end method
