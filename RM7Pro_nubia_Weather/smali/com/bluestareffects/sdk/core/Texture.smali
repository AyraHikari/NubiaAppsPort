.class public Lcom/bluestareffects/sdk/core/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field private mBottom:F

.field private final mID:I

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method constructor <init>(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 17
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/sdk/core/Texture;-><init>(IFFFF)V

    .line 18
    return-void
.end method

.method constructor <init>(IFFFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/bluestareffects/sdk/core/Texture;->mID:I

    .line 22
    iput p2, p0, Lcom/bluestareffects/sdk/core/Texture;->mLeft:F

    .line 23
    iput p3, p0, Lcom/bluestareffects/sdk/core/Texture;->mTop:F

    .line 24
    iput p4, p0, Lcom/bluestareffects/sdk/core/Texture;->mRight:F

    .line 25
    iput p5, p0, Lcom/bluestareffects/sdk/core/Texture;->mBottom:F

    .line 26
    return-void
.end method


# virtual methods
.method public bottom()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/bluestareffects/sdk/core/Texture;->mBottom:F

    return v0
.end method

.method public bottom(F)V
    .locals 0
    .param p1, "bottom"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/bluestareffects/sdk/core/Texture;->mBottom:F

    return-void
.end method

.method public id()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/bluestareffects/sdk/core/Texture;->mID:I

    return v0
.end method

.method public left()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bluestareffects/sdk/core/Texture;->mLeft:F

    return v0
.end method

.method public left(F)V
    .locals 0
    .param p1, "left"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/bluestareffects/sdk/core/Texture;->mLeft:F

    return-void
.end method

.method public right()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bluestareffects/sdk/core/Texture;->mRight:F

    return v0
.end method

.method public right(F)V
    .locals 0
    .param p1, "right"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/bluestareffects/sdk/core/Texture;->mRight:F

    return-void
.end method

.method public top()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/bluestareffects/sdk/core/Texture;->mTop:F

    return v0
.end method

.method public top(F)V
    .locals 0
    .param p1, "top"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/bluestareffects/sdk/core/Texture;->mTop:F

    return-void
.end method
