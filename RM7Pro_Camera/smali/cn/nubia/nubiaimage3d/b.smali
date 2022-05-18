.class public Lcn/nubia/nubiaimage3d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->a:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    .line 14
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    .line 15
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    .line 16
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    return-void
.end method

.method private d()V
    .locals 6

    .line 75
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 76
    iget v1, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 78
    iget v2, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    .line 80
    iget v3, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const/4 v2, 0x3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    cmpg-float v4, v2, v1

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 v3, 0x4

    .line 92
    :cond_2
    iput v3, p0, Lcn/nubia/nubiaimage3d/b;->a:I

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 34
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    goto :goto_0

    .line 42
    :cond_1
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    goto :goto_0

    .line 39
    :cond_2
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    goto :goto_0

    .line 36
    :cond_3
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    .line 51
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public a(FF)V
    .locals 1

    .line 59
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 60
    iput p1, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    .line 62
    :cond_0
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 63
    iput p1, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    .line 65
    :cond_1
    iget p1, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2

    .line 66
    iput p2, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    .line 68
    :cond_2
    iget p1, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    .line 69
    iput p2, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    .line 71
    :cond_3
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/b;->d()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 55
    iget v0, p0, Lcn/nubia/nubiaimage3d/b;->a:I

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->a:I

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->b:F

    .line 98
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->c:F

    .line 99
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->d:F

    .line 100
    iput v0, p0, Lcn/nubia/nubiaimage3d/b;->e:F

    return-void
.end method
