.class public Lcn/nubia/gallery3d/glrenderer/FadeInTexture;
.super Lcn/nubia/gallery3d/glrenderer/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/Texture;


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeInTexture"


# instance fields
.field private final mColor:I

.field private final mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;


# direct methods
.method public constructor <init>(ILcn/nubia/gallery3d/glrenderer/TiledTexture;)V
    .locals 3

    .line 29
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->mColor:I

    .line 31
    iput-object p2, p0, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 12

    move-object v0, p0

    .line 36
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v2, v0, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    iget v4, v0, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->mColor:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->getRatio()F

    move-result v5

    move-object v3, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v6, v0, Lcn/nubia/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method
