.class public Lcom/hpplay/sdk/source/browse/impl/BrowserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;,
        Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = -0x9c4

.field public static final e:I = 0x5

.field private static final f:Ljava/lang/String; = "BrowserManager"

.field private static final g:I = 0x1

.field private static final h:I = 0x10

.field private static final i:I = 0x100

.field private static final j:Ljava/lang/String; = "2"

.field private static final k:Ljava/lang/String; = "1"

.field private static final l:I = 0x7530


# instance fields
.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

.field private t:I

.field private u:Z

.field private v:Lcom/hpplay/sdk/source/browse/impl/a;

.field private w:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;

.field private x:Z

.field private y:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;-><init>(Landroid/content/Context;Z)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, -0x9c4

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 78
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    .line 79
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;-><init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->y:Landroid/os/Handler;

    .line 85
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;-><init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->w:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;

    .line 87
    invoke-static {}, Lcom/hpplay/sdk/source/browse/impl/a;->a()Lcom/hpplay/sdk/source/browse/impl/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->w:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/a;->a(Lcom/hpplay/sdk/source/browse/a/a$a;)V

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 3

    .prologue
    .line 323
    const-string v0, "BrowserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aliveDispatchBrowserInfoToSession info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->a(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    const-string v0, "BrowserManager"

    const-string v1, "aliveDispatchLelinkServiceInfoToSession"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz p1, :cond_1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 307
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 310
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0

    .line 315
    :cond_1
    return-void
.end method

.method private declared-synchronized a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 288
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    return-object v0
.end method

.method private b(I)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 109
    sparse-switch p1, :sswitch_data_0

    .line 123
    const/16 v0, 0x111

    .line 126
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    new-instance v2, Lcom/hpplay/sdk/source/browse/adapter/c;

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    iget-boolean v5, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/hpplay/sdk/source/browse/adapter/c;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    const/4 v2, 0x5

    new-instance v3, Lcom/hpplay/sdk/source/browse/adapter/d;

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    iget-object v5, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    iget-boolean v6, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/hpplay/sdk/source/browse/adapter/d;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    new-instance v2, Lcom/hpplay/sdk/source/browse/adapter/a;

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    iget-boolean v5, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/hpplay/sdk/source/browse/adapter/a;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    :cond_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    .line 139
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    new-instance v1, Lcom/hpplay/sdk/source/browse/adapter/b;

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->s:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/hpplay/sdk/source/browse/adapter/b;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    :cond_2
    return-void

    .line 111
    :sswitch_0
    const/16 v0, 0x101

    .line 112
    goto :goto_0

    .line 114
    :sswitch_1
    const/16 v0, 0x110

    .line 115
    goto :goto_0

    .line 117
    :sswitch_2
    const/16 v0, 0x100

    .line 118
    goto :goto_0

    .line 120
    :sswitch_3
    const/4 v0, 0x0

    .line 121
    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9c4 -> :sswitch_3
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/impl/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V

    .line 417
    :cond_2
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
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
    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    return-object v0
.end method

.method protected declared-synchronized a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->x:Z

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "sdk_verify_successful"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->x:Z

    .line 151
    :cond_0
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->x:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v1

    iget v1, v1, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->mAuthStatusCode:I

    const/16 v2, 0x192

    if-ne v1, v2, :cond_4

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_4
    :try_start_1
    iput p1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 161
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(I)V

    .line 163
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 165
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->a()V

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/a;->a(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->w:Lcom/hpplay/sdk/source/browse/impl/BrowserManager$b;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/a;->a(Lcom/hpplay/sdk/source/browse/a/a$a;)V

    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/a;->c()V

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->y:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->y:Landroid/os/Handler;

    new-instance v1, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$1;-><init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :try_start_2
    const-string v1, "BrowserManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->r:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 261
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addQRLelinkServiceInfo QRCode can\'t empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$2;-><init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    .line 454
    return-void
.end method

.method public varargs a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/a;->b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 460
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 210
    const/16 v0, -0x9c4

    :try_start_0
    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 213
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b()V

    .line 212
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_3
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "BrowserManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 231
    const/16 v0, -0x9c4

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 232
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v3, "BrowserManager"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->n:Z

    if-nez v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/a;->d()V

    .line 257
    :cond_5
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->u:Z

    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->v:Lcom/hpplay/sdk/source/browse/impl/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/a;->b()V

    .line 268
    :cond_0
    return-void
.end method

.method protected declared-synchronized e()V
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b()V

    .line 273
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "BrowserManager"

    const-string v1, "enableWifi"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V

    .line 355
    return-void
.end method

.method protected g()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "BrowserManager"

    const-string v1, "disabledWifi"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V

    .line 363
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 365
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 366
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 367
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 372
    :cond_1
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "BrowserManager"

    const-string v1, "enableMobile"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V

    .line 380
    iget v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    const/16 v1, -0x9c4

    if-eq v0, v1, :cond_0

    .line 381
    iget v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 383
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->a(I)V

    .line 385
    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->t:I

    .line 387
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 393
    const-string v0, "BrowserManager"

    const-string v1, "disabledMobile"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->l()V

    .line 395
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 397
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 399
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 405
    :cond_1
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public declared-synchronized k()V
    .locals 9

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 715
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 717
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getTypes()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DLNA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 721
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v1

    const-string v5, "manufacturer"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    .line 723
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 730
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 731
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 733
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 734
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 736
    :cond_4
    const-string v0, "BrowserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start report relation -->  ulist "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  dlist +"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/NetworkUtil;->getWifiScanResults(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->relation(Ljava/lang/String;Ljava/lang/String;DD[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    :cond_5
    monitor-exit p0

    return-void
.end method
