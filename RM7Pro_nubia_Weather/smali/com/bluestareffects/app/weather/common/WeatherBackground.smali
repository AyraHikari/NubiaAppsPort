.class public Lcom/bluestareffects/app/weather/common/WeatherBackground;
.super Ljava/lang/Object;
.source "WeatherBackground.java"

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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 23
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 24
    iput p4, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mTextureResourceId:I

    .line 25
    const-class v1, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 26
    .local v0, "shader":Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    invoke-direct {p0, p1, v0, p4}, Lcom/bluestareffects/app/weather/common/WeatherBackground;->initModule(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;I)V

    .line 27
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p2, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 28
    return-void
.end method

.method private initModule(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;I)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    .param p3, "textureId"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-direct {v0, p2}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 32
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p1, p3}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 33
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v2, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 34
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v2, v2, v3, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 36
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 46
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/module/Module;->getAlpha()F

    move-result v0

    return v0
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 51
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/WeatherBackground;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 59
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
