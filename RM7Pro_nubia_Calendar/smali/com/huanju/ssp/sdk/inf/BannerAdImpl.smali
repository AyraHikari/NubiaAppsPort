.class public Lcom/huanju/ssp/sdk/inf/BannerAdImpl;
.super Ljava/lang/Object;
.source "BannerAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/BannerAd;


# instance fields
.field private mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-direct {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-direct {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "extend"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/sdk/normal/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    .line 28
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    return-object v0
.end method

.method public recycleBannerView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    instance-of v0, p1, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->recycleBannerView()V

    .line 55
    :cond_0
    return-void
.end method

.method public setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd;->setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 38
    return-void
.end method

.method public setCloseBtnVisible(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "showCloseBtn"    # Z

    .prologue
    .line 61
    instance-of v0, p1, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->setCloseBtnVisible(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/listener/AdListener;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd;->setHjAdListener(Lcom/huanju/ssp/sdk/listener/AdListener;)V

    .line 33
    return-void
.end method

.method public setViewScale(Ljava/lang/Double;)V
    .locals 1
    .param p1, "d"    # Ljava/lang/Double;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/BannerAdImpl;->mBannerAd:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd;->setViewScale(Ljava/lang/Double;)V

    .line 43
    return-void
.end method
