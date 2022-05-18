.class public Lcn/nubia/modules/videoRender/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:Lcn/nubia/modules/videoRender/b$a;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/nubia/modules/videoRender/d;->a:I

    .line 3
    iput p2, p0, Lcn/nubia/modules/videoRender/d;->b:I

    return-void
.end method

.method private a(FFF)F
    .locals 1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    return p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    :cond_1
    return p1
.end method

.method public static c(IILcn/nubia/modules/videoRender/b$a;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    iget v1, p2, Lcn/nubia/modules/videoRender/b$a;->f:I

    int-to-float v2, v1

    int-to-float p0, p0

    div-float/2addr v2, p0

    iget p2, p2, Lcn/nubia/modules/videoRender/b$a;->g:I

    int-to-float v3, p2

    int-to-float p1, p1

    div-float/2addr v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    int-to-float v2, v1

    div-float v2, p0, v2

    goto :goto_0

    :cond_0
    int-to-float v2, p2

    div-float v2, p1, v2

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, p0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 3
    iput v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    mul-float/2addr p2, v2

    sub-float p2, p1, p2

    div-float/2addr p2, v3

    .line 4
    iput p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v1

    .line 5
    iput p0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    .line 6
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private d(II)V
    .locals 7

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lcn/nubia/modules/videoRender/d;->a:I

    int-to-float v1, v0

    div-float v1, p1, v1

    int-to-float p2, p2

    iget v2, p0, Lcn/nubia/modules/videoRender/d;->b:I

    int-to-float v3, v2

    div-float v3, p2, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    int-to-float p2, v0

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    int-to-float p1, v2

    div-float p2, p1, p2

    .line 2
    :goto_0
    iput p2, p0, Lcn/nubia/modules/videoRender/d;->c:F

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    .line 3
    iput p1, p0, Lcn/nubia/modules/videoRender/d;->d:F

    .line 4
    iget-object p1, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    const/4 v0, 0x0

    iput v0, p1, Lcn/nubia/modules/videoRender/b$a;->b:F

    .line 5
    iput v0, p1, Lcn/nubia/modules/videoRender/b$a;->c:F

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    iget v0, p0, Lcn/nubia/modules/videoRender/d;->a:I

    int-to-float v1, v0

    iget-object v2, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    iget v3, v2, Lcn/nubia/modules/videoRender/b$a;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 8
    iget v4, p0, Lcn/nubia/modules/videoRender/d;->b:I

    int-to-float v5, v4

    iget v6, v2, Lcn/nubia/modules/videoRender/b$a;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    iput v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float p2, v0

    sub-float/2addr p2, v1

    .line 9
    iput p2, p1, Landroid/graphics/RectF;->right:F

    int-to-float p2, v4

    sub-float/2addr p2, v5

    .line 10
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 11
    iput-object p1, v2, Lcn/nubia/modules/videoRender/b$a;->h:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, v2, Lcn/nubia/modules/videoRender/b$a;->d:F

    return-void
.end method


# virtual methods
.method public b()Lcn/nubia/modules/videoRender/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    return-object v0
.end method

.method public e(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    iput p1, v0, Lcn/nubia/modules/videoRender/b$a;->b:F

    .line 2
    iput p2, v0, Lcn/nubia/modules/videoRender/b$a;->c:F

    return-void
.end method

.method public f(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->e:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcn/nubia/modules/videoRender/b$a;->e:F

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v1, p1

    .line 2
    iput v1, v0, Lcn/nubia/modules/videoRender/b$a;->e:F

    return-void
.end method

.method public g(Lcn/nubia/modules/videoRender/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    return-void
.end method

.method public h(II)V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/modules/videoRender/b$a;

    invoke-direct {v0}, Lcn/nubia/modules/videoRender/b$a;-><init>()V

    iput-object v0, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    .line 2
    iput p1, v0, Lcn/nubia/modules/videoRender/b$a;->f:I

    .line 3
    iput p2, v0, Lcn/nubia/modules/videoRender/b$a;->g:I

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/nubia/modules/videoRender/d;->d(II)V

    .line 5
    iget-object p1, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    const/4 p2, 0x0

    iput p2, p1, Lcn/nubia/modules/videoRender/b$a;->e:F

    return-void
.end method

.method public i(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/d;->e:Lcn/nubia/modules/videoRender/b$a;

    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->d:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcn/nubia/modules/videoRender/b$a;->d:F

    .line 2
    iget p1, p0, Lcn/nubia/modules/videoRender/d;->c:F

    iget v2, p0, Lcn/nubia/modules/videoRender/d;->d:F

    invoke-direct {p0, v1, p1, v2}, Lcn/nubia/modules/videoRender/d;->a(FFF)F

    move-result p1

    iput p1, v0, Lcn/nubia/modules/videoRender/b$a;->d:F

    return-void
.end method
