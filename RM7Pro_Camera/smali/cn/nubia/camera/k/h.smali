.class public Lcn/nubia/camera/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/h$b;,
        Lcn/nubia/camera/k/h$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/Semaphore;

.field private static f:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcn/nubia/camera/ad/a;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/nubia/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/nubia/camera/k/g;

.field private e:Lcn/nubia/camera/d;

.field private k:Ljava/lang/Object;

.field private l:Lcn/nubia/camera/k/r;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcn/nubia/camera/k/h$b;

.field private s:Lcn/nubia/camera/k/g;

.field private t:Landroid/os/Handler;

.field private u:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcn/nubia/camera/k/h;->d:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/d;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->m:Z

    .line 62
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->n:Z

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    .line 64
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->p:Z

    .line 65
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->q:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/k/h;->s:Lcn/nubia/camera/k/g;

    .line 421
    new-instance v0, Lcn/nubia/camera/k/h$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/h$2;-><init>(Lcn/nubia/camera/k/h;)V

    iput-object v0, p0, Lcn/nubia/camera/k/h;->t:Landroid/os/Handler;

    .line 442
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    .line 72
    iput-object p2, p0, Lcn/nubia/camera/k/h;->e:Lcn/nubia/camera/d;

    return-void
.end method

.method static synthetic A()Lcom/a/a/a/d;
    .locals 1

    .line 39
    sget-object v0, Lcn/nubia/camera/k/h;->h:Lcom/a/a/a/d;

    return-object v0
.end method

.method private B()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/k/h;->t:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    return-void
.end method

.method private C()V
    .locals 1

    .line 382
    sget-object v0, Lcn/nubia/camera/k/h;->f:Lcom/a/a/a/d;

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcn/nubia/camera/k/n;->a:Lcom/a/a/a/d;

    sput-object v0, Lcn/nubia/camera/k/h;->f:Lcom/a/a/a/d;

    .line 385
    :cond_0
    sget-object v0, Lcn/nubia/camera/k/h;->i:Lcom/a/a/a/d;

    if-nez v0, :cond_1

    .line 386
    sget-object v0, Lcn/nubia/camera/k/n;->e:Lcom/a/a/a/d;

    sput-object v0, Lcn/nubia/camera/k/h;->i:Lcom/a/a/a/d;

    .line 388
    :cond_1
    sget-object v0, Lcn/nubia/camera/k/h;->j:Lcom/a/a/a/d;

    if-nez v0, :cond_2

    .line 389
    sget-object v0, Lcn/nubia/camera/k/n;->f:Lcom/a/a/a/d;

    sput-object v0, Lcn/nubia/camera/k/h;->j:Lcom/a/a/a/d;

    .line 391
    :cond_2
    sget-object v0, Lcn/nubia/camera/k/h;->g:Lcom/a/a/a/d;

    if-nez v0, :cond_3

    .line 392
    sget-object v0, Lcn/nubia/camera/k/n;->b:Lcom/a/a/a/d;

    sput-object v0, Lcn/nubia/camera/k/h;->g:Lcom/a/a/a/d;

    .line 394
    :cond_3
    sget-object v0, Lcn/nubia/camera/k/h;->h:Lcom/a/a/a/d;

    if-nez v0, :cond_4

    .line 395
    sget-object v0, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    sput-object v0, Lcn/nubia/camera/k/h;->h:Lcom/a/a/a/d;

    :cond_4
    return-void
.end method

