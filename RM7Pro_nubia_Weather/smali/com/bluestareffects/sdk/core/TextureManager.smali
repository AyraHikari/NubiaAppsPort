.class Lcom/bluestareffects/sdk/core/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static final INVALIDATE_TEXTURE:I = -0x1


# instance fields
.field private final mBitmapTextureCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResTextureCaches:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method private createTexture(Landroid/graphics/Bitmap;)I
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const v6, 0x46240400    # 10497.0f

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 51
    new-array v1, v2, [I

    .line 53
    .local v1, "textures":[I
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 58
    aget v0, v1, v5

    .line 60
    .local v0, "textureID":I
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 62
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 63
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 64
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 66
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 69
    invoke-static {v4, v5, p1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 76
    return v0
.end method


# virtual methods
.method clearTextureCaches()V
    .locals 6

    .prologue
    .line 80
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    iget-object v5, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int v2, v4, v5

    .line 81
    .local v2, "textureSize":I
    new-array v3, v2, [I

    .line 82
    .local v3, "textures":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v3, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "iterator":Ljava/util/Iterator;
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 88
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 89
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 90
    return-void
.end method

.method deleteTexture(I)V
    .locals 6
    .param p1, "resID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 93
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 94
    .local v0, "texture":I
    if-eq v0, v3, :cond_0

    .line 95
    new-array v1, v5, [I

    .line 96
    .local v1, "textures":[I
    aput v0, v1, v4

    .line 97
    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 98
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 100
    .end local v1    # "textures":[I
    :cond_0
    return-void
.end method

.method getTexture(I)Lcom/bluestareffects/sdk/core/Texture;
    .locals 4
    .param p1, "resID"    # I

    .prologue
    const/4 v3, -0x1

    .line 31
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 32
    .local v1, "texture":I
    if-eq v1, v3, :cond_0

    .line 33
    new-instance v2, Lcom/bluestareffects/sdk/core/Texture;

    invoke-direct {v2, v1}, Lcom/bluestareffects/sdk/core/Texture;-><init>(I)V

    .line 37
    :goto_0
    return-object v2

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/bluestareffects/sdk/core/TextureManager;->createTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 36
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mResTextureCaches:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    new-instance v2, Lcom/bluestareffects/sdk/core/Texture;

    invoke-direct {v2, v1}, Lcom/bluestareffects/sdk/core/Texture;-><init>(I)V

    goto :goto_0
.end method

.method getTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/bluestareffects/sdk/core/Texture;
    .locals 4
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 43
    new-instance v2, Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bluestareffects/sdk/core/Texture;-><init>(I)V

    .line 46
    :goto_0
    return-object v2

    .line 44
    :cond_0
    invoke-direct {p0, p2}, Lcom/bluestareffects/sdk/core/TextureManager;->createTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 45
    .local v1, "texture":I
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/TextureManager;->mBitmapTextureCaches:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Lcom/bluestareffects/sdk/core/Texture;

    invoke-direct {v2, v1}, Lcom/bluestareffects/sdk/core/Texture;-><init>(I)V

    goto :goto_0
.end method
