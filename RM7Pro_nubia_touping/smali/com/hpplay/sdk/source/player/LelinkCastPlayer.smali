.class public Lcom/hpplay/sdk/source/player/LelinkCastPlayer;
.super Lcom/hpplay/sdk/source/player/a;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkPlayer;


# static fields
.field private static final w:Ljava/lang/String; = "LelinkCastPlayer"


# instance fields
.field private A:Lcom/hpplay/sdk/source/service/b;

.field private B:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private D:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field private E:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field private F:Z

.field private G:Landroid/content/Context;

.field private H:Ljava/lang/String;

.field v:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

.field private x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

.field private y:Lcom/hpplay/sdk/source/player/a;

.field private z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/a;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 83
    new-instance v0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;-><init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->v:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    .line 71
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b()Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->v:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;)V

    .line 80
    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/c/b;->a(Landroid/content/Context;)V

    .line 81
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    return-object p1
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;
    .locals 5

    .prologue
    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 965
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 966
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    .line 967
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const-string v3, "LelinkCastPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " devList : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_1
    return-object v0

    .line 965
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;Lcom/hpplay/sdk/source/service/b;)Lcom/hpplay/sdk/source/service/b;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    return-object p1
.end method

.method private a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMonitors()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMonitors()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 671
    :cond_0
    const-string v0, "LelinkCastPlayer"

    const-string v1, "set3rdMonitor monitors is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->get3rdDataReport()Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

    move-result-object v0

    .line 675
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;->requestMonitor(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->c(I)V

    return-void
.end method

.method private a(Lcom/hpplay/sdk/source/player/a;Lcom/hpplay/sdk/source/service/b;)V
    .locals 11

    .prologue
    .line 679
    const-string v9, ""

    .line 680
    const-string v10, ""

    .line 681
    const-string v8, ""

    .line 682
    const-string v7, ""

    .line 684
    instance-of v0, p1, Lcom/hpplay/sdk/source/player/b;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 685
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v2

    .line 687
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 688
    const-string v0, "dlna_mode_desc"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    const-string v1, "dlna_mode_name"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 690
    const-string v3, "manufacturer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    move-object v10, v1

    move-object v9, v0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v6

    .line 694
    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 695
    if-eqz v0, :cond_2

    .line 696
    instance-of v1, p1, Lcom/hpplay/sdk/source/player/b;

    if-eqz v1, :cond_3

    .line 697
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 705
    :cond_2
    :goto_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p1, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->o:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v5

    .line 705
    invoke-virtual/range {v0 .. v10}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void

    .line 699
    :cond_3
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_2

    .line 701
    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLiveConnect lelinkServiceInfos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 381
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 382
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v9

    .line 383
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 384
    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v6, ""

    const-string v5, "0"

    .line 386
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 387
    const-string v5, "1"

    .line 388
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 390
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 392
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 395
    if-eqz v0, :cond_b

    .line 396
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v1

    const-string v2, "devicemac"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 398
    const-string v4, ""

    .line 400
    :goto_3
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    .line 402
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v1

    const-string v3, "manufacturer"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    const-string v1, ""

    .line 406
    :cond_3
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 408
    const-string v3, "#"

    const-string v10, ""

    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v11, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v11

    :goto_4
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 414
    goto :goto_2

    .line 411
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    .line 415
    :cond_5
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_7

    .line 423
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :cond_7
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 428
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->H:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->H:Ljava/lang/String;

    .line 430
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLiveConnect dll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->H:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onReceiverLive(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    move-object v4, v1

    goto/16 :goto_3

    :cond_b
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    :cond_c
    move-object v3, v4

    move-object v11, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_4
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 938
    :try_start_0
    const-string v0, "LelinkCastPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passThroughSupportCheck -> mainfestType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 954
    :goto_0
    return v0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    .line 944
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 945
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 946
    iget-object v4, v0, Lcom/hpplay/sdk/source/service/b;->d:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v4, :cond_1

    .line 947
    iget-object v0, v0, Lcom/hpplay/sdk/source/service/b;->d:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/protocol/b;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    const-string v2, "LelinkCastPlayer"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    .line 954
    goto :goto_0
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1031
    if-eqz p1, :cond_2

    .line 1032
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v1

    .line 1033
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1034
    if-eqz p2, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    instance-of v1, v1, Lcom/hpplay/sdk/source/player/b;

    if-nez v1, :cond_0

    .line 1044
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/hpplay/sdk/source/player/a;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 636
    instance-of v0, p1, Lcom/hpplay/sdk/source/player/b;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    .line 637
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    const-string v6, ""

    .line 654
    const-string v7, ""

    .line 655
    const-string v4, ""

    .line 656
    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v3

    .line 657
    if-eqz v3, :cond_1

    .line 658
    const-string v0, "manufacturer"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    const-string v1, "dlna_mode_desc"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 660
    const-string v4, "dlna_mode_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v0

    move-object v7, v3

    move-object v6, v1

    .line 662
    :cond_1
    iget-object v0, p1, Lcom/hpplay/sdk/source/player/a;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p1, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushDlnaSend(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_1
    return v2

    .line 642
    :pswitch_0
    const/16 v5, 0x66

    .line 643
    goto :goto_0

    .line 645
    :pswitch_1
    const/16 v5, 0x67

    .line 646
    goto :goto_0

    .line 648
    :pswitch_2
    const/16 v5, 0x65

    goto :goto_0

    :cond_2
    move v2, v5

    .line 666
    goto :goto_1

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method private b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 1018
    if-eqz p1, :cond_1

    .line 1019
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1021
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    instance-of v1, v1, Lcom/hpplay/sdk/source/player/b;

    if-nez v1, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    const/4 v0, 0x1

    .line 1027
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/hpplay/sdk/source/player/a;)Z
    .locals 1

    .prologue
    .line 1048
    instance-of v0, p1, Lcom/hpplay/sdk/source/player/d;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/hpplay/sdk/source/player/e;

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    const/4 v0, 0x1

    .line 1051
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/IConnectListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->B:Lcom/hpplay/sdk/source/api/IConnectListener;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 349
    .line 350
    sparse-switch p1, :sswitch_data_0

    .line 367
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->E:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->E:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    const v2, 0x120007

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onReverseInfoResult(ILjava/lang/String;)V

    .line 371
    :cond_0
    return-void

    .line 352
    :sswitch_1
    const/4 v0, 0x1

    .line 353
    goto :goto_0

    .line 358
    :sswitch_2
    const/4 v0, 0x2

    .line 359
    goto :goto_0

    .line 361
    :sswitch_3
    const/4 v0, 0x4

    .line 362
    goto :goto_0

    .line 364
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 350
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xca -> :sswitch_0
        0x190 -> :sswitch_2
        0x195 -> :sswitch_3
        0x196 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/LelinkServicePool;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->F:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->F:Z

    .line 278
    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/b;->f()V

    .line 280
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    return-object v0
.end method


# virtual methods
.method public addVolume()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->addVolume()V

    .line 777
    :cond_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 772
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 773
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->addVolume()V

    .line 772
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayLocalAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public canPlayLocalPhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public canPlayLocalVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public canPlayOnlieAudio(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    .line 1001
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_support_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    return v0
.end method

.method public canPlayOnliePhoto(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    .line 991
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_support_pic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    return v0
.end method

.method public canPlayOnlieVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    return v0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const/4 v0, 0x1

    .line 1014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 899
    if-nez p1, :cond_0

    .line 900
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LelinkServiceInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->c()V

    .line 904
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    .line 905
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 908
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    :cond_1
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect LelinkMultiServiceInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v0, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v1, 0x6

    invoke-direct {v0, v5, v1}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 912
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 913
    const-string v2, "vv"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v2, "lelinkport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v2, "airplay"

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 917
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 919
    invoke-virtual {p1, v5, v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 921
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/service/LinkServiceController;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 923
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->E:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 924
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->B:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 925
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a()V

    .line 926
    iput-boolean v5, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->F:Z

    .line 927
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 630
    :cond_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/common/store/Session;->setPushUri(Ljava/lang/String;)V

    .line 633
    :cond_1
    return-void
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 841
    if-nez p1, :cond_0

    move v0, v1

    .line 870
    :goto_0
    return v0

    .line 845
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v3

    .line 847
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v2, v1

    .line 848
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 849
    iget-object v4, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 853
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 854
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p1, v5}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 859
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->stop()V

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 862
    iget-object v4, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b(Lcom/hpplay/sdk/source/service/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    .line 848
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    const-string v2, "LelinkCastPlayer"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v0, v1

    .line 870
    goto :goto_0
.end method

.method public declared-synchronized getConnectLelinkServiceInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 876
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 877
    if-eqz v2, :cond_1

    .line 878
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 879
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 884
    :cond_1
    monitor-exit p0

    return-object v3

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 8

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getSubCreative()Lcom/hpplay/sdk/source/browse/api/AdInfo;

    move-result-object v0

    .line 140
    const/4 v3, 0x0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v3

    .line 144
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    const/16 v1, 0x66

    .line 145
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getAdSessionId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "10"

    move v5, p2

    move v6, p3

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onInteractiveAdEvent(IIILjava/lang/String;IILjava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "LelinkCastPlayer"

    const-string v1, "onAdClosed adinfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getSubCreative()Lcom/hpplay/sdk/source/browse/api/AdInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v3

    .line 128
    :goto_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    const/16 v1, 0x64

    .line 129
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getCreativeId()I

    move-result v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->getAdSessionId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "10"

    move v6, p2

    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onInteractiveAdEvent(IIILjava/lang/String;IILjava/lang/String;)V

    .line 134
    :goto_1
    return-void

    .line 132
    :cond_0
    const-string v0, "LelinkCastPlayer"

    const-string v1, "onAdShow adinfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->pause()V

    .line 721
    :cond_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 716
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 717
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->pause()V

    .line 716
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->stop()V

    .line 812
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->d()V

    .line 813
    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/b;->e()V

    .line 814
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 815
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 816
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 817
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 815
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 820
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->resume()V

    .line 735
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 730
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 731
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->resume()V

    .line 730
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a;->seekTo(I)V

    .line 749
    :cond_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 744
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 745
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a;->seekTo(I)V

    .line 744
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public varargs sendRelevantInfo(I[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_1

    .line 826
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 827
    iget-object v2, v0, Lcom/hpplay/sdk/source/service/b;->d:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v2, :cond_0

    .line 828
    iget-object v0, v0, Lcom/hpplay/sdk/source/service/b;->d:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/protocol/b;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 832
    :cond_1
    return-void
.end method

.method public setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->B:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 890
    return-void
.end method

.method public setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LelinkPlayerInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 167
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e()V

    .line 169
    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setUrl(Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    const-string v1, "LelinkCastPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player url ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "LelinkCastPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 186
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    .line 187
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/player/a;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 258
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 259
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 260
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 259
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e()V

    .line 172
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 174
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLocalPath(Ljava/lang/String;)V

    .line 175
    const-string v2, "LelinkCastPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uri convert to path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/hpplay/sdk/source/c/b;->a()Lcom/hpplay/sdk/source/c/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_5
    const-string v1, "LelinkCastPlayer"

    const-string v2, " uri convert to path failed "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_6
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 192
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 193
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 194
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v1, :cond_7

    .line 195
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/player/a;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    goto/16 :goto_1

    .line 199
    :cond_7
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    if-eqz v1, :cond_8

    .line 200
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 202
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 205
    const-string v1, "LelinkCastPlayer"

    const-string v2, "disconnect other devs"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 206
    :goto_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_9
    new-instance v0, Lcom/hpplay/sdk/source/service/LinkServiceController;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 217
    new-instance v1, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;-><init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 254
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a()V

    .line 264
    :cond_a
    return-void
.end method

.method public setInteractiveAdListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->D:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    .line 117
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 118
    return-void
.end method

.method public varargs setLelinkServiceInfoOption(I[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    .line 444
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 464
    :goto_0
    return v0

    .line 446
    :sswitch_0
    aget-object v0, p2, v1

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 447
    if-eqz v0, :cond_0

    .line 448
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)Z

    move-result v0

    goto :goto_0

    .line 452
    :sswitch_1
    aget-object v0, p2, v1

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 453
    if-eqz v0, :cond_0

    .line 454
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)Z

    move-result v0

    goto :goto_0

    .line 458
    :sswitch_2
    aget-object v0, p2, v1

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 459
    if-eqz v0, :cond_0

    .line 460
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)Z

    move-result v0

    goto :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x100035 -> :sswitch_0
        0x100037 -> :sswitch_1
        0x100063 -> :sswitch_2
    .end sparse-switch
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 328
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/player/a;->setOption(I[Ljava/lang/Object;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 286
    :sswitch_0
    array-length v1, p2

    if-lez v1, :cond_0

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 287
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "is_system_app"

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    goto :goto_0

    .line 294
    :sswitch_1
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v1

    move-object v4, v0

    .line 299
    :goto_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->G:Landroid/content/Context;

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->logReportUrl:Ljava/lang/String;

    new-instance v6, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$3;

    invoke-direct {v6, p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$3;-><init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)V

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 309
    :try_start_2
    const-string v1, "uid"

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    iget-object v2, v2, Lcom/hpplay/sdk/source/player/a;->m:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "manifestVer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v1, "euqid"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v1, "et"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const/16 v1, 0x15

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->sendRelevantInfo(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v1, "LelinkCastPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    move-object v4, v2

    .line 297
    :goto_2
    const-string v1, "LelinkCastPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_1

    .line 319
    :sswitch_2
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_0

    aget-object v1, p2, v3

    if-eqz v1, :cond_0

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v1, :cond_0

    .line 321
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/List;

    .line 322
    aget-object v1, p2, v3

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Ljava/util/List;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto/16 :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 333
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 334
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/player/a;->setOption(I[Ljava/lang/Object;)V

    .line 333
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 296
    :catch_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x100029 -> :sswitch_0
        0x100053 -> :sswitch_1
        0x100054 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 475
    return-void
.end method

.method public setRelevantInfoListener(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->E:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 837
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a;->setVolume(I)V

    .line 763
    :cond_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 758
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 759
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a;->setVolume(I)V

    .line 758
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public start()V
    .locals 11

    .prologue
    const v8, 0x3383c

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 479
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "key_cur_report_uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->d()V

    .line 481
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LelinkPlayerInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    const-string v2, "LelinkCastPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LelinkPlayerImpl start "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 485
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 487
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 488
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hpplay/sdk/source/service/b;

    .line 490
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v1}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_2

    .line 494
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/player/a;->b(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 497
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 498
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/player/a;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 500
    :try_start_0
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/player/a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_2
    :goto_1
    return-void

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 506
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, v2, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    iget-object v2, v2, Lcom/hpplay/sdk/source/player/a;->p:Ljava/lang/String;

    .line 507
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x3383c

    .line 508
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 506
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x33838

    invoke-interface {v0, v1, v8}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    .line 511
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v4

    .line 526
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_10

    .line 527
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_9

    .line 529
    if-eqz v4, :cond_7

    .line 530
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 531
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 532
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 530
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 536
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 538
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 544
    :goto_4
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 547
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/a;Lcom/hpplay/sdk/source/service/b;)V

    .line 550
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->A:Lcom/hpplay/sdk/source/service/b;

    .line 551
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    iget-object v3, v3, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    .line 550
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 556
    :goto_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->D:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    if-eqz v0, :cond_2

    .line 557
    const-string v0, "LelinkCastPlayer"

    const-string v1, "start report Interactive Ad"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushStartForInteractiveAd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 539
    :catch_2
    move-exception v0

    .line 540
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 552
    :catch_3
    move-exception v0

    .line 553
    const-string v1, "LelinkCastPlayer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 565
    iput-object v10, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    .line 566
    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 571
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    move v2, v1

    :goto_6
    if-ge v3, v5, :cond_d

    .line 572
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 573
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v6

    .line 574
    if-eqz v6, :cond_11

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 575
    iget-boolean v7, v0, Lcom/hpplay/sdk/source/service/b;->c:Z

    if-eqz v7, :cond_a

    move v0, v2

    .line 571
    :goto_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_6

    .line 579
    :cond_a
    :try_start_4
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/player/a;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 585
    :goto_8
    :try_start_5
    invoke-direct {p0, v6}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/a;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 586
    invoke-direct {p0, v6, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/a;Lcom/hpplay/sdk/source/service/b;)V

    .line 588
    :cond_b
    iget-object v7, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->z:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v8

    .line 589
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v0

    iget-object v9, v6, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    .line 588
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 593
    :goto_9
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->D:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    if-eqz v0, :cond_c

    .line 594
    const-string v0, "LelinkCastPlayer"

    const-string v7, "start report Interactive 2"

    invoke-static {v0, v7}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v7, v6, Lcom/hpplay/sdk/source/player/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushStartForInteractiveAd(Ljava/lang/String;)V

    .line 597
    :cond_c
    invoke-virtual {v6, v10}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 598
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_11

    .line 599
    const/4 v0, 0x1

    .line 600
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v6, v2}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    goto :goto_7

    .line 580
    :catch_4
    move-exception v7

    .line 581
    const-string v8, "LelinkCastPlayer"

    invoke-static {v8, v7}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 590
    :catch_5
    move-exception v0

    .line 591
    const-string v7, "LelinkCastPlayer"

    invoke-static {v7, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 604
    :cond_d
    if-nez v2, :cond_2

    move v2, v1

    .line 605
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 606
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 607
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 608
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->C:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    goto/16 :goto_1

    .line 605
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 614
    :cond_f
    const-string v0, "LelinkCastPlayer"

    const-string v1, "start device list is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_10
    const-string v0, "LelinkCastPlayer"

    const-string v1, "start mDataSource is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_7
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->stop()V

    .line 805
    :cond_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 800
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 801
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->stop()V

    .line 800
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public subVolume()V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->y:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->subVolume()V

    .line 791
    :cond_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->x:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    .line 786
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 787
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->subVolume()V

    .line 786
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
