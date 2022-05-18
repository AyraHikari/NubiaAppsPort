.class public Lcn/nubia/nubiaimage3d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Z

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B


# direct methods
.method public constructor <init>(IIF)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcn/nubia/nubiaimage3d/h;->a:F

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/h;->b:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcn/nubia/nubiaimage3d/h;->d:I

    .line 16
    iput v0, p0, Lcn/nubia/nubiaimage3d/h;->e:I

    .line 17
    iput v0, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcn/nubia/nubiaimage3d/h;->g:I

    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/h;->h:[B

    .line 22
    iput p1, p0, Lcn/nubia/nubiaimage3d/h;->e:I

    .line 23
    iput p2, p0, Lcn/nubia/nubiaimage3d/h;->d:I

    .line 24
    iput p3, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 5

    .line 75
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/h;->h:[B

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    iget v2, p0, Lcn/nubia/nubiaimage3d/h;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 p2, 0x3

    if-eq v2, p2, :cond_1

    const/4 p2, 0x4

    if-eq v2, p2, :cond_0

    goto :goto_1

    :cond_0
    neg-float p1, p1

    .line 89
    iget p2, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    goto :goto_0

    .line 86
    :cond_1
    iget p2, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    goto :goto_0

    .line 83
    :cond_2
    iget p1, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    mul-float v1, p2, p1

    goto :goto_1

    :cond_3
    neg-float p1, p2

    .line 80
    iget p2, p0, Lcn/nubia/nubiaimage3d/h;->c:F

    :goto_0
    mul-float v1, p1, p2

    .line 92
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/nubiaimage3d/h;->b:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 93
    iput-boolean p2, p0, Lcn/nubia/nubiaimage3d/h;->b:Z

    .line 94
    iget p1, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    int-to-float p2, p1

    sub-float/2addr v1, p2

    iput v1, p0, Lcn/nubia/nubiaimage3d/h;->a:F

    .line 95
    monitor-exit v0

    return p1

    .line 97
    :cond_4
    iget p1, p0, Lcn/nubia/nubiaimage3d/h;->a:F

    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    .line 98
    iput v1, p0, Lcn/nubia/nubiaimage3d/h;->a:F

    .line 99
    iput p2, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    goto :goto_2

    .line 100
    :cond_5
    iget p2, p0, Lcn/nubia/nubiaimage3d/h;->e:I

    int-to-float v2, p2

    add-float/2addr v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    int-to-float p1, p2

    sub-float/2addr v1, p1

    add-float/2addr v1, v4

    .line 101
    iput v1, p0, Lcn/nubia/nubiaimage3d/h;->a:F

    sub-int/2addr p2, v3

    .line 102
    iput p2, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    goto :goto_2

    :cond_6
    sub-float/2addr v1, p1

    .line 104
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    .line 106
    :goto_2
    iget p1, p0, Lcn/nubia/nubiaimage3d/h;->g:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget v1, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    if-eq p1, v1, :cond_7

    goto :goto_3

    .line 110
    :cond_7
    monitor-exit v0

    return p2

    .line 107
    :cond_8
    :goto_3
    iget p1, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    iput p1, p0, Lcn/nubia/nubiaimage3d/h;->g:I

    .line 108
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/h;->h:[B

    monitor-enter v0

    .line 29
    :try_start_0
    iput p1, p0, Lcn/nubia/nubiaimage3d/h;->f:I

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcn/nubia/nubiaimage3d/h;->b:Z

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
