.class public Lcn/nubia/gallery3d/glrenderer/RawTexture;
.super Lcn/nubia/gallery3d/glrenderer/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 29
    iput-boolean p3, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mOpaque:Z

    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->setSize(II)V

    return-void
.end method


# virtual methods
.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected prepare(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    .line 48
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->getGLId()Lcn/nubia/gallery3d/glrenderer/GLId;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mId:I

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    .line 50
    invoke-interface {p1, p0, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcn/nubia/gallery3d/glrenderer/BasicTexture;II)V

    .line 51
    invoke-interface {p1, p0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mState:I

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/RawTexture;->mIsFlipped:Z

    return-void
.end method

.method public yield()V
    .locals 0

    return-void
.end method
