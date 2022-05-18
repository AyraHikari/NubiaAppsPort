.class Lcn/nubia/camera/hitchcock/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/hitchcock/a$b;,
        Lcn/nubia/camera/hitchcock/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Thread;

.field private b:Lcn/nubia/algorithm/camera/Tracker;

.field private c:Lcn/nubia/camera/hitchcock/a$a;

.field private d:Landroid/graphics/Rect;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/hitchcock/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/Rect;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/nubia/algorithm/camera/Tracker;

    invoke-direct {v0}, Lcn/nubia/algorithm/camera/Tracker;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/a;->b:Lcn/nubia/algorithm/camera/Tracker;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/a;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/a;->g:Z

    .line 73
    new-instance v0, Lcn/nubia/camera/hitchcock/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/a$1;-><init>(Lcn/nubia/camera/hitchcock/a;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/a;->a:Ljava/lang/Thread;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcn/nubia/camera/hitchcock/a;->b(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/a;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/a;->f:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/a;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/camera/hitchcock/a;->g:Z

    return p0
.end method

.method private static b(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 8

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 144
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 145
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v4, p0

    .line 148
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    neg-int v5, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 149
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {v4, v5, v6, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    add-int/2addr p0, v2

    add-int/2addr v1, v3

    .line 150
    invoke-virtual {v4, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v4
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/a;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/a;->d:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/a;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/a;->d:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/a;->f:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/a;->b:Lcn/nubia/algorithm/camera/Tracker;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/a;->c:Lcn/nubia/camera/hitchcock/a$a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 68
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/a;->g:Z

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
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

.method public declared-synchronized a(Landroid/graphics/Rect;)V
    .locals 0

    monitor-enter p0

    .line 51
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/a;->d:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/nubia/camera/hitchcock/a$a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/a;->c:Lcn/nubia/camera/hitchcock/a$a;

    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/camera/hitchcock/a$b;)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
