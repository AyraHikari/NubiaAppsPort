.class Lcom/bluestareffects/sdk/core/GLRenderImpl;
.super Ljava/lang/Object;
.source "GLRenderImpl.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final FRAME:I = 0x1e

.field public static final LOCAL_TAG:Ljava/lang/String; = "RenderImpl"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

.field private final mContext:Landroid/content/Context;

.field private mCurrTime:J

.field private mFrameNumber:J

.field private final mHost:Landroid/opengl/GLSurfaceView;

.field private mInvalidate:Z

.field private mIsStartFrameAnim:Z

.field private mRootModule:Lcom/bluestareffects/sdk/core/IModule;

.field private final mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

.field private mSurfaceCreated:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/bluestareffects/sdk/core/ShaderManager;Lcom/bluestareffects/sdk/core/GLThreadCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/opengl/GLSurfaceView;
    .param p3, "manager"    # Lcom/bluestareffects/sdk/core/ShaderManager;
    .param p4, "callback"    # Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    .line 31
    iput-object p3, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    .line 32
    iput-object p4, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    .line 33
    iput-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mInvalidate:Z

    .line 34
    iput-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mSurfaceCreated:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/bluestareffects/sdk/core/GLRenderImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCurrTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/bluestareffects/sdk/core/GLRenderImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCurrTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mFrameNumber:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/bluestareffects/sdk/core/GLRenderImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mFrameNumber:J

    return-wide p1
.end method

.method static synthetic access$208(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J
    .locals 4
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mFrameNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mFrameNumber:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bluestareffects/sdk/core/GLRenderImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mIsStartFrameAnim:Z

    return p1
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/core/ShaderManager;->clearFrameData()V

    .line 170
    return-void
.end method

.method private draw()V
    .locals 8

    .prologue
    .line 151
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mRootModule:Lcom/bluestareffects/sdk/core/IModule;

    if-nez v4, :cond_0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    .local v0, "start":J
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mRootModule:Lcom/bluestareffects/sdk/core/IModule;

    invoke-interface {v4}, Lcom/bluestareffects/sdk/core/IModule;->onUpload()V

    .line 157
    sget-object v4, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/bluestareffects/sdk/core/TimerCount;->setUploadModule(J)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    .local v2, "start2":J
    iget-object v4, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mShaderManager:Lcom/bluestareffects/sdk/core/ShaderManager;

    invoke-virtual {v4}, Lcom/bluestareffects/sdk/core/ShaderManager;->executeDrawCalls()V

    .line 163
    sget-object v4, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Lcom/bluestareffects/sdk/core/TimerCount;->setExecuteDrawCalls(J)V

    .line 165
    invoke-direct {p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->clear()V

    goto :goto_0
.end method

.method private startFrameAnimator()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;-><init>(Lcom/bluestareffects/sdk/core/GLRenderImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mInvalidate:Z

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 122
    const/4 v2, 0x1

    const-string v3, "onDrawFrame"

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/util/BSLog;->d(ILjava/lang/String;)I

    .line 125
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 127
    sget-object v2, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-virtual {v2}, Lcom/bluestareffects/sdk/core/TimerCount;->clear()V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "start":J
    iget-object v2, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v2}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onDrawFrame()V

    .line 132
    sget-object v2, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/bluestareffects/sdk/core/TimerCount;->setGLCallback(J)V

    .line 135
    invoke-direct {p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->draw()V

    .line 138
    sget-object v2, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/bluestareffects/sdk/core/TimerCount;->setFrame(J)V

    .line 139
    sget-object v2, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-virtual {v2}, Lcom/bluestareffects/sdk/core/TimerCount;->dumpFrame()V

    .line 140
    sget-object v2, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-virtual {v2}, Lcom/bluestareffects/sdk/core/TimerCount;->clear()V

    .line 141
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x1

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->i(ILjava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v0, p2, p3}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onSurfaceChanged(II)V

    .line 116
    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 117
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    const-string v0, "onSurfaceCreated"

    invoke-static {v1, v0}, Lcom/bluestareffects/sdk/util/BSLog;->i(ILjava/lang/String;)I

    .line 94
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mSurfaceCreated:Z

    .line 95
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mCallback:Lcom/bluestareffects/sdk/core/GLThreadCallBack;

    invoke-interface {v0}, Lcom/bluestareffects/sdk/core/GLThreadCallBack;->onSurfaceCreated()V

    .line 97
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 98
    const/16 v0, 0x303

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 101
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mInvalidate:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mInvalidate:Z

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mIsStartFrameAnim:Z

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->startFrameAnimator()V

    .line 107
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mIsStartFrameAnim:Z

    .line 109
    :cond_1
    return-void
.end method

.method setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V
    .locals 0
    .param p1, "root"    # Lcom/bluestareffects/sdk/core/IModule;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mRootModule:Lcom/bluestareffects/sdk/core/IModule;

    .line 39
    return-void
.end method

.method stopFrameAnimator()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl;->mHost:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;

    invoke-direct {v1, p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;-><init>(Lcom/bluestareffects/sdk/core/GLRenderImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
