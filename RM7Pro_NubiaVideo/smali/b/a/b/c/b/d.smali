.class public Lb/a/b/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lb/a/b/c/b/o;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/database/ContentObserver;

.field private e:Lcn/nubia/video/list/app/a;


# direct methods
.method public constructor <init>(Lb/a/b/c/b/o;Landroid/net/Uri;Lcn/nubia/video/list/app/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lb/a/b/c/b/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lb/a/b/c/b/d;->a:Lb/a/b/c/b/o;

    .line 4
    iput-object p3, p0, Lb/a/b/c/b/d;->e:Lcn/nubia/video/list/app/a;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p3}, Lcn/nubia/video/list/app/a;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lb/a/b/c/b/d;->c:Landroid/os/Handler;

    .line 6
    new-instance p2, Lb/a/b/c/b/d$a;

    invoke-direct {p2, p0, p1}, Lb/a/b/c/b/d$a;-><init>(Lb/a/b/c/b/d;Landroid/os/Handler;)V

    iput-object p2, p0, Lb/a/b/c/b/d;->d:Landroid/database/ContentObserver;

    .line 7
    invoke-interface {p3}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object p3, p0, Lb/a/b/c/b/d;->d:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected b(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/b/c/b/d;->a:Lb/a/b/c/b/o;

    invoke-virtual {p1}, Lb/a/b/c/b/o;->m()V

    :cond_0
    return-void
.end method
