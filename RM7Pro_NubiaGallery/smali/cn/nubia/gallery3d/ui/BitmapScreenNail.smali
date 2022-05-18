.class public Lcn/nubia/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field public static final MAX_SIDE:I = 0x280

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field private static final TAG:Ljava/lang/String; = "BitmapScreenNail"


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 51
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 68
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 51
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getRatio()F
    .locals 4

    .line 202
    invoke-static {}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    .line 203
    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private static now()J
    .locals 2

    .line 198
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private setSize(II)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 p1, 0x280

    const/16 p2, 0x1e0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x44200000    # 640.0f

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 77
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mWidth:I

    int-to-float p1, p2

    mul-float/2addr v0, p1

    .line 78
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mHeight:I

    return-void
.end method


# virtual methods
.method public combine(Lcn/nubia/gallery3d/ui/ScreenNail;)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 88
    :cond_0
    instance-of v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->recycle()V

    return-object p1

    .line 95
    :cond_1
    check-cast p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 96
    iget v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 97
    iget v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 98
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_2
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 107
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->recycle()V

    return-object p0
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 150
    iget-wide p1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const-wide/16 p1, -0x2

    .line 151
    iput-wide p1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 160
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 185
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 123
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mWidth:I

    return v0
.end method

.method public getmBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 6

    .line 189
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 190
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const-wide/16 v2, -0x3

    .line 191
    iput-wide v2, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public noDraw()V
    .locals 0

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 139
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method
