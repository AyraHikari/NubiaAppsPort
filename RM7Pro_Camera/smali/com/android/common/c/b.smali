.class public Lcom/android/common/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/c/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/android/common/c/b$a;

.field private volatile f:Z

.field private g:Lcom/android/common/c/f;


# direct methods
.method constructor <init>(Lcom/android/common/c/f;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/common/c/b;->b:Z

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    .line 25
    new-instance v1, Lcom/android/common/c/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/common/c/b$a;-><init>(Lcom/android/common/c/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/common/c/b;->e:Lcom/android/common/c/b$a;

    .line 26
    iput-boolean v0, p0, Lcom/android/common/c/b;->f:Z

    .line 30
    iput-object p1, p0, Lcom/android/common/c/b;->g:Lcom/android/common/c/f;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 82
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 86
    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-gez v1, :cond_1

    .line 87
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 88
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 90
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    .line 91
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 92
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/android/common/c/b;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/common/c/b;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/c/b;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/b;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/c/b;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/c/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/android/common/c/b;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/android/common/c/b;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lcom/android/common/c/b;)Lcom/android/common/c/f;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/common/c/b;->g:Lcom/android/common/c/f;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 10

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/android/common/c/b;->b:Z

    if-eqz v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/android/common/c/b;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    iput-boolean v1, p0, Lcom/android/common/c/b;->f:Z

    .line 63
    iget-object v0, p0, Lcom/android/common/c/b;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->m()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/common/c/b;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/c/b;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 69
    iget-object v0, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 70
    iput-boolean v1, p0, Lcom/android/common/c/b;->b:Z

    .line 71
    iget-object v0, p0, Lcom/android/common/c/b;->e:Lcom/android/common/c/b$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/b$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 75
    invoke-static {}, Lcom/android/common/b/j;->a()V

    .line 76
    throw v0
.end method

.method a(Lcom/android/common/c/f$b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/common/c/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcom/android/common/c/b;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/common/c/b;->c:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/android/common/c/b;->b:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/common/c/b;->f:Z

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Lcom/android/common/c/f$b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "PreviewData"

    const-string v1, "listener is null!"

    .line 48
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/common/c/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iput-boolean v0, p0, Lcom/android/common/c/b;->f:Z

    .line 53
    iget-object v0, p0, Lcom/android/common/c/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
