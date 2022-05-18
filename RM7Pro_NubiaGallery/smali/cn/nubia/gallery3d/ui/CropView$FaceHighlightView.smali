.class Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceHighlightView"
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1


# instance fields
.field private mFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedFaceIndex:I

.field private mRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/CropView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/CropView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 215
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 216
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/CropView;Lcn/nubia/gallery3d/ui/CropView$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcn/nubia/gallery3d/ui/CropView;)V

    return-void
.end method

.method private getFaceIndexByPosition(FF)I
    .locals 6

    .line 259
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 261
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 262
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private renderFace(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Z)V
    .locals 12

    .line 232
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p3}, Lcn/nubia/gallery3d/ui/CropView;->access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p3, p2, v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    .line 233
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 234
    iget v7, p2, Landroid/graphics/RectF;->left:F

    iget v8, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/CropView;->access$300(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/glrenderer/GLPaint;

    move-result-object v11

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawRect(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    return-void
.end method

.method private setPressedFace(I)V
    .locals 1

    .line 253
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 254
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    .line 255
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->invalidate()V

    return-void
.end method


# virtual methods
.method public addFace(Landroid/graphics/RectF;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->invalidate()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    const/4 v0, -0x1

    .line 280
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->setPressedFace(I)V

    if-eq p1, v0, :cond_2

    .line 282
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setRectangle(Landroid/graphics/RectF;)V

    .line 283
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 284
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->getFaceIndexByPosition(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->setPressedFace(I)V

    :cond_2
    :goto_0
    return v2
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 8

    .line 243
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mFaces:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-direct {p0, p1, v4, v5}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->renderFace(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->mPressedFaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/high16 v7, 0x66000000

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_2
    return-void
.end method
