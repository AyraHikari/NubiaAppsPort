.class Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;
.super Ljava/lang/Object;
.source "NativeAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/NativeAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindDataProxyWrapper"
.end annotation


# instance fields
.field private mBindDataProxy:Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V
    .locals 0
    .param p1, "bindDataProxy"    # Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;

    .line 618
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V

    return-void
.end method


# virtual methods
.method public BindData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
