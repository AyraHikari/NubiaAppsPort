.class public Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MDNSBrowseHandler"

.field protected static final b:I = 0x0

.field protected static final c:I = 0x1

.field protected static final d:I = 0x2

.field private static final f:Ljava/lang/String; = "_leboremote._tcp.local."


# instance fields
.field e:J

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Lcom/hpplay/sdk/source/browse/c/a;

.field private j:Lcom/hpplay/sdk/source/mdns/Browse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v5, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->g:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->e:J

    .line 47
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->h:Landroid/content/Context;

    .line 48
    const-string v0, "MDNSBrowseHandler"

    const-string v1, "MDNSBrowseHandler"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->contextPath:Lcom/hpplay/common/utils/ContextPath;

    const-string v3, "sdcard_hpplay"

    invoke-virtual {v2, v3}, Lcom/hpplay/common/utils/ContextPath;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "lebo_debug"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->g:Z

    .line 55
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Browse;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "MDNSBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->e:J

    .line 66
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->d()V

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "MDNSBrowseHandler"

    const-string v1, "create new mdns service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Browse;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_leboremote._tcp.local."

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/Browse;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->j:Lcom/hpplay/sdk/source/mdns/Browse;

    new-instance v1, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->i:Lcom/hpplay/sdk/source/browse/c/a;

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->g:Z

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$a;-><init>(Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;Lcom/hpplay/sdk/source/browse/c/a;ZLcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/Browse;->start(Lcom/hpplay/sdk/source/mdns/DNSSDListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_1
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    const-string v0, "MDNSBrowseHandler"

    const-string v1, "use old mdns service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    const-string v1, "MDNSBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/c/a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->i:Lcom/hpplay/sdk/source/browse/c/a;

    .line 59
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->d()V

    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->i:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->i:Lcom/hpplay/sdk/source/browse/c/a;

    .line 84
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "MDNSBrowseHandler"

    const-string v1, " releaseAsync"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->d()V

    .line 89
    return-void
.end method
