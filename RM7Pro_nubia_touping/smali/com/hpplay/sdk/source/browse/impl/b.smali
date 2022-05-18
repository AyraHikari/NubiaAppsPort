.class public Lcom/hpplay/sdk/source/browse/impl/b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/impl/b$b;,
        Lcom/hpplay/sdk/source/browse/impl/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "LelinkRelationHandler"

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

.field private g:Lcom/hpplay/sdk/source/browse/impl/b$a;

.field private h:Lcom/hpplay/sdk/source/browse/impl/b$b;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->e:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    return-object p1
.end method

.method private a(DD)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 148
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->g:Lcom/hpplay/sdk/source/browse/impl/b$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    move-result-object v0

    .line 150
    const-string v1, "LelinkRelationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportRelation netWorkType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_2G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_3G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_4G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    if-ne v0, v1, :cond_9

    .line 155
    :cond_1
    const-string v0, "LelinkRelationHandler"

    const-string v1, "reportRelation type is mobile"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 158
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 160
    const-string v0, "LelinkRelationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportRelation:size  : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 167
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 173
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 176
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :cond_4
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_8

    .line 194
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/NetworkUtil;->getWifiScanResults(Landroid/content/Context;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 199
    :goto_3
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->relation(Ljava/lang/String;Ljava/lang/String;DD[Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->h:Lcom/hpplay/sdk/source/browse/impl/b$b;

    if-eqz v0, :cond_6

    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->h:Lcom/hpplay/sdk/source/browse/impl/b$b;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/impl/b$b;->onReport()V

    .line 204
    :cond_6
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->e()V

    .line 205
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getRelationScanTime()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v9, v0, v1}, Lcom/hpplay/sdk/source/browse/impl/b;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getRelationScanTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v10, v0, v1}, Lcom/hpplay/sdk/source/browse/impl/b;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    :goto_4
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "LelinkRelationHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v3

    goto :goto_3

    .line 208
    :cond_7
    const-string v0, "LelinkRelationHandler"

    const-string v1, "IBrowseListenerImpl is null or info is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v0, v3

    goto :goto_2

    :cond_9
    move v0, v9

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    const-string v0, "LelinkRelationHandler"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/b$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/b$a;-><init>(Lcom/hpplay/sdk/source/browse/impl/b;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->g:Lcom/hpplay/sdk/source/browse/impl/b$a;

    .line 79
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d()V

    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->g:Lcom/hpplay/sdk/source/browse/impl/b$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 113
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/hpplay/sdk/source/browse/impl/b;->a(DD)V

    .line 145
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "LelinkRelationHandler"

    const-string v1, "stopBrowse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->f:Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 218
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 86
    const-string v0, "LelinkRelationHandler"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/browse/impl/b;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    const/4 v0, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/browse/impl/b;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 4

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->d:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->j:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    .line 99
    const/4 v0, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/browse/impl/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/impl/b$b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/b;->h:Lcom/hpplay/sdk/source/browse/impl/b$b;

    .line 57
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->d:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "LelinkRelationHandler"

    const-string v1, "stop relation"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->e()V

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    const-string v0, "LelinkRelationHandler"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->e()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->g:Lcom/hpplay/sdk/source/browse/impl/b$a;

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->j:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->j:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->j:Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->getLelinkServiceInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->i:Ljava/util/List;

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/b;->d:Z

    .line 71
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/b;->d()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
