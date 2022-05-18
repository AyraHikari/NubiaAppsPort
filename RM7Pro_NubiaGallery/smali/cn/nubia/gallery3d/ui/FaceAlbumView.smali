.class public Lcn/nubia/gallery3d/ui/FaceAlbumView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "FaceAlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;
    }
.end annotation


# instance fields
.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mButtonClickableRegion:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private mCoverImageClickableRegion:Landroid/graphics/Rect;

.field private mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

.field private final mFaceAlbumBgColor:I

.field private mFaceAlbumName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field private final mImageHeight:I

.field private final mImageMarginTop:I

.field private final mImageWidth:I

.field private mIsClickable:Z

.field private mIsUnnamed:Z

.field private final mLineColor:I

.field private final mLineMagrinBottom:I

.field private mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

.field private final mMarginLeft:I

.field private mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private final mNameTextColor:I

.field private final mNameTextMarginLeft:I

.field private final mNameTextMarginTop:I

.field private mNameTextPaint:Landroid/text/TextPaint;

.field private mRenameButtonFrame:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

.field private final mRenameButtonFrameHeight:I

.field private final mRenameButtonFrameWidth:I

.field private final mRenameButtonMarginLeft:I

.field private final mRenameButtonMarginTop:I

.field private mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mRenameDialog:Lcn/nubia/commonui/app/Dialog;

.field private mRenameText:Ljava/lang/String;

.field private final mRenameTextColor:I

.field private final mRenameTextHintColor:I

.field private mRenameTextPaint:Landroid/text/TextPaint;

