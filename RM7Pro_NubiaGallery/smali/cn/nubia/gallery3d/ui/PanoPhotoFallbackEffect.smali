.class public Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;
.super Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
.source "PanoPhotoFallbackEffect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawEntry(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 9
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v3

    .line 12
    iget-object v4, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v4

    .line 14
    iget-object v5, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 15
    iget-object v6, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 18
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 26
    iget v9, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mProgress:F

    .line 28
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    mul-float v12, v10, v9

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 31
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    add-float/2addr v13, v15

    .line 32
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v14

    add-float/2addr v15, v5

    int-to-float v5, v8

    mul-float/2addr v5, v12

    mul-float/2addr v11, v12

    .line 37
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    float-to-int v6, v6

    mul-int v8, v6, v3

    .line 38
    div-int/2addr v8, v7

    if-le v8, v4, :cond_1

    move v8, v4

    :cond_1
    int-to-float v6, v6

    mul-float/2addr v6, v12

    float-to-int v6, v6

    .line 43
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v11, v9

    sub-float v10, v13, v11

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v12, v15, v6

    add-float/2addr v13, v11

    add-float/2addr v6, v15

    invoke-virtual {v7, v10, v12, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    div-int/lit8 v11, v4, 0x2

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v11, v8

    int-to-float v9, v9

    int-to-float v3, v3

    add-int/2addr v11, v8

    int-to-float v8, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v9, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 45
    iget-object v7, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v11, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move/from16 v16, v8

    iget-object v8, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v7, v11, v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v7, 0x1

    .line 47
    invoke-interface {v1, v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 48
    invoke-interface {v1, v14}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 51
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float v8, v15, v5

    invoke-virtual {v7, v10, v8, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    iget-object v7, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v9, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v11, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v7, v9, v11}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 56
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    add-float/2addr v15, v5

    invoke-virtual {v7, v10, v6, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    iget-object v5, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    int-to-float v4, v4

    move/from16 v6, v16

    invoke-virtual {v5, v8, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    iget-object v2, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v4, v0, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v2, v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 60
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method
