.class public Lcn/nubia/nubiaimage3d/Image3dView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->c:Landroid/graphics/Bitmap;

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/nubiaimage3d/Image3dView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/Image3dView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setFrame(Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcn/nubia/nubiaimage3d/Image3dView;->getWidth()I

    move-result v2

    .line 52
    invoke-virtual {p0}, Lcn/nubia/nubiaimage3d/Image3dView;->getHeight()I

    move-result v3

    .line 54
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 55
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 56
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 57
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/Image3dView;->a:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v2

    int-to-float v0, v0

    div-float/2addr v4, v0

    int-to-float v5, v3

    int-to-float v1, v1

    div-float/2addr v5, v1

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 60
    iget-object v5, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 61
    iget-object v5, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 66
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 68
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 69
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/Image3dView;->b:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 71
    iput-object p1, p0, Lcn/nubia/nubiaimage3d/Image3dView;->c:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcn/nubia/nubiaimage3d/Image3dView;->invalidate()V

    return-void
.end method
