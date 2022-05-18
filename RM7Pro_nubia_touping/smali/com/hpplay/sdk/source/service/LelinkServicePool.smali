.class public Lcom/hpplay/sdk/source/service/LelinkServicePool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LelinkServicePool"

.field private static b:Lcom/hpplay/sdk/source/service/LelinkServicePool;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/service/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/hpplay/sdk/source/service/LelinkServicePool;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/hpplay/sdk/source/service/LelinkServicePool;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    .line 44
    :cond_0
    monitor-exit v1

    .line 46
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized b()Lcom/hpplay/sdk/source/service/LelinkServicePool;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/hpplay/sdk/source/service/LelinkServicePool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b:Lcom/hpplay/sdk/source/service/LelinkServicePool;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "must call after init"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 52
    :cond_0
    :try_start_1
    sget-object v0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b:Lcom/hpplay/sdk/source/service/LelinkServicePool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "must call after init"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/service/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 111
    :goto_1
    return-object v0

    .line 105
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/hpplay/sdk/source/service/b;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    :try_start_0
    const-string v0, "LelinkServicePool"

    const-string v2, "setLelinkService"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 75
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 82
    iget-object v2, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 94
    :goto_2
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 89
    iget-object v3, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "LelinkServicePool"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/hpplay/sdk/source/service/b;)Z
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    .line 159
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/service/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    const/4 v0, 0x1

    .line 165
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/service/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LelinkServicePool;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
