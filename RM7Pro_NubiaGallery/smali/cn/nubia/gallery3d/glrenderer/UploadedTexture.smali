.class public abstract Lcn/nubia/gallery3d/glrenderer/UploadedTexture;
.super Lcn/nubia/gallery3d/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;-><init>(Lcn/nubia/gallery3d/glrenderer/UploadedTexture$1;)V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;-><init>(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    .line 56
    iput-boolean v1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    .line 57
    iput-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    .line 58
    iput-boolean v1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->setBorder(Z)V

    .line 73
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 139
    iget v2, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 140
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->setSize(II)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 120
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;

    .line 121
    iput-boolean p0, v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    .line 122
    iput-object p1, v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 123
    iput p2, v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;->length:I

    .line 124
    sget-object v1, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 127
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 129
    sget-object p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;->clone()Lcn/nubia/gallery3d/glrenderer/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    sput v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .line 213
    sget v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private uploadToCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 9

    .line 218
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->getGLId()Lcn/nubia/gallery3d/glrenderer/GLId;

    move-result-object v0

    .line 219
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v8, 0x1

    .line 222
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 223
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v3

    .line 227
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v4

    if-gt v1, v3, :cond_0

    if-gt v2, v4, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 228
    :goto_0
    invoke-static {v6}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    if-nez v0, :cond_2

    .line 231
    instance-of v6, p1, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;

    if-eqz v6, :cond_1

    .line 232
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;

    invoke-direct {v0}, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;-><init>()V

    goto :goto_1

    .line 233
    :cond_1
    instance-of v6, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;

    if-eqz v6, :cond_2

    .line 234
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    .line 237
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mId:I

    .line 238
    invoke-interface {p1, p0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V

    if-ne v1, v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 241
    invoke-interface {p1, p0, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->initializeTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 276
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    return-void

    .line 244
    :cond_4
    :try_start_1
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 245
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 246
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-interface {p1, p0, v6, v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcn/nubia/gallery3d/glrenderer/BasicTexture;II)V

    .line 249
    iget v4, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v1, p1

    move-object v2, p0

    move v3, v4

    invoke-interface/range {v1 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    :goto_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 279
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 280
    iput v8, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 281
    iput-boolean v8, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_1
    move-exception p1

    .line 276
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 277
    throw p1

    :cond_5
    const/4 p1, -0x1

    .line 283
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 284
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Texture load fail, no bitmap"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 163
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 164
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 157
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    .line 175
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 291
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result p1

    return p1
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 310
    invoke-super {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 311
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 194
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->uploadToCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_3

    .line 199
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 200
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 201
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 202
    iget v5, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 203
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 204
    iput-boolean v1, p0, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    :cond_3
    :goto_0
    return-void
.end method
