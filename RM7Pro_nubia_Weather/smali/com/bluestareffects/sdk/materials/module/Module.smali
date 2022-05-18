.class public Lcom/bluestareffects/sdk/materials/module/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
.implements Lcom/bluestareffects/sdk/materials/module/IMatrixModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bluestareffects/sdk/materials/module/IAlphaModule",
        "<",
        "Lcom/bluestareffects/sdk/materials/shader/BaseShader;",
        ">;",
        "Lcom/bluestareffects/sdk/materials/module/IMatrixModule",
        "<",
        "Lcom/bluestareffects/sdk/materials/shader/BaseShader;",
        ">;"
    }
.end annotation


# static fields
.field protected static final HEIGHT:I = 0x1

.field protected static final WIDGHT:I = 0x0

.field protected static final X:I = 0x0

.field protected static final Y:I = 0x1

.field protected static final Z:I = 0x2


# instance fields
.field private final mAlpha:[F

.field private mEnableMatrix:Z

.field private mIndependent:Z

.field private mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mMultiplyAlpha:F

.field private mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field protected final mPosition:[F

.field private final mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field protected final mSize:[F

.field private mTexture:Lcom/bluestareffects/sdk/core/Texture;

.field private final mTextureCoors:[F

.field protected final mVertexes:[F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    .line 36
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    .line 50
    iput v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyAlpha:F

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mIndependent:Z

    .line 54
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mEnableMatrix:Z

    .line 55
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 56
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 58
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVisible:Z

    .line 63
    const-class v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 64
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    if-nez v0, :cond_0

    .line 65
    const/16 v0, 0xd

    const-string v1, "can\'t get shader BaseShaderImpl"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;)I

    .line 67
    :cond_0
    invoke-virtual {p0, v2, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 68
    invoke-virtual {p0, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V
    .locals 4
    .param p1, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    .line 36
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    .line 50
    iput v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyAlpha:F

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mIndependent:Z

    .line 54
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mEnableMatrix:Z

    .line 55
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 56
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 58
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVisible:Z

    .line 73
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 74
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    if-nez v0, :cond_0

    .line 75
    const/16 v0, 0xd

    const-string v1, "module must have a shader"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;)I

    .line 77
    :cond_0
    invoke-virtual {p0, v2, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 78
    invoke-virtual {p0, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 80
    return-void
.end method

.method private updateTextureCoordinates()V
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "point":I
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->left()F

    move-result v3

    aput v3, v1, v2

    .line 252
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->bottom()F

    move-result v3

    aput v3, v1, v2

    .line 254
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->right()F

    move-result v3

    aput v3, v1, v2

    .line 256
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->bottom()F

    move-result v3

    aput v3, v1, v2

    .line 258
    const/4 v0, 0x2

    .line 259
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->right()F

    move-result v3

    aput v3, v1, v2

    .line 260
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->top()F

    move-result v3

    aput v3, v1, v2

    .line 262
    const/4 v0, 0x3

    .line 263
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->left()F

    move-result v3

    aput v3, v1, v2

    .line 264
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->bottom()F

    move-result v3

    aput v3, v1, v2

    .line 266
    const/4 v0, 0x4

    .line 267
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->right()F

    move-result v3

    aput v3, v1, v2

    .line 268
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->top()F

    move-result v3

    aput v3, v1, v2

    .line 270
    const/4 v0, 0x5

    .line 271
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->left()F

    move-result v3

    aput v3, v1, v2

    .line 272
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/Texture;->top()F

    move-result v3

    aput v3, v1, v2

    .line 274
    return-void
.end method

.method private updateVertex()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "point":I
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 150
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 151
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 153
    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 155
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v4, v4, v6

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 156
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v7

    aput v3, v1, v2

    .line 158
    const/4 v0, 0x2

    .line 159
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 160
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v6

    aput v3, v1, v2

    .line 161
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v7

    aput v3, v1, v2

    .line 163
    const/4 v0, 0x3

    .line 164
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v5

    aput v3, v1, v2

    .line 165
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v4, v4, v6

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 166
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v7

    aput v3, v1, v2

    .line 168
    const/4 v0, 0x4

    .line 169
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 170
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v6

    aput v3, v1, v2

    .line 171
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v7

    aput v3, v1, v2

    .line 173
    const/4 v0, 0x5

    .line 174
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v5

    aput v3, v1, v2

    .line 175
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v6

    aput v3, v1, v2

    .line 176
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    aget v3, v3, v7

    aput v3, v1, v2

    .line 178
    return-void
.end method


# virtual methods
.method public enableMatrix(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mEnableMatrix:Z

    .line 325
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    return-object v0
.end method

.method public matrixEnabled()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mEnableMatrix:Z

    return v0
.end method

.method public matrixIndependentFromParent(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mIndependent:Z

    .line 335
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyAlpha:F

    .line 142
    return-void
.end method

.method public multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 320
    return-void
.end method

.method public onUpload()V
    .locals 5

    .prologue
    .line 278
    iget-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVisible:Z

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v2}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadBegin()V

    .line 284
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-interface {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 285
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVertexes:[F

    invoke-interface {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadVertexes([F)V

    .line 286
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTextureCoors:[F

    invoke-interface {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadTextureCoors([F)V

    .line 288
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 289
    .local v1, "mulitpliedAlpha":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 290
    aget v2, v1, v0

    iget v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyAlpha:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v2, v1}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadAlpha([F)V

    .line 293
    iget-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mEnableMatrix:Z

    if-eqz v2, :cond_3

    .line 294
    iget-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mIndependent:Z

    if-eqz v2, :cond_4

    .line 295
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-interface {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 301
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v2}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadEnd()V

    goto :goto_0

    .line 297
    :cond_4
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_2
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mAlpha:[F

    aput p1, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 315
    return-void
.end method

.method public setPosition(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 86
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mPosition:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 88
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/Module;->updateVertex()V

    .line 89
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 93
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mSize:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 94
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/Module;->updateVertex()V

    .line 95
    return-void
.end method

.method public setTexture(Lcom/bluestareffects/sdk/core/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/bluestareffects/sdk/core/Texture;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    .line 114
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/Module;->updateTextureCoordinates()V

    .line 115
    return-void
.end method

.method public setTextureCoors(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/Texture;->left(F)V

    .line 119
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v0, p2}, Lcom/bluestareffects/sdk/core/Texture;->top(F)V

    .line 120
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v0, p3}, Lcom/bluestareffects/sdk/core/Texture;->right(F)V

    .line 121
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v0, p4}, Lcom/bluestareffects/sdk/core/Texture;->bottom(F)V

    .line 122
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/Module;->updateTextureCoordinates()V

    .line 123
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVisible:Z

    .line 306
    return-void
.end method

.method public visible()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Module;->mVisible:Z

    return v0
.end method
