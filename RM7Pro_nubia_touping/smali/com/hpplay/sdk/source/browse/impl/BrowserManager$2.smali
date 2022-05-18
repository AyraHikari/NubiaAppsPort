.class Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/impl/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    iput-object p3, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 427
    if-nez p1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/util/List;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 431
    if-nez v0, :cond_4

    .line 433
    const-string v0, "BrowserManager"

    const-string v1, "addQRLelinkServiceInfo not equals"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->b:Ljava/lang/String;

    const-string v1, "platform=windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;I)V

    .line 441
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 443
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 444
    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->c:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;->a:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-interface {v0, v4, p1}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method
