.class public Lcn/nubia/gallery3d/ui/ProgressSpinner;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"


# static fields
.field private static ROTATE_SPEED_INNER:F = -0.20571429f

.field private static ROTATE_SPEED_OUTER:F = 0.30857143f


# instance fields
.field private mAnimationTimestamp:J

.field private final mHeight:I

.field private final mInner:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mInnerDegree:F

.field private final mOuter:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mOuterDegree:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 34
    iput v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 38
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f080202

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuter:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 39
    new-instance v1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f080201

    invoke-direct {v1, p1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInner:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 41
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mWidth:I

    .line 42
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7

    .line 60
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 62
    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    iget-wide v3, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v5, v0, v3

    long-to-float v5, v5

    sget v6, Lcn/nubia/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_OUTER:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iput v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 63
    iget v5, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    sub-long v3, v0, v3

    long-to-float v3, v3

    sget v4, Lcn/nubia/gallery3d/ui/ProgressSpinner;->ROTATE_SPEED_INNER:F

    mul-float/2addr v3, v4

    add-float/2addr v5, v3

    iput v5, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    .line 65
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_1

    sub-float/2addr v2, v0

    .line 68
    iput v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, v5, v1

    if-gez v2, :cond_2

    add-float/2addr v5, v0

    .line 69
    iput v5, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    :cond_2
    const/4 v0, 0x2

    .line 71
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 73
    iget v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mWidth:I

    div-int/2addr v2, v0

    add-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mHeight:I

    div-int/2addr v2, v0

    add-int/2addr p3, v2

    int-to-float p3, p3

    invoke-interface {p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 74
    iget p2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v1, v1, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 75
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuter:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v0

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuter:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/2addr v3, v0

    invoke-virtual {p2, p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 76
    iget p2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    iget v2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    sub-float/2addr p2, v2

    invoke-interface {p1, p2, v1, v1, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 77
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInner:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/2addr p3, v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInner:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v0

    invoke-virtual {p2, p1, p3, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 78
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mWidth:I

    return v0
.end method

.method public startAnimation()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mAnimationTimestamp:J

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mOuterDegree:F

    .line 56
    iput v0, p0, Lcn/nubia/gallery3d/ui/ProgressSpinner;->mInnerDegree:F

    return-void
.end method
