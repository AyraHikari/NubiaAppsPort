.class Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;
.super Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Drawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 415
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    const/16 p1, 0xff

    .line 416
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    const/4 v0, 0x1

    .line 439
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 440
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 441
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 442
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 443
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
