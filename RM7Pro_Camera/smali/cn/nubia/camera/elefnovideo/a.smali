.class public Lcn/nubia/camera/elefnovideo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/elefnovideo/a$a;,
        Lcn/nubia/camera/elefnovideo/a$c;,
        Lcn/nubia/camera/elefnovideo/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/elefnovideo/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/nubia/camera/v/b;

.field private d:Lcn/nubia/camera/elefnovideo/a$c;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Lcn/nubia/camera/elefnovideo/h;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Lcn/nubia/camera/v/b$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Lcn/nubia/camera/elefnovideo/a;->a:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/a;->h:Z

    .line 35
    iput v0, p0, Lcn/nubia/camera/elefnovideo/a;->i:I

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcn/nubia/camera/elefnovideo/a;->j:Z

    .line 37
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/a;->k:Z

    .line 39
    iput v0, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    .line 90
    new-instance v0, Lcn/nubia/camera/elefnovideo/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/a$1;-><init>(Lcn/nubia/camera/elefnovideo/a;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->m:Lcn/nubia/camera/v/b$c;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/a;Lcn/nubia/camera/elefnovideo/a$c;)Lcn/nubia/camera/elefnovideo/a$c;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/a;->d:Lcn/nubia/camera/elefnovideo/a$c;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/a;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/camera/elefnovideo/a;->h:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/a;->c:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/elefnovideo/a$c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/a;->d:Lcn/nubia/camera/elefnovideo/a$c;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/elefnovideo/a;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/a;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/elefnovideo/a;)I
    .locals 2

    .line 24
    iget v0, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    return v0
.end method

.method static synthetic f(Lcn/nubia/camera/elefnovideo/a;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/camera/elefnovideo/a;->j:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/elefnovideo/a;)I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/a;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/elefnovideo/a;)I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/camera/elefnovideo/a;->a:I

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/elefnovideo/a;)I
    .locals 2

    .line 24
    iget v0, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/camera/elefnovideo/a;->l:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/a;->h:Z

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->c:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/h;->a()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 1

    .line 77
    iput p1, p0, Lcn/nubia/camera/elefnovideo/a;->a:I

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/h;->a(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/camera/ad/a;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 44
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/elefnovideo/a;->h:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->d:Lcn/nubia/camera/elefnovideo/a$c;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Match Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->e:Landroid/os/HandlerThread;

    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->f:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcn/nubia/camera/v/b;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/camera/v/b$a;->a:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->c:Lcn/nubia/camera/v/b;

    .line 54
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a;->c:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->c:Lcn/nubia/camera/v/b;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a;->m:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 57
    new-instance v0, Lcn/nubia/camera/elefnovideo/h;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/elefnovideo/a;->a:I

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/elefnovideo/h;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;

    .line 58
    iget-boolean v1, p0, Lcn/nubia/camera/elefnovideo/a;->k:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/h;->a(Z)V

    .line 59
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/camera/elefnovideo/a;->j:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 84
    iput-boolean p1, p0, Lcn/nubia/camera/elefnovideo/a;->k:Z

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a;->g:Lcn/nubia/camera/elefnovideo/h;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/h;->a(Z)V

    :cond_0
    return-void
.end method
