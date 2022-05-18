.class public Lcn/nubia/gallery3d/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ROTATE_FACTOR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Paper"


# instance fields
.field private WIDE:Z

.field private mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

.field private mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

.field private mHeight:I

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    .line 31
    new-instance v0, Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/Paper;->WIDE:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    return-void
.end method

.method private getSize()I
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/Paper;->WIDE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mHeight:I

    :goto_0
    return v0
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/Paper;->getSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    :goto_0
    return-void
.end method

.method public getTransform(Landroid/graphics/Rect;F)[F
    .locals 17

    move-object/from16 v0, p0

    .line 79
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v1

    .line 80
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v2

    .line 81
    iget-boolean v3, v0, Lcn/nubia/gallery3d/ui/Paper;->WIDE:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    sub-float v3, v3, p2

    .line 86
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/Paper;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 87
    invoke-direct/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/Paper;->getSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v5, v4, v3

    mul-float/2addr v5, v1

    mul-float/2addr v3, v2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    neg-float v1, v5

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float v1, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    const/high16 v3, -0x3dcc0000    # -45.0f

    mul-float v6, v1, v3

    .line 94
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 95
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v11, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v12, v1

    const/4 v13, 0x0

    move-object v7, v9

    invoke-static/range {v7 .. v13}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 96
    iget-boolean v1, v0, Lcn/nubia/gallery3d/ui/Paper;->WIDE:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    move v7, v4

    :goto_1
    if-eqz v1, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    .line 98
    :goto_2
    iget-object v4, v0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 99
    iget-object v12, v0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v15, v1

    const/16 v16, 0x0

    move-object v10, v12

    invoke-static/range {v10 .. v16}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 100
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public onRelease()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onRelease()V

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onRelease()V

    return-void
.end method

.method public overScroll(F)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/Paper;->getSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationLeft:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onPull(F)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/Paper;->mAnimationRight:Lcn/nubia/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeAnimation;->onPull(F)V

    :goto_0
    return-void
.end method

.method public setScrollType(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/Paper;->WIDE:Z

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 74
    iput p1, p0, Lcn/nubia/gallery3d/ui/Paper;->mWidth:I

    .line 75
    iput p2, p0, Lcn/nubia/gallery3d/ui/Paper;->mHeight:I

    return-void
.end method
