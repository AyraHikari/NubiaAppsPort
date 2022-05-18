.class Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;
.super Ljava/lang/Thread;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectFaceTask"
.end annotation


# instance fields
.field private final mFaceBitmap:Landroid/graphics/Bitmap;

.field private mFaceCount:I

.field private final mFaces:[Landroid/media/FaceDetector$Face;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/media/FaceDetector$Face;

    .line 658
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    .line 663
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    const-string p1, "face-detect"

    .line 664
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;
    .locals 11

    .line 678
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 679
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 681
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 682
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 683
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p1, v3

    .line 685
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$800(Lcn/nubia/gallery3d/ui/CropView;)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    mul-float v5, p1, v3

    move v10, v5

    move v5, p1

    move p1, v10

    goto :goto_0

    :cond_0
    div-float v5, p1, v3

    goto :goto_0

    :cond_1
    move v5, p1

    .line 694
    :goto_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, p1

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v5

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, p1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v5

    invoke-direct {v6, v7, v8, v9, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, v1

    int-to-float v0, v2

    const/4 v1, 0x0

    .line 696
    invoke-virtual {v6, v1, v1, p1, v0}, Landroid/graphics/RectF;->intersect(FFFF)Z

    if-eqz v4, :cond_3

    .line 699
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v1, v1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_2

    .line 700
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v3

    .line 701
    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    iput v3, v6, Landroid/graphics/RectF;->left:F

    .line 702
    iget v2, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v6, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    .line 705
    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    iput v3, v6, Landroid/graphics/RectF;->top:F

    .line 706
    iget v2, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v6, Landroid/graphics/RectF;->bottom:F

    .line 710
    :cond_3
    :goto_1
    iget v1, v6, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, p1

    iput v1, v6, Landroid/graphics/RectF;->left:F

    .line 711
    iget v1, v6, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, p1

    iput v1, v6, Landroid/graphics/RectF;->right:F

    .line 712
    iget p1, v6, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v0

    iput p1, v6, Landroid/graphics/RectF;->top:F

    .line 713
    iget p1, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v0

    iput p1, v6, Landroid/graphics/RectF;->bottom:F

    return-object v6
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 669
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 670
    new-instance v1, Landroid/media/FaceDetector;

    .line 671
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 672
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    .line 673
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$1100(Lcn/nubia/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    .line 674
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/CropView;->access$1100(Lcn/nubia/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 673
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateFaces()V
    .locals 5

    .line 718
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 720
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/CropView;->access$1200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->addFace(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$1200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$700(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100163

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 726
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$1200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setRectangle(Landroid/graphics/RectF;)V

    .line 728
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    goto :goto_1

    .line 730
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 731
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcn/nubia/gallery3d/ui/CropView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView;->access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    :goto_1
    return-void
.end method
