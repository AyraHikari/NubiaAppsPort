.class public interface abstract Lcom/bluestareffects/sdk/materials/module/IMatrixModule;
.super Ljava/lang/Object;
.source "IMatrixModule.java"

# interfaces
.implements Lcom/bluestareffects/sdk/core/IModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bluestareffects/sdk/core/IShader$User;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bluestareffects/sdk/core/IModule",
        "<",
        "Lcom/bluestareffects/sdk/core/IShader$User;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract enableMatrix(Z)V
.end method

.method public abstract getMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;
.end method

.method public abstract matrixEnabled()Z
.end method

.method public abstract matrixIndependentFromParent(Z)V
.end method

.method public abstract multiplyMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
.end method

.method public abstract setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
.end method
