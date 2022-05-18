.class Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
.source "GroupRain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/GroupRain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RainPropertyParticle"
.end annotation


# instance fields
.field private mMaxAlpha:F

.field private final mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private final mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mSizeH:F

.field private mSizeW:F


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 2
    .param p1, "self"    # Lcom/bluestareffects/sdk/materials/module/Module;
    .param p2, "parent"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 180
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 181
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 182
    return-void
.end method

.method private AlphaFromPosition(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "xPosition"    # F
    .param p2, "yPosition"    # F
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "alpha1":F
    const/4 v1, 0x0

    .line 204
    .local v1, "alpha2":F
    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_5

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 224
    :goto_1
    mul-float v2, v0, v1

    return v2

    .line 206
    :cond_2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    .line 207
    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    iget v3, p4, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v5, v2

    goto :goto_0

    .line 208
    :cond_3
    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 209
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 211
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 216
    :cond_5
    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_6

    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_6

    .line 217
    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p4, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v1, v5, v2

    goto :goto_1

    .line 218
    :cond_6
    iget v2, p4, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_7

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_7

    .line 219
    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    goto :goto_1

    .line 221
    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mMaxAlpha:F

    return p1
.end method

.method private normalValue(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 228
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 229
    const/4 p1, 0x0

    .line 233
    :cond_0
    :goto_0
    return p1

    .line 230
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 231
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 239
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 242
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSizeW:F

    .line 243
    iput p2, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSizeH:F

    .line 244
    return-void
.end method

.method public update(F)V
    .locals 12
    .param p1, "timePassed"    # F

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->update(F)V

    .line 188
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v6}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->getValue()[F

    move-result-object v3

    .line 189
    .local v3, "values":[F
    aget v4, v3, v10

    .line 190
    .local v4, "x":F
    aget v5, v3, v11

    .line 191
    .local v5, "y":F
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSizeH:F

    sub-float v7, v5, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 193
    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x438

    const/16 v7, 0x4bc

    invoke-direct {v1, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v1, "rect1":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/16 v6, 0xc8

    const/16 v7, 0x258

    const/16 v8, 0x370

    const/16 v9, 0x384

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    .local v2, "rect2":Landroid/graphics/Rect;
    aget v6, v3, v10

    aget v7, v3, v11

    invoke-direct {p0, v6, v7, v1, v2}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->AlphaFromPosition(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 196
    .local v0, "alpha":F
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mMaxAlpha:F

    mul-float/2addr v0, v6

    .line 197
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-direct {p0, v0}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->normalValue(F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 198
    return-void
.end method
