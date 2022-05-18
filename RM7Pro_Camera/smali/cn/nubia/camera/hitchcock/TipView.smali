.class public Lcn/nubia/camera/hitchcock/TipView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/drawable/NinePatchDrawable;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/drawable/NinePatchDrawable;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/TipView;->a:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 108
    iput p1, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 51
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/TipView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080118

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->b:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 53
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/TipView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/graphics/NinePatch;

    iget-object v5, p0, Lcn/nubia/camera/hitchcock/TipView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v2, p0, Lcn/nubia/camera/hitchcock/TipView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->e:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/TipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080117

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->d:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 61
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/TipView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/NinePatch;

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/TipView;->d:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/TipView;->e:Landroid/graphics/drawable/NinePatchDrawable;

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/TipView;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/TipView;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/TipView;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/TipView;->h:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 68
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/TipView;->e:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->e:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/TipView;->f:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v5, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/TipView;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/TipView;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public setPreviewSelectRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/TipView;->h:Landroid/graphics/Rect;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/camera/hitchcock/TipView;->i:F

    return-void
.end method

.method public setTrackerRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/TipView;->f:Landroid/graphics/Rect;

    return-void
.end method
