.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# static fields
.field private static final GPU_SIZE_LIMIT:I = 0x1000

.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterDoc"

.field public static assMgr:Landroid/content/res/AssetManager; = null

.field private static sNeedSizeCheck:Z = false


# instance fields
.field public docDeflash:I

.field public docEyesCircleRemove:I

.field public docEyesEnhance:I

.field public docEyesEnlarge:I

.field public docFaceSlime:I

.field public docSkinSmooth:I

.field public docSkinTone:I

.field public docTeethWhite:I

.field private mOriginH:I

.field private mOriginW:I

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "505"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "506"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "507"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->sNeedSizeCheck:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->sNeedSizeCheck:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageFilterDoc needsizecheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinSmooth:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinTone:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docTeethWhite:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnhance:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnlarge:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docFaceSlime:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docDeflash:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mSizeChanged:Z

    const-string v0, "ImageFilterDoc"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method public static DestoryEngine()V
    .locals 2

    const-string v0, "ImageFilterDoc"

    const-string v1, "destory called"

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->nativeDestoryImageEffect(I)V

    return-void
.end method

.method public static getAssetContents(Ljava/lang/String;)[B
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->assMgr:Landroid/content/res/AssetManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    return-object v0
.end method

.method private isAllZero()Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docDeflash:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnhance:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnlarge:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docFaceSlime:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinSmooth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinTone:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docTeethWhite:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseDocFace()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->nativeUseDoc(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method protected static native nativeDestoryImageEffect(I)V
.end method

.method private native nativeIsFacePretty()I
.end method

.method static native nativeUseDoc(I)I
.end method

.method private restorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mSizeChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mOriginW:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mOriginH:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private sizeCheck(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mSizeChanged:Z

    sget-boolean v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->sNeedSizeCheck:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mOriginW:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mOriginH:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mOriginW:I

    const/16 v3, 0x1000

    if-gt v2, v3, :cond_0

    if-le v1, v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->mSizeChanged:Z

    int-to-float v3, v2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    const/high16 v5, 0x45800000    # 4096.0f

    div-float/2addr v3, v5

    int-to-float v6, v1

    add-float/2addr v6, v4

    div-float/2addr v6, v5

    cmpl-float v4, v3, v6

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->isAllZero()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->sizeCheck(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->getValue()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinSmooth:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinTone:I

    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docFaceSlime:I

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnlarge:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIIIII)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->restorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->nativeDestoryImageEffect(I)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getValue()V
    .locals 0

    return-void
.end method

.method public isFacePretty()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->nativeIsFacePretty()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIIIII)V
.end method
