.class Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/BrowserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SyncListener"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/impl/BrowserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;->b:Ljava/lang/ref/WeakReference;

    .line 637
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 690
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_1
    return-object v1
.end method


# virtual methods
.method public varargs onAddDevice([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public onSync(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    const-string v0, "SyncListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncListener onSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    if-nez p2, :cond_0

    .line 643
    const-string v0, "SyncListener"

    const-string v1, "SyncListener infos is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 647
    if-nez v0, :cond_1

    .line 648
    const-string v0, "SyncListener"

    const-string v1, "onRead browserManager is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_1
    const/4 v1, 0x0

    .line 659
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 660
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 661
    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 663
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setName(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setIp(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    .line 666
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 667
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 668
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/browse/b/b;

    .line 670
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->f()I

    move-result v7

    invoke-virtual {v1, v7, v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_3

    .line 673
    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 676
    goto :goto_1

    .line 677
    :cond_5
    const-string v1, "SyncListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncListener isChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    if-eqz v2, :cond_6

    .line 680
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 681
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->e(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/impl/a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/browse/impl/a;->a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 684
    :cond_6
    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Ljava/util/List;)V

    goto/16 :goto_0
.end method
