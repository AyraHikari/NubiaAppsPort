.class Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;
.super Ljava/lang/Object;
.source "SearchAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/SearchAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindDataProxyWrapper"
.end annotation


# instance fields
.field private mBindDataProxy:Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V
    .locals 0
    .param p1, "bindDataProxy"    # Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V

    return-void
.end method


# virtual methods
.method public BindData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;->mBindDataProxy:Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
