.class public Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;
.super Ljava/lang/Object;
.source "RewardVideoAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/RewardVideoAd;


# instance fields
.field private mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-direct {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .line 14
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    return-object v0
.end method

.method public isVideoReady()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->isVideoReady()Z

    move-result v0

    return v0
.end method

.method public setmOrientation(I)V
    .locals 1
    .param p1, "mOrientation"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setmOrientation(I)V

    .line 45
    return-void
.end method

.method public setmRewardAmount(I)V
    .locals 1
    .param p1, "mRewardAmount"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setmRewardAmount(I)V

    .line 35
    return-void
.end method

.method public setmRewardName(Ljava/lang/String;)V
    .locals 1
    .param p1, "mRewardName"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setmRewardName(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setmUserID(Ljava/lang/String;)V
    .locals 1
    .param p1, "mUserID"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setmUserID(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/RewardVideoAdImpl;->mRewardVideoAd:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 25
    return-void
.end method
