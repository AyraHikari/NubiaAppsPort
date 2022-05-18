.class public Lcom/hpplay/sdk/source/process/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/process/e$a;,
        Lcom/hpplay/sdk/source/process/e$b;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/hpplay/sdk/source/process/e; = null

.field private static final c:Ljava/lang/String; = "PushFailedRetryManager"


# instance fields
.field b:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private d:Lcom/hpplay/sdk/source/browse/b/b;

.field private e:I

.field private f:Lcom/hpplay/sdk/source/process/e$b;

.field private g:Lcom/hpplay/sdk/source/process/e$a;

.field private h:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/process/e;->e:I

    .line 67
    new-instance v0, Lcom/hpplay/sdk/source/process/e$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/e$1;-><init>(Lcom/hpplay/sdk/source/process/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/e;->b:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/e;Lcom/hpplay/sdk/source/process/e$a;)Lcom/hpplay/sdk/source/process/e$a;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/e;->g:Lcom/hpplay/sdk/source/process/e$a;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$b;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e;->f:Lcom/hpplay/sdk/source/process/e$b;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/e;Lcom/hpplay/sdk/source/process/e$b;)Lcom/hpplay/sdk/source/process/e$b;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/e;->f:Lcom/hpplay/sdk/source/process/e$b;

    return-object p1
.end method

.method public static a()Lcom/hpplay/sdk/source/process/e;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/hpplay/sdk/source/process/e;->a:Lcom/hpplay/sdk/source/process/e;

    if-nez v0, :cond_0

    .line 37
    const-class v1, Lcom/hpplay/sdk/source/process/e;

    monitor-enter v1

    .line 38
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/process/e;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/process/e;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/process/e;->a:Lcom/hpplay/sdk/source/process/e;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/process/e;->a:Lcom/hpplay/sdk/source/process/e;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/process/e;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/hpplay/sdk/source/process/e;->e:I

    return v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e;->d:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e;->g:Lcom/hpplay/sdk/source/process/e$a;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e;->h:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/process/e$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/e;->d:Lcom/hpplay/sdk/source/browse/b/b;

    .line 46
    iput-object p3, p0, Lcom/hpplay/sdk/source/process/e;->f:Lcom/hpplay/sdk/source/process/e$b;

    .line 47
    iput p1, p0, Lcom/hpplay/sdk/source/process/e;->e:I

    .line 48
    const-string v0, "PushFailedRetryManager"

    const-string v1, "playFailedRetry ... "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e;->b:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->b(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 50
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/hpplay/sdk/source/process/c;->a(ZZ)V

    .line 51
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/process/e$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    const-string v0, "PushFailedRetryManager"

    const-string v1, "connectFailedRetry ... "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/e;->h:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 56
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/e;->g:Lcom/hpplay/sdk/source/process/e$a;

    .line 57
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e;->b:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->b(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 58
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/hpplay/sdk/source/process/c;->a(ZZ)V

    .line 59
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/hpplay/sdk/source/process/e;->f:Lcom/hpplay/sdk/source/process/e$b;

    .line 63
    iput-object v0, p0, Lcom/hpplay/sdk/source/process/e;->g:Lcom/hpplay/sdk/source/process/e$a;

    .line 64
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->c()V

    .line 65
    return-void
.end method
