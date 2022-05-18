.class Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;
.super Ljava/lang/Object;
.source "LockScreenAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/listener/LockScreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockScreenAdListenerWrapper"
.end annotation


# instance fields
.field private mLockScreenAdListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    .line 87
    return-void
.end method


# virtual methods
.method public onAdReach(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "parseData"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isShow"    # Z

    .prologue
    .line 90
    new-instance v0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$1;)V

    .line 91
    .local v0, "lockScreenResponse":Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/LockScreenAdImpl$LockScreenAdListenerWrapper;->mLockScreenAdListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    invoke-interface {v1, v0, p2, p3}, Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;->onAdReach(Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;Landroid/graphics/Bitmap;Z)V

    .line 94
    :cond_0
    return-void
.end method
