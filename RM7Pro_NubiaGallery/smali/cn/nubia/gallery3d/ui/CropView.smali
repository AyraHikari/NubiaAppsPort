.class public Lcn/nubia/gallery3d/ui/CropView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;,
        Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;,
        Lcn/nubia/gallery3d/ui/CropView$AnimationController;,
        Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x4e2

.field private static final ANIMATION_TRIGGER:I = 0x40

.field private static final COLOR_FACE_OUTLINE:I = -0x1000000

.field private static final COLOR_OUTLINE:I = -0x380000

.field private static final FACE_EYE_RATIO:F = 2.0f

.field private static final FACE_PIXEL_COUNT:I = 0x1d4c0

.field private static final MAX_FACE_COUNT:I = 0x3

.field private static final MAX_SELECTION_RATIO:F = 0.8f

.field private static final MIN_SCALE:F = 4.0f

.field private static final MIN_SELECTION_LENGTH:F = 16.0f

.field private static final MIN_SELECTION_RATIO:F = 0.4f

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final MSG_UPDATE_FACES:I = 0x1

.field private static final OUTLINE_WIDTH:F = 3.0f

.field private static final SELECTION_RATIO:F = 0.6f

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CropView"

.field private static final TOUCH_TOLERANCE:I = 0x1e

.field public static final UNSPECIFIED:F = -1.0f

.field private static final WALLPAPER_SELECTION_RATIO:F = 1.0f


# instance fields
.field private SET_AS_WALLPAPER_FLAG:Z

.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

.field private mAspectRatio:F

.field private mFaceDetectionView:Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

.field private mFacePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

.field private mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

.field private mImageHeight:I

.field private mImageRotation:I

.field private mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

.field private mImageWidth:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F

.field private mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 4

    .line 109
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 86
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mAspectRatio:F

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 88
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 96
    new-instance v0, Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;-><init>(Lcn/nubia/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    .line 99
    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    .line 103
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mPaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    .line 104
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFacePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/CropView;->SET_AS_WALLPAPER_FLAG:Z

    .line 110
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 111
    new-instance v0, Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    .line 112
    new-instance v0, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcn/nubia/gallery3d/ui/CropView;Lcn/nubia/gallery3d/ui/CropView$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFaceDetectionView:Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    .line 113
    new-instance v0, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcn/nubia/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    .line 115
    new-instance v0, Lcn/nubia/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CropView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    const/high16 v1, -0x1000000

    .line 116
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/CropView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/CropView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFaceDetectionView:Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/CropView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/CropView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mPaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600de

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 126
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mPaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    .line 130
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFacePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFacePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    .line 133
    new-instance v0, Lcn/nubia/gallery3d/ui/CropView$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/ui/CropView$1;-><init>(Lcn/nubia/gallery3d/ui/CropView;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/glrenderer/GLPaint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mPaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/ui/CropView;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFaceDetectionView:Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$AnimationController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/glrenderer/GLPaint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mFacePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/CropView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/CropView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/CropView;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/CropView;)F
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/gallery3d/ui/CropView;->mAspectRatio:F

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/CropView;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/CropView;->SET_AS_WALLPAPER_FLAG:Z

    return p0
.end method

.method private setImageViewPosition(IIF)Z
    .locals 5

    .line 170
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    sub-int/2addr v0, p1

    .line 171
    iget v1, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    sub-int/2addr v1, p2

    .line 172
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    .line 173
    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageRotation:I

    if-eqz v3, :cond_3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 p2, 0xb4

    if-eq v3, p2, :cond_1

    const/16 p2, 0x10e

    if-ne v3, p2, :cond_0

    .line 178
    invoke-virtual {v2, v1, p1, p3, p2}, Lcn/nubia/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result p1

    return p1

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    invoke-virtual {v2, v0, v1, p3, p2}, Lcn/nubia/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result p1

    return p1

    .line 176
    :cond_2
    invoke-virtual {v2, p2, v0, p3, v4}, Lcn/nubia/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result p1

    return p1

    :cond_3
    const/4 v0, 0x0

    .line 175
    invoke-virtual {v2, p1, p2, p3, v0}, Lcn/nubia/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 11

    .line 752
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageRotation:I

    .line 753
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    int-to-float v3, v3

    const v4, 0x47ea6000    # 120000.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    .line 755
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 759
    div-int/lit8 v4, v0, 0x5a

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_0

    int-to-float v1, v1

    mul-float v4, v1, v3

    .line 760
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 761
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 762
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 763
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    .line 764
    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v0, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    int-to-float v0, v4

    div-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    .line 765
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 766
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, p1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    mul-float v4, v2, v3

    .line 768
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    int-to-float v1, v1

    mul-float/2addr v3, v1

    .line 769
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 770
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 771
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 772
    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    .line 773
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v3

    .line 774
    div-int/2addr v0, v6

    int-to-float v0, v0

    neg-int v9, v4

    div-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v4

    div-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v2, v1

    .line 775
    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 776
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, p1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 778
    :goto_0
    new-instance p1, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;

    invoke-direct {p1, p0, v7}, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;-><init>(Lcn/nubia/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView$DetectFaceTask;->start()V

    return-void
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 6

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getImageHeight()I
    .locals 1

    .line 209
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 205
    iget v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public initializeHighlightRectangle()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 783
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 156
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mStaticBackground:Lcn/nubia/gallery3d/ui/StaticBackground;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 157
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mFaceDetectionView:Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/gallery3d/ui/CropView$FaceHighlightView;->layout(IIII)V

    .line 158
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->layout(IIII)V

    .line 159
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 160
    iget p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 161
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 162
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/CropView;->mHighlightRectangle:Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;

    .line 164
    invoke-static {p2}, Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcn/nubia/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->parkNow(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 791
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->freeTextures()V

    return-void
.end method

.method public render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    .line 186
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/CropView;->invalidate()V

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->getCenterX()I

    move-result v1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->getCenterY()I

    move-result v2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/gallery3d/ui/CropView;->setImageViewPosition(IIF)Z

    .line 188
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 193
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->prepareTextures()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 143
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mAspectRatio:F

    return-void
.end method

.method public setDataModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;I)V
    .locals 1

    .line 737
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 738
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    .line 739
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    goto :goto_0

    .line 741
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageWidth:I

    .line 742
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageHeight:I

    .line 745
    :goto_0
    iput p2, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageRotation:I

    .line 747
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/CropView;->mImageView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/TileImageView;->setModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;)V

    .line 748
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mAnimation:Lcn/nubia/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView$AnimationController;->initialize()V

    return-void
.end method

.method public setSpotlightRatio(FF)V
    .locals 0

    .line 147
    iput p1, p0, Lcn/nubia/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 148
    iput p2, p0, Lcn/nubia/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return-void
.end method

.method public setWallpaperFlag(Z)V
    .locals 0

    .line 795
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/CropView;->SET_AS_WALLPAPER_FLAG:Z

    return-void
.end method
