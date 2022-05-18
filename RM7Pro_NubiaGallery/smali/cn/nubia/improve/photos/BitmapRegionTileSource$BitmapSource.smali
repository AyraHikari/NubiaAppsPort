.class public abstract Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;
    }
.end annotation


# instance fields
.field private mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

.field private mPreview:Landroid/graphics/Bitmap;

.field private mPreviewSize:I

.field private mRotation:I

.field private mState:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    .line 168
    iput p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    return-void
.end method


# virtual methods
.method public getBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    return-object v0
.end method

.method public getLoadingState()Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewSize()I
    .locals 1

    .line 214
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 218
    iget v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mRotation:I

    return v0
.end method

.method public abstract loadBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;
.end method

.method public loadInBackground()Z
    .locals 7

    .line 171
    new-instance v0, Lcn/nubia/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcn/nubia/gallery3d/exif/ExifInterface;-><init>()V

    .line 172
    invoke-virtual {p0, v0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->readExif(Lcn/nubia/gallery3d/exif/ExifInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mRotation:I

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->loadBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 180
    sget-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return v1

    .line 183
    :cond_1
    invoke-interface {v0}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->getWidth()I

    move-result v0

    .line 184
    iget-object v2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;

    invoke-interface {v2}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 185
    iget v3, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/16 v5, 0x400

    .line 186
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 187
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 189
    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    int-to-float v3, v3

    .line 191
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 192
    invoke-static {v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    invoke-virtual {p0, v5}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    .line 196
    :cond_2
    sget-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return v4
.end method

.method public abstract loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract readExif(Lcn/nubia/gallery3d/exif/ExifInterface;)Z
.end method
