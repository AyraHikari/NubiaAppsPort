.class public Lcn/nubia/gallery3d/ui/EdgeView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "EdgeView.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field private static final BOTTOM_M:I = 0x20

.field public static final INVALID_DIRECTION:I = -0x1

.field public static final LEFT:I = 0x1

.field private static final LEFT_M:I = 0x10

.field public static final RIGHT:I = 0x3

.field private static final RIGHT_M:I = 0x30

.field public static final TOP:I

.field private static final TOP_M:I


# instance fields
.field private mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

.field private mMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcn/nubia/gallery3d/ui/EdgeEffect;

    .line 39
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    const/16 v1, 0x40

    new-array v1, v1, [F

    .line 40
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 44
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    new-instance v3, Lcn/nubia/gallery3d/ui/EdgeEffect;

    invoke-direct {v3, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAbsorb(II)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->onAbsorb(I)V

    .line 124
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_2

    and-int/lit8 p3, p2, 0x1

    if-nez p3, :cond_1

    .line 57
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object p3, p3, p2

    invoke-virtual {p3, p4, p5}, Lcn/nubia/gallery3d/ui/EdgeEffect;->setSize(II)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object p3, p3, p2

    invoke-virtual {p3, p5, p4}, Lcn/nubia/gallery3d/ui/EdgeEffect;->setSize(II)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 67
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 p2, 0x10

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 69
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 p3, 0x20

    invoke-static {p1, p3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 70
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v0, 0x30

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v2, 0x10

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 73
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, p2, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 75
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    int-to-float p2, p5

    const/4 p5, 0x0

    invoke-static {p1, p3, p5, p2, p5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 76
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    invoke-static {p1, p3, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 78
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    int-to-float p2, p4

    invoke-static {p1, v0, p2, p5, p5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 79
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v2, 0x30

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public onPull(II)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->getHeight()I

    move-result v0

    .line 101
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v1, v1, p2

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->onPull(F)V

    .line 102
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->invalidate()V

    :cond_1
    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/EdgeEffect;->onRelease()V

    .line 112
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->invalidate()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    .line 87
    invoke-interface {p1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 88
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mMatrix:[F

    mul-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 89
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeView;->mEffect:[Lcn/nubia/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 90
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeView;->invalidate()V

    :cond_1
    return-void
.end method
