.class public Lcom/bluestareffects/sdk/materials/module/Batch2DModule;
.super Ljava/lang/Object;
.source "Batch2DModule.java"

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
.field protected static final X:I = 0x0

.field protected static final Y:I = 0x1

.field protected static final Z:I = 0x2


# instance fields
.field private mAlpha:F

.field private mEnableMatrix:Z

.field private mIndependent:Z

.field private mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mMultiplyAlpha:F

.field private mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
            ">;"
        }
    .end annotation
.end field

.field private final mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private mTexture:Lcom/bluestareffects/sdk/core/Texture;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    .line 36
    iput v1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyAlpha:F

    .line 37
    iput v1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mAlpha:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mIndependent:Z

    .line 40
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mEnableMatrix:Z

    .line 41
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 42
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 44
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mVisible:Z

    .line 45
    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mParticles:Ljava/util/ArrayList;

    .line 50
    const-class v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 51
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t get shader BaseShaderImpl"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setAlpha(F)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V
    .locals 4
    .param p1, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    .line 36
    iput v1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyAlpha:F

    .line 37
    iput v1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mAlpha:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mIndependent:Z

    .line 40
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mEnableMatrix:Z

    .line 41
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 42
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 44
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mVisible:Z

    .line 45
    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mParticles:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 58
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "module must have a shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setAlpha(F)V

    .line 61
    return-void
.end method


# virtual methods
.method public enableMatrix(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mEnableMatrix:Z

    .line 104
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mAlpha:F

    return v0
.end method

.method public getMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    return-object v0
.end method

.method public matrixEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mEnableMatrix:Z

    return v0
.end method

.method public matrixIndependentFromParent(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mIndependent:Z

    .line 114
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyAlpha:F

    .line 89
    return-void
.end method

.method public multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 99
    return-void
.end method

.method public onUpload()V
    .locals 15

    .prologue
    .line 131
    iget-boolean v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mVisible:Z

    if-nez v12, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 134
    .local v4, "particleCount":I
    if-eqz v4, :cond_0

    .line 138
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v12}, Lcom/bluestareffects/sdk/core/Texture;->left()F

    move-result v7

    .line 139
    .local v7, "texLeft":F
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v12}, Lcom/bluestareffects/sdk/core/Texture;->top()F

    move-result v9

    .line 140
    .local v9, "texTop":F
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v12}, Lcom/bluestareffects/sdk/core/Texture;->right()F

    move-result v8

    .line 141
    .local v8, "texRight":F
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v12}, Lcom/bluestareffects/sdk/core/Texture;->bottom()F

    move-result v6

    .line 143
    .local v6, "texBottom":F
    mul-int/lit8 v12, v4, 0x3

    mul-int/lit8 v12, v12, 0x6

    new-array v11, v12, [F

    .line 144
    .local v11, "vertexes":[F
    mul-int/lit8 v12, v4, 0x2

    mul-int/lit8 v12, v12, 0x6

    new-array v10, v12, [F

    .line 145
    .local v10, "textureCoors":[F
    mul-int/lit8 v12, v4, 0x6

    new-array v0, v12, [F

    .line 147
    .local v0, "alphas":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 148
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;

    .line 149
    .local v2, "particle":Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
    iget v12, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mAlpha:F

    iget v13, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mAlpha:F

    mul-float/2addr v12, v13

    iget v13, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyAlpha:F

    mul-float v3, v12, v13

    .line 150
    .local v3, "particleAlpha":F
    const/4 v5, 0x0

    .line 151
    .local v5, "point":I
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    aput v13, v11, v12

    .line 152
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mHeight:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 153
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 154
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x0

    aput v7, v10, v12

    .line 155
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x1

    aput v6, v10, v12

    .line 156
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 158
    const/4 v5, 0x1

    .line 159
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mWidth:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 160
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mHeight:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 161
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 162
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x0

    aput v8, v10, v12

    .line 163
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    aput v6, v10, v12

    .line 164
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 166
    const/4 v5, 0x2

    .line 167
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mWidth:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 168
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    aput v13, v11, v12

    .line 169
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 170
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x0

    aput v8, v10, v12

    .line 171
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x1

    aput v9, v10, v12

    .line 172
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 174
    const/4 v5, 0x3

    .line 175
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x9

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    aput v13, v11, v12

    .line 176
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x9

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mHeight:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 177
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x9

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 178
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x0

    aput v7, v10, v12

    .line 179
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x1

    aput v6, v10, v12

    .line 180
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 182
    const/4 v5, 0x4

    .line 183
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    iget v14, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mWidth:F

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 184
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    aput v13, v11, v12

    .line 185
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 186
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x0

    aput v8, v10, v12

    .line 187
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x1

    aput v9, v10, v12

    .line 188
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 190
    const/4 v5, 0x5

    .line 191
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mX:F

    aput v13, v11, v12

    .line 192
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;->mY:F

    aput v13, v11, v12

    .line 193
    mul-int/lit8 v12, v1, 0x3

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 194
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xa

    add-int/lit8 v12, v12, 0x0

    aput v7, v10, v12

    .line 195
    mul-int/lit8 v12, v1, 0x2

    mul-int/lit8 v12, v12, 0x6

    add-int/lit8 v12, v12, 0xa

    add-int/lit8 v12, v12, 0x1

    aput v9, v10, v12

    .line 196
    mul-int/lit8 v12, v1, 0x6

    add-int/2addr v12, v5

    aput v3, v0, v12

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 199
    .end local v2    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
    .end local v3    # "particleAlpha":F
    .end local v5    # "point":I
    :cond_2
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v12}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadBegin()V

    .line 201
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v13, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    invoke-interface {v12, v13}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 202
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v12, v11}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadVertexes([F)V

    .line 203
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v12, v10}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadTextureCoors([F)V

    .line 205
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v12, v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadAlpha([F)V

    .line 207
    iget-boolean v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mEnableMatrix:Z

    if-eqz v12, :cond_3

    .line 208
    iget-boolean v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mIndependent:Z

    if-eqz v12, :cond_4

    .line 209
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v13, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-interface {v12, v13}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 215
    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-interface {v12}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadEnd()V

    goto/16 :goto_0

    .line 211
    :cond_4
    iget-object v12, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iget-object v13, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v14, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMultiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v13, v14}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/bluestareffects/sdk/materials/shader/BaseShader;->uploadMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_2
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mAlpha:F

    .line 75
    return-void
.end method

.method public setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 94
    return-void
.end method

.method public setParticles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "particles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;>;"
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mParticles:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setTexture(Lcom/bluestareffects/sdk/core/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/bluestareffects/sdk/core/Texture;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mTexture:Lcom/bluestareffects/sdk/core/Texture;

    .line 70
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mVisible:Z

    .line 123
    return-void
.end method

.method public visible()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->mVisible:Z

    return v0
.end method