.field private final mTextSize:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/FaceAlbum;Landroid/os/Handler;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsClickable:Z

    .line 75
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 76
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    .line 78
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/FaceAlbum;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumName:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getCoverBitmap(Lcn/nubia/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 84
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06005a

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumBgColor:I

    const p2, 0x7f0700b0

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageWidth:I

    const p2, 0x7f0700ae

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageHeight:I

    const p2, 0x7f0700af

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    const p2, 0x7f0700b2

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    const p2, 0x7f0700b5

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    const p3, 0x7f06008b

    .line 91
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextColor:I

    .line 92
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextColor:I

    const v1, 0x7f060027

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextHintColor:I

    int-to-float v1, p2

    .line 94
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    .line 95
    invoke-static {p2, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextPaint:Landroid/text/TextPaint;

    const p2, 0x7f060026

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLineColor:I

    const p3, 0x7f0700b1

    .line 98
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLineMagrinBottom:I

    .line 99
    new-instance p3, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {p3}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    .line 100
    invoke-virtual {p3, p2}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 101
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    .line 103
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f1000b6

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumName:Ljava/lang/String;

    const p2, 0x7f1000b8

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const p2, 0x7f1000b9

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameText:Ljava/lang/String;

    :goto_0
    const p2, 0x7f0700b4

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    const p2, 0x7f0700b3

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    .line 111
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumName:Ljava/lang/String;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    const p2, 0x7f0700b8

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    const p2, 0x7f0700b7

    .line 116
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginLeft:I

    .line 117
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameText:Ljava/lang/String;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    const p2, 0x7f0700b9

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameWidth:I

    const p2, 0x7f0700b6

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    .line 122
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    const p3, 0x7f0801bf

    invoke-direct {p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrame:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/commonui/app/Dialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Lcn/nubia/gallery3d/data/FaceAlbum;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsUnnamed:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/FaceAlbumView;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initButtonClickableRegion()V
    .locals 6

    .line 241
    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginLeft:I

    sub-int/2addr v0, v1

    .line 242
    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    add-int/2addr v1, v2

    .line 243
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1e

    add-int/lit8 v4, v1, -0x1e

    .line 245
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x3c

    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3c

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mButtonClickableRegion:Landroid/graphics/Rect;

    goto :goto_0

    .line 248
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, -0x1e

    add-int/lit8 v4, v1, -0x1e

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameWidth:I

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x3c

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x3c

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mButtonClickableRegion:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private initCoverImageClickableRegion()V
    .locals 6

    .line 228
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1e

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    add-int/lit8 v2, v2, -0x1e

    .line 230
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1e

    iget v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3c

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverImageClickableRegion:Landroid/graphics/Rect;

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    add-int/lit8 v2, v1, -0x1e

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    add-int/lit8 v4, v3, -0x1e

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageWidth:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x3c

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageHeight:I

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3c

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverImageClickableRegion:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private setFaceAlbumName()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView$1;-><init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;)V

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->showRenameDialog(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private showKeyBord(Lcn/nubia/commonui/app/Dialog;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090091

    .line 367
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 370
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 371
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 373
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;

    invoke-direct {v2, p0, v0, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView$3;-><init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showRenameDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .line 314
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FaceAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsUnnamed:Z

    .line 316
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    const v3, 0x7f1100a5

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/gallery3d/ui/FaceAlbumView$2;-><init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f100060

    .line 317
    invoke-virtual {v1, p1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10004e

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p1, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0c005c

    .line 329
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    const v1, 0x7f090091

    .line 331
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 332
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->showKeyBord(Lcn/nubia/commonui/app/Dialog;)V

    .line 333
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsUnnamed:Z

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 336
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 338
    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextHintColor:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 339
    new-instance v1, Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/ui/FaceAlbumView$MyTextWatcher;-><init>(Lcn/nubia/gallery3d/ui/FaceAlbumView;Lcn/nubia/gallery3d/ui/FaceAlbumView$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    .line 340
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 343
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method protected checkName(Ljava/lang/String;)Z
    .locals 2

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    const v0, 0x7f1000e7

    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return v1

    .line 306
    :cond_0
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->inValidFilename(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mContext:Landroid/content/Context;

    const v0, 0x7f1000b4

    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getCoverBitmap(Lcn/nubia/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    const/16 v1, 0x9

    .line 130
    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 133
    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isRenameDialogShowing()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 220
    invoke-super/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 221
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->initCoverImageClickableRegion()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->initButtonClickableRegion()V

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout mCoverImageClickableRegion = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverImageClickableRegion:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mButtonClickableRegion = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mButtonClickableRegion:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceAlbumView"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->showKeyBord(Lcn/nubia/commonui/app/Dialog;)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsClickable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mButtonClickableRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->setFaceAlbumName()V

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsClickable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverImageClickableRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FaceAlbum;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-path"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pick_coverimage"

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "get-content"

    .line 267
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "is-tab"

    .line 268
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcn/nubia/gallery3d/app/AlbumPage;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public recycleBitmap()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 13

    .line 170
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbumBgColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 171
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    sub-int/2addr v0, v2

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageWidth:I

    sub-int v3, v0, v5

    iget v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v7, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget v9, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    iget v10, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageMarginTop:I

    iget v11, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageWidth:I

    iget v12, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImageHeight:I

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 178
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_3

    .line 179
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 185
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_5

    .line 186
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextPaint:Landroid/text/TextPaint;

    .line 189
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 187
    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 191
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextPaint:Landroid/text/TextPaint;

    .line 193
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 191
    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 196
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrame:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    if-eqz v0, :cond_7

    .line 197
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrame:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v5, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameWidth:I

    sub-int v3, v0, v5

    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    add-int v4, v0, v2

    iget v6, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_3

    .line 202
    :cond_6
    iget-object v7, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrame:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginLeft:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginLeft:I

    sub-int v9, v0, v1

    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextMarginTop:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mTextSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonMarginTop:I

    add-int v10, v0, v1

    iget v11, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameWidth:I

    iget v12, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonFrameHeight:I

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 207
    :cond_7
    :goto_3
    iget v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLineMagrinBottom:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mMarginLeft:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 208
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLineMagrinBottom:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    move-object v1, p1

    .line 207
    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    return-void
.end method

.method public setCover(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    .line 141
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 142
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mFaceAlbum:Lcn/nubia/gallery3d/data/FaceAlbum;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/FaceAlbum;->setRefreshCover(Z)V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDisable()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsClickable:Z

    return-void
.end method

.method public setEnable()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mIsClickable:Z

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mNameText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_0
    return-void
.end method

.method public setRenameButtonText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameText:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/FaceAlbumView;->mRenameButtonText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_0
    return-void
.end method
