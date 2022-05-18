.class public Lcom/android/common/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:[F

.field private c:Lcom/android/common/b/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/d/c;->a:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 19
    iput-object v0, p0, Lcom/android/common/d/c;->b:[F

    return-void
.end method

.method private a()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/common/d/c;->c:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/common/d/c;->c:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 11

    .line 29
    iget-object v0, p0, Lcom/android/common/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 33
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p2, v3, v3, v2}, Lcom/android/common/b/g;->a(FFF)V

    .line 35
    invoke-virtual {p1}, Lcom/android/common/c/f;->d()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3, v3}, Lcom/android/common/b/g;->b(FFF)V

    .line 36
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/d/c;->b:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 38
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v2

    :goto_0
    move-object v4, v2

    iget-object v5, p0, Lcom/android/common/d/c;->b:[F

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/common/c/f;->w()Z

    move-result v10

    move-object v3, p2

    .line 37
    invoke-virtual/range {v3 .. v10}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIIIZ)V

    .line 40
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    const/4 p1, 0x1

    .line 42
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/common/d/c;->a()V

    return-void
.end method
