.class public Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
.super Ljava/lang/Object;
.source "ModuleGroup.java"

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


# instance fields
.field private mAlpha:F

.field private mEnableMatrix:Z

.field private mIndependent:Z

.field private mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mMultiplyAlpha:F

.field private mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

.field private mShareMatrix:Z

.field private mSubAlphaModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/module/IAlphaModule;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMatrixModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/module/IMatrixModule;",
            ">;"
        }
    .end annotation
.end field

.field private mSubModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/core/IModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMultiplyAlpha:F

    .line 16
    iput v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    .line 18
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mEnableMatrix:Z

    .line 20
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mShareMatrix:Z

    .line 21
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 22
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubModules:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubAlphaModules:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    return-void
.end method

.method private addAndSetChildMatrix(Lcom/bluestareffects/sdk/materials/module/IMatrixModule;)V
    .locals 2
    .param p1, "mChild"    # Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .prologue
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mEnableMatrix:Z

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 128
    invoke-interface {p1, v0}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->enableMatrix(Z)V

    .line 132
    :goto_1
    invoke-interface {p1}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->matrixEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-interface {p1, v0}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mShareMatrix:Z

    if-nez v1, :cond_3

    :goto_2
    invoke-interface {p1, v0}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->enableMatrix(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_0
.end method

.method private resetFirstChild()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .line 150
    .local v0, "first":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    invoke-interface {v0}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->matrixEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->enableMatrix(Z)V

    .line 152
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 158
    .end local v0    # "first":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "first":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    :cond_1
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_0
.end method

.method private updateChildEnableMatrixState()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .line 142
    .local v0, "subModule":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mShareMatrix:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->enableMatrix(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 144
    .end local v0    # "subModule":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    :cond_1
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->resetFirstChild()V

    .line 145
    return-void
.end method

.method private uploadChildrenMatrix()V
    .locals 4

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mEnableMatrix:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .line 112
    .local v0, "subModule":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-interface {v0, v2}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_0

    .line 115
    .end local v0    # "subModule":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    :cond_2
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .line 116
    .restart local v0    # "subModule":Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;->multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    goto :goto_1
.end method


# virtual methods
.method public addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V
    .locals 3
    .param p1, "subModule"    # Lcom/bluestareffects/sdk/core/IModule;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    instance-of v0, p1, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubAlphaModules:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;

    iget v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMultiplyAlpha:F

    iget v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;->multiplyAlpha(F)V

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    if-eqz v0, :cond_1

    .line 36
    check-cast p1, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    .end local p1    # "subModule":Lcom/bluestareffects/sdk/core/IModule;
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addAndSetChildMatrix(Lcom/bluestareffects/sdk/materials/module/IMatrixModule;)V

    .line 39
    :cond_1
    return-void
.end method

.method public enableMatrix(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mEnableMatrix:Z

    .line 89
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->updateChildEnableMatrixState()V

    .line 90
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    return v0
.end method

.method public getMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    return-object v0
.end method

.method public matrixEnabled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mEnableMatrix:Z

    return v0
.end method

.method public matrixIndependentFromParent(Z)V
    .locals 0
    .param p1, "willEnable"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    .line 104
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMultiplyAlpha:F

    .line 67
    iget-boolean v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mIndependent:Z

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubAlphaModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;

    .line 69
    .local v0, "subModule":Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
    iget v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMultiplyAlpha:F

    iget v3, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    mul-float/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;->multiplyAlpha(F)V

    goto :goto_0

    .line 72
    .end local v0    # "subModule":Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
    :cond_0
    return-void
.end method

.method public multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMutiplyMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 83
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->uploadChildrenMatrix()V

    .line 84
    return-void
.end method

.method public onUpload()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/core/IModule;

    .line 173
    .local v0, "subModule":Lcom/bluestareffects/sdk/core/IModule;
    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/IModule;->onUpload()V

    goto :goto_0

    .line 175
    .end local v0    # "subModule":Lcom/bluestareffects/sdk/core/IModule;
    :cond_0
    return-void
.end method

.method public removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V
    .locals 1
    .param p1, "subModule"    # Lcom/bluestareffects/sdk/core/IModule;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubAlphaModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubMatrixModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    instance-of v0, p1, Lcom/bluestareffects/sdk/materials/module/IMatrixModule;

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->resetFirstChild()V

    .line 49
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    .line 54
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mSubAlphaModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;

    .line 55
    .local v0, "subModule":Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
    iget v2, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMultiplyAlpha:F

    iget v3, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mAlpha:F

    mul-float/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/bluestareffects/sdk/materials/module/IAlphaModule;->multiplyAlpha(F)V

    goto :goto_0

    .line 57
    .end local v0    # "subModule":Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
    :cond_0
    return-void
.end method

.method public setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mMatrix:Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 77
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->uploadChildrenMatrix()V

    .line 78
    return-void
.end method

.method public shareMatrixInChild(Z)V
    .locals 0
    .param p1, "willShare"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->mShareMatrix:Z

    .line 99
    return-void
.end method
