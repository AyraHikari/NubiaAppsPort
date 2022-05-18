.class Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;
.super Ljava/lang/Object;
.source "LockScreenAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockScreenResponseWrapper"
.end annotation


# instance fields
.field private mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;)V
    .locals 0
    .param p1, "lockScreenResponse"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;)V

    return-void
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getH()I

    move-result v0

    return v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getImgPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getType()I

    move-result v0

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;->mLockScreenResponse:Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->getW()I

    move-result v0

    return v0
.end method
