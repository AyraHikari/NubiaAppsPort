.class public Lcn/nubia/gallery3d/glrenderer/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mColor:I

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 31
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 36
    iget v4, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    .line 41
    iget v5, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 56
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 46
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mColor:I

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0

    .line 50
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 51
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method
