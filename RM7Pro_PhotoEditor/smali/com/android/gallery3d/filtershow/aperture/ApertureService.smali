.class public Lcom/android/gallery3d/filtershow/aperture/ApertureService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;,
        Lcom/android/gallery3d/filtershow/aperture/ApertureService$i;
    }
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

.field private d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

.field private volatile e:Lb/a/a/a;

.field private f:Landroid/os/IBinder;

.field private g:Landroid/os/Messenger;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/net/Uri;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Z

.field private volatile n:Z

.field private final o:Landroid/content/ServiceConnection;

.field private final p:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->o:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->p:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private B(Landroid/os/Looper;)V
    .locals 1

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$g;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->g:Landroid/os/Messenger;

    return-void
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->isUseArcsoft()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object p5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j:Landroid/net/Uri;

    invoke-static {p3, p5}, Lcom/android/gallery3d/filtershow/e/b;->d(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p3

    const/4 p5, 0x2

    if-ne p2, p5, :cond_2

    new-instance p2, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;

    invoke-direct {p2, p1, p4, p3}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApertureService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private D()Z
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n()Z

    move-result v0

    return v0
.end method

.method private E(Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private I(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private J()V
    .locals 4

    const-string v0, "ApertureService"

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e:Lb/a/a/a;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e:Lb/a/a/a;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lb/a/a/a;->c(Landroid/net/Uri;)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->p:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->o:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e:Lb/a/a/a;

    const-string v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load onPostExecute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    return-object p1
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->J()V

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lb/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e:Lb/a/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lb/a/a/a;)Lb/a/a/a;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e:Lb/a/a/a;

    return-object p1
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->p:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->B(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic l(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->g:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic m(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic n(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->E(Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V

    return-void
.end method

.method static synthetic q(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->i:I

    return p0
.end method

.method static synthetic r(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m:Z

    return p0
.end method

.method static synthetic t(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->D()Z

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n:Z

    return p0
.end method

.method static synthetic v(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic w(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic x(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->I(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    return-object p0
.end method

.method static synthetic z(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    return-object p1
.end method


# virtual methods
.method public A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    return-object v0
.end method

.method public F(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m:Z

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    return-void
.end method

.method public G(FFF)V
    .locals 7

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    new-instance v6, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;FFFLcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->I(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public H(Landroid/net/Uri;I)V
    .locals 7

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->i:I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/e/b;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k:Ljava/lang/String;

    new-instance p1, Lcom/android/gallery3d/filtershow/aperture/a;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/android/gallery3d/filtershow/aperture/a;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   startLoad "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ApertureService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->E(Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "nubia.camera.bigApertureService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.camera"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->o:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind suce:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "   onbind"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApertureService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$i;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$i;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a:Landroid/os/IBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->n:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->J()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ondestory    mLoadFuture.cancle  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApertureService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->I(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b:Ljava/util/concurrent/ExecutorService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m:Z

    const-string p2, "save_x"

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    const-string p2, "save_y"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    const-string p2, "save_aper"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    new-instance p1, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;FFFLcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->I(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x3

    return p1
.end method
