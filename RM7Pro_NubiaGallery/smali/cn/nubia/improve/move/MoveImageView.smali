.class public Lcn/nubia/improve/move/MoveImageView;
.super Landroid/widget/ImageView;
.source "MoveImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveImageView"


# instance fields
.field private albumPos:I

.field private mScaleFactor:F

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    .line 19
    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->albumPos:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->mScaleFactor:F

    const/16 p1, 0x8

    .line 25
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    return-void
.end method


# virtual methods
.method public getAlbumPos()I
    .locals 1

    .line 33
    iget v0, p0, Lcn/nubia/improve/move/MoveImageView;->albumPos:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 42
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 43
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 44
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    sub-int/2addr v1, v3

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 45
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcn/nubia/improve/move/MoveImageView;->padding:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    .line 48
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    iget v0, p0, Lcn/nubia/improve/move/MoveImageView;->mScaleFactor:F

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAlbumPos(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->albumPos:I

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/improve/move/MoveImageView;->mScaleFactor:F

    .line 69
    invoke-virtual {p0}, Lcn/nubia/improve/move/MoveImageView;->invalidate()V

    return-void
.end method
