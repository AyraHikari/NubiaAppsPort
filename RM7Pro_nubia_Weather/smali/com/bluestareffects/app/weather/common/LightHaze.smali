.class public Lcom/bluestareffects/app/weather/common/LightHaze;
.super Ljava/lang/Object;
.source "LightHaze.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# instance fields
.field private mAnimator_a:Landroid/animation/ValueAnimator;

.field private mAnimator_aa:Landroid/animation/ValueAnimator;

.field private mAnimator_b:Landroid/animation/ValueAnimator;

.field private mAnimator_bb:Landroid/animation/ValueAnimator;

.field private mAnimator_c:Landroid/animation/ValueAnimator;

.field private mAnimator_cc:Landroid/animation/ValueAnimator;

.field private mAnimator_d:Landroid/animation/ValueAnimator;

.field private mAnimator_dd:Landroid/animation/ValueAnimator;

.field private mAnimator_e:Landroid/animation/ValueAnimator;

.field private mAnimator_ee:Landroid/animation/ValueAnimator;

.field private mAnimator_f:Landroid/animation/ValueAnimator;

.field private mAnimator_ff:Landroid/animation/ValueAnimator;

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mRay_A:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mRay_B:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mRay_C:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mRay_D:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mRay_E:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mRay_F:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mResource_A:I

.field private mResource_B:I

.field private mResource_C:I

.field private mResource_D:I

.field private mResource_E:I

.field private mResource_F:I

.field private mRunnableEnd:Ljava/lang/Runnable;

.field private mRunnableStart:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p2, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v3

    check-cast v3, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .local v3, "mShader":Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/LightHaze;->initModule(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 69
    invoke-virtual {p2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->invalidate()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_a:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_A:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_D:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_e:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_E:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_f:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_F:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_b:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_B:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_c:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_C:Lcom/bluestareffects/sdk/materials/module/Module;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_d:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private initModule(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    .param p4, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    const-wide/16 v8, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v6, 0x7d0

    const/4 v4, 0x2

    .line 75
    iput-object p5, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 76
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 78
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_a"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_A:I

    .line 79
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_b"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_B:I

    .line 80
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_c"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_C:I

    .line 81
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_d"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_D:I

    .line 82
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_e"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_E:I

    .line 83
    const-string v0, "drawable"

    const-string v1, "weather_light_beam_f"

    invoke-static {p1, v0, v1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_F:I

    .line 85
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_A:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 86
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_B:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 87
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_C:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 88
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_D:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 89
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_E:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 90
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_F:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 92
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_A:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_A:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 93
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_A:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 94
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_B:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_B:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 95
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_B:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 96
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_C:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_C:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 97
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_C:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 98
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_D:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_D:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 99
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_D:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 100
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_E:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_E:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 101
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_E:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 102
    iget v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_F:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bluestareffects/app/weather/common/LightHaze;->createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_F:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 103
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRay_F:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 105
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_a:Landroid/animation/ValueAnimator;

    .line 106
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 108
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$1;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    .line 119
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 120
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$2;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$2;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_aa:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$3;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$3;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_b:Landroid/animation/ValueAnimator;

    .line 153
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$4;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$4;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 163
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$5;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$5;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_bb:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$6;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$6;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_c:Landroid/animation/ValueAnimator;

    .line 195
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 196
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$7;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$7;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    .line 205
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 206
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$8;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$8;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_cc:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$9;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$9;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    new-array v0, v4, [F

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_d:Landroid/animation/ValueAnimator;

    .line 238
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 239
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$10;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$10;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    new-array v0, v4, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 249
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$11;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$11;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_dd:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$12;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$12;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 280
    new-array v0, v4, [F

    fill-array-data v0, :array_8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_e:Landroid/animation/ValueAnimator;

    .line 281
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 282
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$13;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$13;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    new-array v0, v4, [F

    fill-array-data v0, :array_9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    .line 291
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 292
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$14;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$14;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ee:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$15;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$15;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    new-array v0, v4, [F

    fill-array-data v0, :array_a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_f:Landroid/animation/ValueAnimator;

    .line 324
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 325
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$16;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$16;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-array v0, v4, [F

    fill-array-data v0, :array_b

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    .line 334
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 335
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 336
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$17;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$17;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 343
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mAnimator_ff:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bluestareffects/app/weather/common/LightHaze$18;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$18;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    new-instance v0, Lcom/bluestareffects/app/weather/common/LightHaze$19;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$19;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRunnableStart:Ljava/lang/Runnable;

    .line 385
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRunnableStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 387
    new-instance v0, Lcom/bluestareffects/app/weather/common/LightHaze$20;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/common/LightHaze$20;-><init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRunnableEnd:Ljava/lang/Runnable;

    .line 417
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 151
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 161
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 194
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 204
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 237
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 247
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 280
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 290
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 323
    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 333
    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateTexturePosition(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 469
    return-void
.end method


# virtual methods
.method public createRay(ILcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)Lcom/bluestareffects/sdk/materials/module/Module;
    .locals 4
    .param p1, "resID"    # I
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "shader"    # Lcom/bluestareffects/sdk/materials/shader/BaseShader;
    .param p4, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 422
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-direct {v0, p3}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 423
    .local v0, "ray":Lcom/bluestareffects/sdk/materials/module/Module;
    invoke-virtual {p2, p1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 424
    invoke-virtual {v0, v2, v2, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 425
    invoke-virtual {v0, v2, v2, v3, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 427
    const/high16 v1, 0x44870000    # 1080.0f

    const v2, 0x448fc000    # 1150.0f

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 429
    invoke-virtual {p4, v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 430
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mRunnableEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 449
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_A:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 450
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_B:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 451
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_C:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 452
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_D:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 453
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_E:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 454
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResouceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze;->mResource_F:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 455
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 460
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method