.method private D()V
    .locals 1

    .line 400
    invoke-static {}, Lcn/nubia/camera/k/f;->a()Lcn/nubia/camera/k/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/f;->d(Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method private E()V
    .locals 1

    .line 404
    invoke-static {}, Lcn/nubia/camera/k/f;->a()Lcn/nubia/camera/k/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/f;->c(Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method private F()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/k/h;->s:Lcn/nubia/camera/k/g;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p0}, Lcn/nubia/camera/k/g;->b(Lcn/nubia/camera/k/h;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/h;->c:Lcn/nubia/camera/k/g;

    if-eqz v0, :cond_1

    .line 411
    invoke-interface {v0, p0}, Lcn/nubia/camera/k/g;->b(Lcn/nubia/camera/k/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private G()V
    .locals 2

    .line 677
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraOpener"

    const-string v1, "exitCameraWhenEvicted"

    .line 678
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/k/h$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/k/h$3;-><init>(Lcn/nubia/camera/k/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private H()Z
    .locals 3

    .line 689
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pip_pkg"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraOpener"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "null"

    .line 691
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Lcn/nubia/camera/d$a;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/k/h$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/k/h$1;-><init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/d$a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/h;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/camera/k/h;->m:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/k/h;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/k/h;->o:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/k/h;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/camera/k/h;->q:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/k/h;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/k/h;->p:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/d;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->e:Lcn/nubia/camera/d;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/k/h;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/camera/k/h;->o:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/k/h;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/k/h;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/camera/k/h;->p:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/k/h;)Landroid/os/ConditionVariable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->D()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->F()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/k/h;)Landroid/util/SparseArray;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->G()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/k/g;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/k/h;->c:Lcn/nubia/camera/k/g;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/nubia/b/d;
    .locals 1

    .line 312
    iget-object v0, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/b/d;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 133
    sget-object v0, Lcn/nubia/camera/k/h;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v0, "CameraOpener"

    const-string v1, "Close CameraOpenCloseLock"

    .line 134
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 110
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/h;->d:Ljava/util/concurrent/Semaphore;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraOpener"

    const-string v0, "Accquire CameraOpenCloseLock with timeout"

    .line 113
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Time out waiting to acquire camera-open lock."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;Lcn/nubia/camera/k/g;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;Lcn/nubia/camera/k/g;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOpener"

    if-eqz v0, :cond_2

    .line 85
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iput-object p3, p0, Lcn/nubia/camera/k/h;->s:Lcn/nubia/camera/k/g;

    const-string v0, "openCamera"

    .line 93
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    if-eqz v0, :cond_1

    const-string v0, "Last open has not done, cancel first"

    .line 95
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->a()V

    .line 98
    :cond_1
    new-instance v0, Lcn/nubia/camera/k/h$b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->a()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/camera/k/h$b;-><init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/k/h$a;[Ljava/lang/String;Lcn/nubia/camera/k/g;)V

    iput-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    .line 99
    sget-object p1, Lcn/nubia/camera/k/h;->g:Lcom/a/a/a/d;

    invoke-interface {p1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "getNumberOfCameras is empty"

    .line 87
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object p1, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/d$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/g;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/k/h;->c:Lcn/nubia/camera/k/g;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/r;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 337
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->c()V

    .line 339
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 2

    .line 369
    iget-object p1, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz p1, :cond_0

    .line 370
    invoke-interface {p1}, Lcn/nubia/camera/k/r;->i()J

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()V
    .locals 3

    const-string v0, "CameraOpener"

    :try_start_0
    const-string v1, "Acquire CameraOpenCloseLock "

    .line 139
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v1, Lcn/nubia/camera/k/h;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "Acquire CameraOpenCloseLock X"

    .line 141
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 1

    .line 149
    sget-object v0, Lcn/nubia/camera/d$a;->b:Lcn/nubia/camera/d$a;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/d$a;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method e()V
    .locals 6

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    const-string v0, "CameraOpener"

    const-string v1, "closeCameraImpl E"

    .line 158
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->b()V

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraOpener"

    const-string v1, "closeCameraImpl X"

    .line 162
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->a()V

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->f()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 172
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 173
    iget-object v2, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/d;

    .line 174
    invoke-virtual {v2}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/b/e;->d(Ljava/lang/String;)V

    const-string v3, "CameraOpener"

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->y()V

    const-string v1, "CameraOpener"

    const-string v2, "closeCameraImpl X"

    .line 181
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->a()V

    .line 183
    iget-object v1, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 185
    iget-object v1, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    .line 187
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->y()V

    const-string v1, "CameraOpener"

    const-string v2, "closeCameraImpl X"

    .line 181
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->a()V

    .line 183
    iget-object v1, p0, Lcn/nubia/camera/k/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 184
    throw v0
.end method

.method public f()V
    .locals 3

    .line 197
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "CameraOpener"

    if-eq v0, v1, :cond_0

    const-string v0, "Call init executor not from main thread. Error!!!"

    .line 198
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "create"

    .line 200
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->m:Z

    .line 202
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->n:Z

    .line 203
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    .line 204
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->C()V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "CameraOpener"

    const-string v1, "resume"

    .line 208
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->m:Z

    .line 210
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->q:Z

    .line 211
    iget-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->p:Z

    .line 214
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 219
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/h;->m:Z

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraOpener"

    const-string v1, "pause"

    .line 221
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 220
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    const-string v0, "CameraOpener"

    const-string v1, "stop"

    .line 225
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 227
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/h;->m:Z

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 2

    const-string v0, "CameraOpener"

    const-string v1, "destroy"

    .line 233
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/k/h;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 235
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/h;->n:Z

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->E()V

    return-void

    :catchall_0
    move-exception v1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 242
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/k/h;->t:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    invoke-static {}, Lcn/nubia/camera/k/f;->a()Lcn/nubia/camera/k/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/f;->a(Lcn/nubia/camera/k/h;)V

    .line 246
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->F()V

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "CameraOpener"

    const-string v1, "closeCameraAsync"

    .line 251
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->a()V

    .line 256
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 261
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->v()V

    .line 264
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->F()V

    .line 266
    invoke-static {}, Lcn/nubia/camera/k/f;->a()Lcn/nubia/camera/k/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/f;->b(Lcn/nubia/camera/k/h;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "CameraOpener"

    const-string v1, "closeCameraSync"

    .line 271
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->a()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 281
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    .line 283
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->E()V

    .line 284
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->v()V

    .line 285
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->F()V

    .line 287
    invoke-virtual {p0}, Lcn/nubia/camera/k/h;->e()V

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/k/h;->u:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 293
    iget-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraOpener"

    const-string v1, "postCloseCamera"

    .line 294
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/k/h;->r:Lcn/nubia/camera/k/h$b;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcn/nubia/camera/k/h$b;->a()V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h;->B()V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/k/h;->t:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public o()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcn/nubia/camera/k/h;->o:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcn/nubia/camera/k/h;->p:Z

    return v0
.end method

.method public q()Lcn/nubia/camera/k/aa;
    .locals 0

    return-object p0
.end method

.method public r()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Lcn/nubia/camera/k/h;->f:Lcom/a/a/a/d;

    return-object v0
.end method

.method public s()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 324
    sget-object v0, Lcn/nubia/camera/k/h;->i:Lcom/a/a/a/d;

    return-object v0
.end method

.method public t()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 328
    sget-object v0, Lcn/nubia/camera/k/h;->j:Lcom/a/a/a/d;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->h()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->f()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->q:Z

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcn/nubia/camera/k/h;->q:Z

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->g()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/k/h;->l:Lcn/nubia/camera/k/r;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Lcn/nubia/camera/k/r;->c()V

    :cond_0
    return-void
.end method

.method z()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/k/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
