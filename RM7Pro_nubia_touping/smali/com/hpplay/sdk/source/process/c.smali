.class public Lcom/hpplay/sdk/source/process/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "LelinkSdkManager"

.field private static l:Lcom/hpplay/sdk/source/process/c;


# instance fields
.field private A:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field public d:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

.field public e:Landroid/app/Activity;

.field f:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field g:Lcom/hpplay/sdk/source/api/IConnectListener;

.field h:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field public i:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field j:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field private m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

.field private n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

.field private o:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private p:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private q:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private r:Landroid/content/Context;

.field private s:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lcom/hpplay/sdk/source/i;

.field private u:Lcom/hpplay/sdk/source/l;

.field private v:I

.field private w:I

.field private x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field private y:Lcom/hpplay/sdk/source/j;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/process/c;->z:Z

    .line 149
    new-instance v0, Lcom/hpplay/sdk/source/process/c$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/c$2;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->f:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    .line 427
    new-instance v0, Lcom/hpplay/sdk/source/process/c$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/c$3;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->g:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 450
    new-instance v0, Lcom/hpplay/sdk/source/process/c$4;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/c$4;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->h:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 463
    new-instance v0, Lcom/hpplay/sdk/source/process/c$5;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/c$5;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->i:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 701
    new-instance v0, Lcom/hpplay/sdk/source/process/c$8;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/c$8;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->j:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/c;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/hpplay/sdk/source/process/c;->v:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/j;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->y:Lcom/hpplay/sdk/source/j;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/c;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/process/c;->z:Z

    return p1
.end method

