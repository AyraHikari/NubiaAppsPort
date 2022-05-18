.class Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;
.super Ljava/lang/Object;
.source "BaseShaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawCallInner"
.end annotation


# instance fields
.field private alphaBegin:I

.field private alphaEnd:I

.field private matrix:I

.field private texture:I

.field private textureCoorsBegin:I

.field private textureCoorsEnd:I

.field private vertexBegin:I

.field private vertexEnd:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->reset()V

    .line 120
    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "vertex"    # I
    .param p2, "textureCoors"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexBegin:I

    .line 125
    iput p2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsBegin:I

    .line 126
    iput p3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaBegin:I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexBegin:I

    return v0
.end method

.method static synthetic access$100(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsBegin:I

    return v0
.end method

.method static synthetic access$300(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsEnd:I

    return v0
.end method

.method static synthetic access$400(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaBegin:I

    return v0
.end method

.method static synthetic access$500(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 105
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->texture:I

    return v0
.end method


# virtual methods
.method end(III)V
    .locals 0
    .param p1, "vertexEnd"    # I
    .param p2, "textureCoorsEnd"    # I
    .param p3, "alphaEnd"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexEnd:I

    .line 143
    iput p2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsEnd:I

    .line 144
    iput p3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaEnd:I

    .line 145
    return-void
.end method

.method getEnd()[I
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexEnd:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsEnd:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaEnd:I

    aput v2, v0, v1

    return-object v0
.end method

.method getMatrix()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->matrix:I

    return v0
.end method

.method getTexture()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->texture:I

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexBegin:I

    .line 153
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsBegin:I

    .line 154
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaBegin:I

    .line 156
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexEnd:I

    .line 157
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsEnd:I

    .line 158
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaEnd:I

    .line 160
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->texture:I

    .line 161
    iput v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->matrix:I

    .line 162
    return-void
.end method

.method setMatrix(I)V
    .locals 0
    .param p1, "matrix"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->matrix:I

    return-void
.end method

.method setTexture(I)V
    .locals 0
    .param p1, "texture"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->texture:I

    .line 131
    return-void
.end method

.method start(III)V
    .locals 0
    .param p1, "vertexBegin"    # I
    .param p2, "textureCoorsBegin"    # I
    .param p3, "alphaBegin"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->vertexBegin:I

    .line 137
    iput p2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->textureCoorsBegin:I

    .line 138
    iput p3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->alphaBegin:I

    .line 139
    return-void
.end method
