.class public Lcn/nubia/camera/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;
.implements Lcom/android/common/ui/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/s/a$c;,
        Lcn/nubia/camera/s/a$a;,
        Lcn/nubia/camera/s/a$d;,
        Lcn/nubia/camera/s/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcn/nubia/camera/v/b;

.field private c:Lcn/nubia/camera/s/c;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Landroid/hardware/camera2/CameraCharacteristics;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcn/nubia/camera/s/a$a;

.field private j:Lcn/nubia/camera/s/a$c;

.field private k:Lcn/nubia/camera/s/a$b;

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/camera/s/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcn/nubia/camera/s/c;

    invoke-direct {v0}, Lcn/nubia/camera/s/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/s/a;->c:Lcn/nubia/camera/s/c;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/s/a;->e:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcn/nubia/camera/s/a;->f:Z

    .line 54
    iput-boolean v0, p0, Lcn/nubia/camera/s/a;->g:Z

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/s/a;->h:Z

    .line 57
    new-instance v1, Lcn/nubia/camera/s/a$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/s/a$c;-><init>(Lcn/nubia/camera/s/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/camera/s/a;->j:Lcn/nubia/camera/s/a$c;

    .line 58
    sget-object v1, Lcn/nubia/camera/s/a$b;->a:Lcn/nubia/camera/s/a$b;

    iput-object v1, p0, Lcn/nubia/camera/s/a;->k:Lcn/nubia/camera/s/a$b;

    .line 60
    iput v0, p0, Lcn/nubia/camera/s/a;->l:I

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcn/nubia/camera/s/a;->m:J

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/s/a;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/s/a;->k:Lcn/nubia/camera/s/a$b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/s/a;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcn/nubia/camera/s/a;->g:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lcn/nubia/camera/s/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/util/Size;
    .locals 3

    .line 572
    iget-object v0, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    .line 573
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->d()I

    move-result v2

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method static synthetic c(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->b:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->k:Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/a$c;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->j:Lcn/nubia/camera/s/a$c;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/s/a;)Landroid/util/Size;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/s/a;->c()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/s/a;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->e:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/s/a;)Lcn/nubia/camera/s/c;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/s/a;->c:Lcn/nubia/camera/s/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcn/nubia/camera/s/a;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcn/nubia/camera/s/a;->g:Z

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/s/a;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IZ)V
    .locals 0

    .line 128
    iput p1, p0, Lcn/nubia/camera/s/a;->l:I

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;)V
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcn/nubia/camera/s/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcn/nubia/camera/s/a;->g:Z

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    .line 100
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/s/a;->e:Landroid/hardware/camera2/CameraCharacteristics;

    .line 101
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/s/a;->f:Z

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start isBackCamera:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/s/a;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenderEffectControl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p1, Lcn/nubia/camera/v/b;

    invoke-direct {p0}, Lcn/nubia/camera/s/a;->c()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/camera/s/a;->c()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object p1, p0, Lcn/nubia/camera/s/a;->b:Lcn/nubia/camera/v/b;

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/s/a;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/s/a;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 111
    new-instance p1, Lcn/nubia/camera/s/a$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/s/a$a;-><init>(Lcn/nubia/camera/s/a;)V

    iput-object p1, p0, Lcn/nubia/camera/s/a;->i:Lcn/nubia/camera/s/a$a;

    .line 112
    invoke-virtual {p1}, Lcn/nubia/camera/s/a$a;->start()V

    return-void
.end method

.method public a(Lcn/nubia/camera/s/a$d;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/s/a;->c:Lcn/nubia/camera/s/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/s/c;->a(Lcn/nubia/camera/s/a$d;)V

    return-void
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    array-length p3, p1

    if-lez p3, :cond_0

    .line 135
    iget-object p3, p0, Lcn/nubia/camera/s/a;->i:Lcn/nubia/camera/s/a$a;

    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3, p1, p2}, Lcn/nubia/camera/s/a$a;->a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
