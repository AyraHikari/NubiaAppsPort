.class public Lcn/nubia/gallery3d/glrenderer/ExtTexture;
.super Lcn/nubia/gallery3d/glrenderer/BasicTexture;
.source "ExtTexture.java"


# instance fields
.field private mTarget:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->mTarget:I

    .line 28
    invoke-virtual {p0, p2, p3}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    return-void
.end method

.method private uploadToCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 32
    invoke-interface {p1, p0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->mState:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .line 48
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBind(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->uploadToCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
