.class public Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
.super Lcn/nubia/gallery3d/glrenderer/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 33
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->mResId:I

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 48
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->mResId:I

    .line 42
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
