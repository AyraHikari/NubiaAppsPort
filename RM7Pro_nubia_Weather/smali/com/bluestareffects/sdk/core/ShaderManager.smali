.class Lcom/bluestareffects/sdk/core/ShaderManager;
.super Ljava/lang/Object;
.source "ShaderManager.java"

# interfaces
.implements Lcom/bluestareffects/sdk/core/DrawCallReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;
    }
.end annotation


# instance fields
.field private mDrawCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mShaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/core/IShader$Impl;",
            ">;"
        }
    .end annotation
.end field

.field private mShaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bluestareffects/sdk/core/IShader$Impl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mProjection:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    .line 32
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mProjection:Lcom/bluestareffects/sdk/util/BSMatrix;

    const/high16 v2, 0x44870000    # 1080.0f

    const/high16 v3, 0x44f00000    # 1920.0f

    const/high16 v6, 0x41200000    # 10.0f

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/bluestareffects/sdk/util/BSMatrix;->setProjectOrtho(FFFFFF)V

    .line 33
    return-void
.end method


# virtual methods
.method public addDrawCall(Lcom/bluestareffects/sdk/core/IShader$Impl;I)V
    .locals 2
    .param p1, "shader"    # Lcom/bluestareffects/sdk/core/IShader$Impl;
    .param p2, "token"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    new-instance v1, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;

    invoke-direct {v1, p1, p2}, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;-><init>(Lcom/bluestareffects/sdk/core/IShader$Impl;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method clearFrameData()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/IShader$Impl;

    .line 80
    .local v0, "shader":Lcom/bluestareffects/sdk/core/IShader$Impl;
    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/IShader$Impl;->clearData()V

    goto :goto_0

    .line 81
    .end local v0    # "shader":Lcom/bluestareffects/sdk/core/IShader$Impl;
    :cond_0
    return-void
.end method

.method clearShaders()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/IShader$Impl;

    .line 72
    .local v0, "shader":Lcom/bluestareffects/sdk/core/IShader$Impl;
    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/IShader$Impl;->destroy()V

    goto :goto_0

    .line 73
    .end local v0    # "shader":Lcom/bluestareffects/sdk/core/IShader$Impl;
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 75
    return-void
.end method

.method executeDrawCalls()V
    .locals 4

    .prologue
    .line 53
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeDrawCalls call size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;

    .line 55
    .local v0, "call":Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;
    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->execute()V

    goto :goto_0

    .line 56
    .end local v0    # "call":Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;
    :cond_0
    return-void
.end method

.method getCachedShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$Impl;
    .locals 1
    .param p1, "shaderClass"    # Ljava/lang/Class;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/IShader$Impl;

    return-object v0
.end method

.method public getLastShaderUsed()Lcom/bluestareffects/sdk/core/IShader$Impl;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mDrawCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->getShader()Lcom/bluestareffects/sdk/core/IShader$Impl;

    move-result-object v0

    goto :goto_0
.end method

.method public getProjectionMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mProjection:Lcom/bluestareffects/sdk/util/BSMatrix;

    return-object v0
.end method

.method newShader(Ljava/lang/Class;Lcom/bluestareffects/sdk/core/IShader$Impl;)V
    .locals 1
    .param p1, "shaderClass"    # Ljava/lang/Class;
    .param p2, "shader"    # Lcom/bluestareffects/sdk/core/IShader$Impl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
