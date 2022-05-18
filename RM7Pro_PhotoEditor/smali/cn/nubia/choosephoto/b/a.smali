.class public Lcn/nubia/choosephoto/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/choosephoto/b/a$f;,
        Lcn/nubia/choosephoto/b/a$g;
    }
.end annotation


# static fields
.field private static k:Lcn/nubia/choosephoto/b/a;


# instance fields
.field private a:Lc/d/a/a/b/c;

.field private b:Lc/d/a/a/b/c;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Thread;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;

.field private volatile h:Ljava/util/concurrent/Semaphore;

.field private volatile i:Ljava/util/concurrent/Semaphore;

.field private j:Lcn/nubia/choosephoto/b/b;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->h:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p1}, Lcn/nubia/choosephoto/b/a;->s(I)V

    new-instance p1, Lcn/nubia/choosephoto/b/b;

    invoke-direct {p1}, Lcn/nubia/choosephoto/b/b;-><init>()V

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a;->j:Lcn/nubia/choosephoto/b/b;

    new-instance p1, Lcn/nubia/choosephoto/b/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/choosephoto/b/a$a;-><init>(Lcn/nubia/choosephoto/b/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/choosephoto/b/a;)Lc/d/a/a/b/c;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->b:Lc/d/a/a/b/c;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/choosephoto/b/a;)Lc/d/a/a/b/c;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->a:Lc/d/a/a/b/c;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/choosephoto/b/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/choosephoto/b/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic e(Lcn/nubia/choosephoto/b/a;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lcn/nubia/choosephoto/b/a;->r()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->i:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->h:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/choosephoto/b/a;Landroid/widget/ImageView;)Lcn/nubia/choosephoto/b/a$f;
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/choosephoto/b/a;->p(Landroid/widget/ImageView;)Lcn/nubia/choosephoto/b/a$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/choosephoto/b/a;)Lcn/nubia/choosephoto/b/b;
    .locals 0

    iget-object p0, p0, Lcn/nubia/choosephoto/b/a;->j:Lcn/nubia/choosephoto/b/b;

    return-object p0
.end method

.method private declared-synchronized k(Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcn/nubia/choosephoto/b/a;->f:Landroid/os/Handler;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/choosephoto/b/a;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcn/nubia/choosephoto/b/a;->d:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/choosephoto/b/a;->f:Landroid/os/Handler;

    const/16 p2, 0x110

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private l(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    if-le v0, p2, :cond_0

    if-le p1, p3, :cond_0

    int-to-float v2, v0

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    div-int v3, v0, v2

    div-int/lit8 v4, p2, 0x2

    if-lt v3, v4, :cond_3

    div-int v3, p1, v2

    div-int/lit8 v4, p3, 0x2

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    div-int/lit8 v2, v2, 0x2

    if-gt v2, v1, :cond_1

    :goto_2
    return v1
.end method

.method private static o(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    :try_start_1
    const-string p1, "TAG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v0, p0

    :catch_1
    :cond_0
    return v0
.end method

.method private p(Landroid/widget/ImageView;)Lcn/nubia/choosephoto/b/a$f;
    .locals 7

    new-instance v0, Lcn/nubia/choosephoto/b/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/choosephoto/b/a$f;-><init>(Lcn/nubia/choosephoto/b/a;Lcn/nubia/choosephoto/b/a$a;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    if-gtz v3, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-gtz v3, :cond_2

    const-string v3, "mMaxWidth"

    invoke-static {p1, v3}, Lcn/nubia/choosephoto/b/a;->o(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-gtz v3, :cond_3

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_3
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    :goto_1
    if-gtz v4, :cond_5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    if-gtz v4, :cond_6

    const-string v2, "mMaxHeight"

    invoke-static {p1, v2}, Lcn/nubia/choosephoto/b/a;->o(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    :cond_6
    if-gtz v4, :cond_7

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_7
    iput v3, v0, Lcn/nubia/choosephoto/b/a$f;->a:I

    iput v4, v0, Lcn/nubia/choosephoto/b/a$f;->b:I

    return-object v0
.end method

.method public static q()Lcn/nubia/choosephoto/b/a;
    .locals 3

    sget-object v0, Lcn/nubia/choosephoto/b/a;->k:Lcn/nubia/choosephoto/b/a;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/choosephoto/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/choosephoto/b/a;->k:Lcn/nubia/choosephoto/b/a;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/choosephoto/b/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcn/nubia/choosephoto/b/a;-><init>(I)V

    sput-object v1, Lcn/nubia/choosephoto/b/a;->k:Lcn/nubia/choosephoto/b/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/choosephoto/b/a;->k:Lcn/nubia/choosephoto/b/a;

    return-object v0
.end method

.method private declared-synchronized r()Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/choosephoto/b/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s(I)V
    .locals 2

    new-instance v0, Lcn/nubia/choosephoto/b/a$b;

    invoke-direct {v0, p0}, Lcn/nubia/choosephoto/b/a$b;-><init>(Lcn/nubia/choosephoto/b/a;)V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcn/nubia/choosephoto/b/a$c;

    const/16 v1, 0x30

    invoke-direct {v0, p0, v1}, Lcn/nubia/choosephoto/b/a$c;-><init>(Lcn/nubia/choosephoto/b/a;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->a:Lc/d/a/a/b/c;

    new-instance v0, Lcn/nubia/choosephoto/b/a$d;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcn/nubia/choosephoto/b/a$d;-><init>(Lcn/nubia/choosephoto/b/a;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->b:Lc/d/a/a/b/c;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/a;->i:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a;->d:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a;->a:Lc/d/a/a/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/a/b/c;->clear()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/b/a;->b:Lc/d/a/a/b/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/d/a/a/b/c;->clear()V

    :cond_1
    return-void
.end method

.method public n(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/choosephoto/b/a;->l(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a;->b:Lc/d/a/a/b/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/b/a;->a:Lc/d/a/a/b/c;

    :goto_0
    invoke-interface {v0, p1}, Lc/d/a/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcn/nubia/choosephoto/b/a$e;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/choosephoto/b/a$e;-><init>(Lcn/nubia/choosephoto/b/a;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    invoke-direct {p0, p2, v0}, Lcn/nubia/choosephoto/b/a;->k(Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
