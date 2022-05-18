.class public Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "PhotoFallbackEffect.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;,
        Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field protected mProgress:F

.field protected mSource:Landroid/graphics/RectF;

.field protected mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    const/16 v0, 0x12c

    .line 64
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->setDuration(I)V

    .line 65
    sget-object v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public acceptSlot(I)Z
    .locals 4

    .line 173
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 174
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 175
    iget v3, v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addEntry(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Rect;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;

    invoke-direct {v1, p1, p2, p3}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;-><init>(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Rect;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 6

    .line 81
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->calculate(J)Z

    move-result v0

    .line 82
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 83
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 84
    iget v4, v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget v5, v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p0, p1, v3}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->drawEntry(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected drawEntry(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 92
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v3

    .line 95
    iget-object v4, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v4

    .line 97
    iget-object v5, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 98
    iget-object v6, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 102
    iget v7, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 104
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 110
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    .line 111
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-le v3, v4, :cond_1

    .line 115
    iget-object v13, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    div-float/2addr v7, v11

    sub-float v14, v9, v7

    sub-float v15, v6, v7

    add-float v11, v9, v7

    add-float/2addr v6, v7

    invoke-virtual {v13, v14, v15, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v13, v3, v4

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-int v16, v3, v4

    div-int/lit8 v8, v16, 0x2

    int-to-float v8, v8

    int-to-float v4, v4

    invoke-virtual {v7, v13, v12, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v7, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v12, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move/from16 v17, v8

    iget-object v8, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v7, v12, v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v7, 0x1

    .line 119
    invoke-interface {v1, v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 120
    invoke-interface {v1, v10}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 123
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float v8, v9, v5

    invoke-virtual {v7, v8, v15, v14, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v13, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    iget-object v7, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v10, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v12, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v7, v10, v12}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 128
    iget-object v7, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    add-float/2addr v9, v5

    invoke-virtual {v7, v11, v15, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    iget-object v5, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    int-to-float v3, v3

    move/from16 v6, v17

    invoke-virtual {v5, v6, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget-object v2, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v4, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v2, v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 132
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v8, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    sub-float v11, v9, v5

    sub-float v12, v6, v5

    add-float/2addr v9, v5

    add-float/2addr v5, v6

    invoke-virtual {v8, v11, v12, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v8, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v13, v4, v3

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    int-to-float v14, v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v13, v14, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v8, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v15, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move/from16 v17, v3

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v8, v15, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v3, 0x1

    .line 139
    invoke-interface {v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 140
    invoke-interface {v1, v10}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 143
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v8, v6, v7

    invoke-virtual {v3, v11, v8, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v10, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v12, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v3, v10, v12}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 148
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    add-float/2addr v6, v7

    invoke-virtual {v3, v11, v5, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    int-to-float v4, v4

    move/from16 v5, v17

    invoke-virtual {v3, v8, v5, v14, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    iget-object v2, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    iget-object v4, v0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    invoke-interface {v1, v2, v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 152
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :goto_0
    return-void
.end method

.method public getEntry(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;
    .locals 4

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 74
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 75
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcn/nubia/gallery3d/data/Path;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCalculate(F)V
    .locals 0

    .line 158
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    return-void
.end method

.method public setPositionProvider(Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V
    .locals 4

    .line 162
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 164
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 165
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 166
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget-object v3, v1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-interface {v2, v3}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcn/nubia/gallery3d/data/Path;)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
