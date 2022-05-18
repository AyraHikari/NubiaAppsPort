.class interface abstract Lcom/bluestareffects/sdk/materials/module/IAlphaModule;
.super Ljava/lang/Object;
.source "IAlphaModule.java"

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
.method public abstract getAlpha()F
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract setAlpha(F)V
.end method