.method public static b()Lcom/hpplay/sdk/source/process/c;
    .locals 2

    .prologue
    .line 88
    const-class v1, Lcom/hpplay/sdk/source/process/c;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/process/c;->l:Lcom/hpplay/sdk/source/process/c;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/hpplay/sdk/source/process/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/process/c;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/process/c;->l:Lcom/hpplay/sdk/source/process/c;

    .line 92
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/process/c;->l:Lcom/hpplay/sdk/source/process/c;

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/process/c;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/c;->z:Z

    return v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->u:Lcom/hpplay/sdk/source/l;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->i:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->g:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 185
    return-void
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/AuthListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/IConnectListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->q:Lcom/hpplay/sdk/source/api/IConnectListener;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->p:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/process/c;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/hpplay/sdk/source/process/c;->w:I

    return v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/process/c;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/hpplay/sdk/source/process/c;->v:I

    return v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->o:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    return-object v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/i;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->t:Lcom/hpplay/sdk/source/i;

    return-object v0
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/process/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->A:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "LelinkSdkManager"

    const-string v1, "uploadLogQuery"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    new-instance v1, Lcom/hpplay/sdk/source/process/c$7;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/process/c$7;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V

    .line 665
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 85
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setVolume(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->e:Landroid/app/Activity;

    .line 274
    const-string v0, "LelinkSdkManager"

    const-string v1, " startMirror "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 276
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setType(I)V

    .line 277
    invoke-virtual {p3, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setIntent(Landroid/content/Intent;)V

    .line 278
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p3}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 279
    invoke-virtual {p3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/process/c;->w:I

    .line 280
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->start()V

    .line 282
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    const-string v1, "permission_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 3

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    const v0, 0x100038

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    :goto_1
    const-string v0, "mirror_info"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    const-string v0, "permission_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :cond_1
    const v0, 0x10008000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    .line 113
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appSecret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oaid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;

    invoke-direct {v0, p2, p3, p6}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->setAppVersion(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->build()Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    move-result-object v0

    .line 116
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0, p4}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->setUserId(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    .line 120
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    const v2, 0x10004

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/c;->f:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setLelinkSetting(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    const v1, 0x10005

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->h:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOnBrowseListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/process/c;->c(Landroid/content/Context;)V

    .line 126
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/process/c;->z:Z

    .line 127
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->q:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 208
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->o:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 196
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setRelevantInfoListener(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 699
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setInteractiveAdListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 693
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/permission/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 393
    const-string v0, "LelinkSdkManager"

    const-string v1, " not permission "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->d:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 395
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->b(Landroid/content/Context;)V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/process/c;->w:I

    .line 399
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 400
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->start()V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    .line 683
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    .line 687
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->p:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 200
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 237
    const-string v0, "LelinkSdkManager"

    const-string v1, "sdk manager  connect "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 241
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->d:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->d:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 382
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/process/c;->w:I

    .line 383
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 384
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->start()V

    .line 386
    :cond_1
    return-void

    .line 375
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;-><init>()V

    .line 376
    invoke-virtual {v0, p3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setType(I)V

    .line 377
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLocalPath(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->d:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 342
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 343
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 344
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/permission/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 346
    const-string v0, "LelinkSdkManager"

    const-string v1, " not permission "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/c;->a:Ljava/lang/String;

    .line 348
    iput p3, p0, Lcom/hpplay/sdk/source/process/c;->b:I

    .line 349
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->r:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->b(Landroid/content/Context;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;-><init>()V

    .line 353
    invoke-virtual {v0, p3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setType(I)V

    .line 354
    if-nez p4, :cond_3

    .line 355
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setUrl(Ljava/lang/String;)V

    .line 359
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 362
    :cond_2
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/process/c;->w:I

    .line 363
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 364
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->start()V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLocalPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/hpplay/sdk/source/j;)V
    .locals 5

    .prologue
    .line 131
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c;->y:Lcom/hpplay/sdk/source/j;

    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    const v1, 0x100027

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/hpplay/sdk/source/process/c$1;

    invoke-direct {v4, p0}, Lcom/hpplay/sdk/source/process/c$1;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/common/store/Session;->setDebugVideoFile(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 585
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/c;->A:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 586
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->j:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-interface {v0, p1, v1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->addQRServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 587
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lcom/hpplay/common/utils/LeLog;->enableAllTrace()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hpplay/common/utils/LeLog;->enableTrace(Z)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    const-string v1, "LelinkSdkManager"

    const-string v2, "sdk manager start browse "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 223
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    if-eqz v1, :cond_1

    .line 224
    const-string v1, "LelinkSdkManager"

    const-string v2, "sdk manager start useLelink "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->browse(I)V

    .line 227
    :cond_1
    return-void

    .line 216
    :cond_2
    if-eqz p1, :cond_3

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_3
    if-eqz p2, :cond_0

    .line 219
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public varargs a(I[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setLelinkServiceInfoOption(I[Ljava/lang/Object;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->seekTo(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public varargs b(I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 595
    sparse-switch p1, :sswitch_data_0

    .line 630
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->setOption(I[Ljava/lang/Object;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 597
    :sswitch_0
    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/hpplay/sdk/source/i;

    if-eqz v0, :cond_0

    .line 598
    aget-object v0, p2, v3

    check-cast v0, Lcom/hpplay/sdk/source/i;

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->t:Lcom/hpplay/sdk/source/i;

    .line 599
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/hpplay/sdk/source/process/c$6;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/process/c$6;-><init>(Lcom/hpplay/sdk/source/process/c;)V

    aput-object v2, v1, v3

    aget-object v2, p2, v4

    aput-object v2, v1, v4

    invoke-interface {v0, p1, v1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    :sswitch_1
    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/hpplay/sdk/source/l;

    if-eqz v0, :cond_1

    .line 613
    aget-object v0, p2, v3

    check-cast v0, Lcom/hpplay/sdk/source/l;

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->u:Lcom/hpplay/sdk/source/l;

    .line 615
    :cond_1
    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    if-eqz v0, :cond_0

    .line 616
    aget-object v0, p2, v3

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/c;->x:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    goto :goto_0

    .line 620
    :sswitch_2
    aget-object v0, p2, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 621
    if-eqz v0, :cond_2

    .line 622
    invoke-static {}, Lcom/hpplay/sdk/source/d/h;->a()V

    .line 624
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/c;->l()V

    goto :goto_0

    .line 626
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/d/h;->b()V

    goto :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x100049 -> :sswitch_2
    .end sparse-switch
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const-string v1, "permission_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public b(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 590
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/c;->A:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 591
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c;->j:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-interface {v0, p1, v1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->addPinCodeServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 592
    return-void
.end method

.method public b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 406
    const v0, 0x100032

    if-ne p1, v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/c;->i()I

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "LelinkSdkManager"

    const-string v1, "sdk manager   stopBrowse "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->m:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->stopBrowse()V

    .line 234
    :cond_0
    return-void
.end method

.method public c(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->addVolume()V

    .line 254
    :cond_0
    return-void
.end method

.method public d(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->canPlayLocalVideo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->subVolume()V

    .line 260
    :cond_0
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
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
    .line 269
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->getConnectLelinkServiceInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->resume()V

    .line 325
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->pause()V

    .line 331
    :cond_0
    return-void
.end method

.method public i()I
    .locals 3

    .prologue
    .line 413
    const-string v0, "LelinkSdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayState  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/process/c;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget v0, p0, Lcom/hpplay/sdk/source/process/c;->v:I

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->stop()V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/c;->a()V

    .line 422
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c;->n:Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkPlayerImpl;->release()V

    .line 713
    :cond_0
    return-void
.end method
