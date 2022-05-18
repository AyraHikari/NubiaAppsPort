.class public Lcom/bluestareffects/app/weather/common/SceneryWindow;
.super Ljava/lang/Object;
.source "SceneryWindow.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# instance fields
.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mTextureResourceId:I


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V
    .locals 2
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureId"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 25
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 26
    iput p4, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mTextureResourceId:I

    .line 27
    const-class v1, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 28
    .local v0, "mShader":Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    invoke-direct {p0, p1, v0, p4}, Lcom/bluestareffects/app/weather/common/SceneryWindow;->initModule(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;I)V

    .line 29
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p2, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 30
    return-void
.end method

.method private initModule(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;I)V
    .locals 5
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    .param p3, "textureId"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-direct {v0, p2}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 34
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p1, p3}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x432f0000    # 175.0f

    const v2, 0x43cf8000    # 415.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 36
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3, v3, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 37
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const v1, 0x44368000    # 730.0f

    const v2, 0x4439c000    # 743.0f

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 38
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 39
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 49
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 53
    const/high16 v1, 0x44f00000    # 1920.0f

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, p1

    const/high16 v3, 0x44870000    # 1080.0f

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 54
    .local v0, "hRadio":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const v2, 0x44368000    # 730.0f

    const v3, 0x4439c000    # 743.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 55
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/SceneryWindow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v2, 0x432f0000    # 175.0f

    const v3, 0x43cf8000    # 415.0f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 56
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
