.class public Lcom/android/common/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:J

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    .line 17
    iput-object v0, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    .line 18
    iput-object v0, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/common/c/d;->f:Z

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/android/common/c/d;->g:J

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/d;->h:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/d;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 108
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/common/c/d;->f:Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/c/d;->g:J

    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/c/f;)Landroid/graphics/Rect;
    .locals 11

    .line 69
    iget-object v0, p0, Lcom/android/common/c/d;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/android/common/c/d;->f:Z

    if-nez v1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    monitor-exit v0

    return-object p1

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 75
    iget-wide v3, p0, Lcom/android/common/c/d;->g:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    sub-long v7, v1, v3

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-ltz v5, :cond_1

    sub-long v7, v1, v3

    const-wide/16 v9, 0x12c

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1

    .line 78
    iget-object v5, p0, Lcom/android/common/c/d;->e:Landroid/view/animation/Interpolator;

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 80
    iget-object v2, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 81
    iget-object v2, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 82
    iget-object v2, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 83
    invoke-virtual {p1, v6}, Lcom/android/common/c/f;->a(Z)V

    .line 85
    iget-object p1, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    monitor-exit v0

    return-object p1

    .line 87
    :cond_1
    iput-boolean v6, p0, Lcom/android/common/c/d;->f:Z

    .line 88
    iget-object v1, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    .line 89
    iput-object v1, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    .line 90
    iput-object v1, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v1}, Lcom/android/common/c/f;->a(Z)V

    .line 93
    iget-object p1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/common/c/d;->f:Z

    return v0
.end method

.method public a(Landroid/graphics/Rect;Z)Z
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/common/c/d;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    .line 36
    iput-object p1, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    .line 38
    iput-object p1, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_2

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    if-nez p2, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    iget-object p2, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    if-nez p2, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 46
    iput-object p1, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    .line 47
    iget-object p1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    goto :goto_2

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 50
    iput-object p1, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    .line 51
    iget-object p1, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    goto :goto_2

    .line 41
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/common/c/d;->a:Landroid/graphics/Rect;

    .line 42
    iput-object p1, p0, Lcom/android/common/c/d;->b:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lcom/android/common/c/d;->d:Landroid/graphics/Rect;

    .line 44
    iput-object p1, p0, Lcom/android/common/c/d;->c:Landroid/graphics/Rect;

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_5

    .line 62
    invoke-direct {p0}, Lcom/android/common/c/d;->b()V

    .line 64
    :cond_5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
