.class public Lcn/nubia/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"

.field private static mDrawPlaceholder:Z = true

.field private static mPlaceholderColor:I = -0xddddde

.field private static sMaxSide:I = 0x280


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->setSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 58
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    sput-boolean v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    sput-boolean v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method private getRatio()F
    .locals 4

    .line 207
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    .line 208
    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static setMaxSide(I)V
    .locals 0

    .line 220
    sput p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0

    .line 72
    sput p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    return-void
.end method

.method private setSize(II)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    sget p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 p2, p1, 0x3

    .line 78
    div-int/lit8 p2, p2, 0x4

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    sget v1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 81
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mWidth:I

    int-to-float p1, p2

    mul-float/2addr v0, p1

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mHeight:I

    return-void
.end method


# virtual methods
.method public combine(Lcn/nubia/gallery3d/ui/ScreenNail;)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 92
    :cond_0
    instance-of v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->recycle()V

    return-object p1

    .line 99
    :cond_1
    check-cast p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    .line 100
    iget v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 101
    iget v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 102
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 104
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 105
    :cond_3
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    .line 110
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->recycle()V

    return-object p0
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 12

    move-object v0, p0

    .line 156
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    const-wide/16 v2, -0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-wide v4, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    sget v4, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v5

    move-object v3, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v6, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void

    .line 157
    :cond_3
    :goto_1
    iget-wide v4, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 158
    iput-wide v2, v0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 160
    :cond_4
    sget-boolean v1, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v1, :cond_5

    move v1, p2

    int-to-float v2, v1

    move v1, p3

    int-to-float v3, v1

    move/from16 v1, p4

    int-to-float v4, v1

    move/from16 v1, p5

    int-to-float v5, v1

    .line 161
    sget v6, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_5
    return-void
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    .line 181
    :cond_1
    :goto_0
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    sget v6, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 127
    iget v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcn/nubia/gallery3d/glrenderer/TiledTexture;
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 122
    iget v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 7

    .line 193
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-gez v0, :cond_1

    return v2

    .line 195
    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xb4

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    const-wide/16 v0, -0x3

    .line 196
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->isAnimating()Z

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

.method public isTextureReady()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public noDraw()V
    .locals 0

    return-void
.end method

.method public recycle()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 138
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 141
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 142
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method
