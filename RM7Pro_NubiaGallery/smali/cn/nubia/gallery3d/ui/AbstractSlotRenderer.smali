.class public abstract Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mDrmIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mFramePressedUp:Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;

.field protected mInSelectionMode:Z

.field protected final mSelectIconOffset:I

.field protected final mSelectedMaskColor:I

.field protected mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field protected final muliSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field protected final muliUnSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f08005c

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 47
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f08005b

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliUnSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 48
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f08007e

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mDrmIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mSelectedMaskColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07022a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mSelectIconOffset:I

    return-void
.end method

.method protected static drawFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/glrenderer/Texture;IIII)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected drawAngleFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;FIILcn/nubia/gallery3d/data/Path;)V
    .locals 0

    return-void
.end method

.method protected drawBroderFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 0

    return-void
.end method

.method protected drawContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/Texture;III)V
    .locals 4

    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    .line 58
    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v2, p5

    const/4 v3, 0x0

    .line 59
    invoke-interface {p1, v2, v3, v3, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v2, p3

    .line 60
    div-int/2addr v2, v0

    int-to-float v2, v2

    neg-int v3, p4

    div-int/2addr v3, v0

    int-to-float v0, v3

    invoke-interface {p1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 61
    rem-int/lit8 p5, p5, 0x5a

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    move p4, p3

    :cond_0
    int-to-float p3, p3

    .line 70
    invoke-interface {p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    int-to-float p4, p4

    .line 71
    invoke-interface {p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    .line 69
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 72
    invoke-interface {p1, p3, p3, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    const/4 p3, 0x0

    .line 73
    invoke-interface {p2, p1, p3, p3}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 75
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected drawDrmIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 79
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mDrmIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 80
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mDrmIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    .line 82
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mDrmIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    sub-int v3, p3, v5

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    int-to-float v3, p2

    int-to-float v4, p3

    .line 99
    iget v5, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mSelectedMaskColor:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 101
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 102
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    sub-int/2addr p2, v4

    iget v3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mSelectIconOffset:I

    sub-int v2, p2, v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawUnSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 109
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliUnSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 110
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliUnSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->muliUnSelectIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    sub-int/2addr p2, v4

    iget v3, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mSelectIconOffset:I

    sub-int v2, p2, v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
