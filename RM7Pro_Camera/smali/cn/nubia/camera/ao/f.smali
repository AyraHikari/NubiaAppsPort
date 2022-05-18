.class public Lcn/nubia/camera/ao/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ao/f$b;,
        Lcn/nubia/camera/ao/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/common/c/e;

.field private b:Lcn/nubia/camera/ao/f$a;

.field private c:Lcn/nubia/camera/ao/f$b;

.field private d:Lcn/nubia/camera/v/d;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/common/c/e;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcn/nubia/camera/ao/f;->e:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/ao/f;->a:Lcom/android/common/c/e;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/ao/f;)I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/camera/ao/f;->e:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/ao/f$b;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/ao/f;->c:Lcn/nubia/camera/ao/f$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->a()V

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "HistogramDetector"

    const-string v2, "stopHistogram"

    .line 67
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f$a;->c()V

    .line 71
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/f$a;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 75
    :goto_0
    iput-object v1, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 66
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/f;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 41
    iput p1, p0, Lcn/nubia/camera/ao/f;->e:I

    .line 42
    iget-object p1, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lcn/nubia/camera/v/d;

    const/high16 v1, 0x3f000000    # 0.5f

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    invoke-direct {p1, v1, v2}, Lcn/nubia/camera/v/d;-><init>(FLcn/nubia/camera/v/b$a;)V

    iput-object p1, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    .line 44
    iget-object v1, p0, Lcn/nubia/camera/ao/f;->a:Lcom/android/common/c/e;

    invoke-virtual {v1, p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 46
    iget-object p1, p0, Lcn/nubia/camera/ao/f;->d:Lcn/nubia/camera/v/d;

    new-instance v1, Lcn/nubia/camera/ao/f$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/f$1;-><init>(Lcn/nubia/camera/ao/f;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/v/d;->b(Lcn/nubia/camera/v/d$a;)V

    .line 53
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    if-nez p1, :cond_1

    .line 56
    new-instance p1, Lcn/nubia/camera/ao/f$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ao/f$a;-><init>(Lcn/nubia/camera/ao/f;)V

    iput-object p1, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    .line 57
    invoke-virtual {p1}, Lcn/nubia/camera/ao/f$a;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/ao/f$b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/ao/f;->c:Lcn/nubia/camera/ao/f$b;

    return-void
.end method

.method public b()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f$a;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/ao/f;->b:Lcn/nubia/camera/ao/f$a;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcn/nubia/camera/ao/f$a;->b()V

    :cond_0
    return-void
.end method
