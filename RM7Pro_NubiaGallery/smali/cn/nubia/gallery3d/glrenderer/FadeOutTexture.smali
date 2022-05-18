.class public Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;
.super Lcn/nubia/gallery3d/glrenderer/FadeTexture;
.source "FadeOutTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeOutTexture"


# instance fields
.field private final mTexture:Lcn/nubia/gallery3d/glrenderer/BasicTexture;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V
    .locals 3

    .line 28
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 29
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 7

    .line 34
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 35
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 37
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 38
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_0
    return-void
.end method
