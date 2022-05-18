.class public Lcom/bluestareffects/sdk/core/EffectsInstance;
.super Ljava/lang/Object;
.source "EffectsInstance.java"

# interfaces
.implements Lcom/bluestareffects/sdk/core/GLThreadCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

.field private final mContext:Landroid/content/Context;

.field private mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

.field private final mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;Lcom/bluestareffects/sdk/core/GLThreadCallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;
    .param p3, "callback"    # Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    .line 32
    new-instance v0, Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/core/ShaderManager;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    .line 33
    new-instance v0, Lcom/bluestareffects/sdk/core/TextureManager;

    invoke-direct {v0, p1}, Lcom/bluestareffects/sdk/core/TextureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;

    .line 34
    sget-object v0, Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;->GLSurfaceView:Lcom/bluestareffects/sdk/core/EffectsInstance$RenderTarget;

    if-ne p2, v0, :cond_0

    .line 35
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 36
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    goto :goto_0
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/TextureManager;->clearTextureCaches()V

    .line 101
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/ShaderManager;->clearShaders()V

    .line 102
    return-void
.end method

.method public deleteTexture(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/TextureManager;->deleteTexture(I)V

    .line 106
    return-void
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;
    .locals 9
    .param p1, "shader"    # Ljava/lang/Class;

    .prologue
    const/4 v8, 0x1

    .line 71
    iget-object v5, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-virtual {v5, p1}, Lcom/bluestareffects/sdk/core/ShaderManager;->getCachedShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$Impl;

    move-result-object v3

    check-cast v3, Lcom/bluestareffects/sdk/core/IShader$User;

    .line 72
    .local v3, "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 84
    .end local v3    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    .local v4, "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    :goto_0
    return-object v4

    .line 76
    .end local v4    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    .restart local v3    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    :cond_0
    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lcom/bluestareffects/sdk/core/DrawCallReporter;

    aput-object v7, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 77
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 78
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "shader"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/bluestareffects/sdk/core/IShader$User;

    move-object v3, v0

    .line 79
    iget-object v6, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    move-object v0, v3

    check-cast v0, Lcom/bluestareffects/sdk/core/IShader$Impl;

    move-object v5, v0

    invoke-virtual {v6, p1, v5}, Lcom/bluestareffects/sdk/core/ShaderManager;->newShader(Ljava/lang/Class;Lcom/bluestareffects/sdk/core/IShader$Impl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_1
    move-object v4, v3

    .line 84
    .end local v3    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    .restart local v4    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    goto :goto_0

    .line 80
    .end local v4    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    .restart local v3    # "shaderInstance":Lcom/bluestareffects/sdk/core/IShader$User;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create shader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v2}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getTexture(I)Lcom/bluestareffects/sdk/core/Texture;
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/TextureManager;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/bluestareffects/sdk/core/Texture;
    .locals 1
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mTextureManager:Lcom/bluestareffects/sdk/core/TextureManager;

    invoke-virtual {v0, p1, p2}, Lcom/bluestareffects/sdk/core/TextureManager;->getTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->invalidate()V

    .line 97
    return-void
.end method

.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onDrawFrame()V

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->stopFrameAnimator()V

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 119
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v0, p1, p2}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onSurfaceChanged(II)V

    .line 130
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->clearCaches()V

    .line 124
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onSurfaceCreated()V

    .line 125
    return-void
.end method

.method public postOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 4
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 49
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 56
    new-instance v0, Lcom/bluestareffects/sdk/core/GLRenderImpl;

    iget-object v1, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v3, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/bluestareffects/sdk/core/ShaderManager;Lcom/bluestareffects/sdk/core/GLThreadCallBack;)V

    iput-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .line 57
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 63
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 64
    return-void
.end method

.method public setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V
    .locals 1
    .param p1, "root"    # Lcom/bluestareffects/sdk/core/IModule;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/EffectsInstance;->mGLRenderImpl:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 44
    return-void
.end method
