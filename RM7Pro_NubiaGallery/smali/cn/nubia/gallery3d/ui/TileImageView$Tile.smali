.class Lcn/nubia/gallery3d/ui/TileImageView$Tile;
.super Lcn/nubia/gallery3d/glrenderer/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView;III)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 p1, 0x1

    .line 692
    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 695
    iput p2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 696
    iput p3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 697
    iput p4, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .locals 5

    .line 712
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->access$500(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileSource;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 713
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v4

    .line 712
    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TileImageView"

    const-string v2, "fail to decode tile"

    .line 715
    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getParentTile()Lcn/nubia/gallery3d/ui/TileImageView$Tile;
    .locals 4

    .line 758
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    iget v1, v1, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 759
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v0, v2

    .line 760
    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    .line 761
    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int/2addr v0, v3

    .line 762
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v2, v0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->access$600(Lcn/nubia/gallery3d/ui/TileImageView;III)Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    .line 747
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 742
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 705
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 722
    iget v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 726
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    iget v0, v0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v0, v2

    .line 727
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    iget v2, v2, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v2, v3

    .line 728
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->setSize(II)V

    .line 730
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 731
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 732
    iput v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 767
    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 768
    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-static {}, Lcn/nubia/gallery3d/ui/TileImageView;->access$400()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/TileImageView;->access$700(Lcn/nubia/gallery3d/ui/TileImageView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    iget v1, v1, Lcn/nubia/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "tile(%s, %s, %s / %s)"

    .line 767
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    .line 751
    iput p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 752
    iput p2, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 753
    iput p3, p0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 754
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->invalidateContent()V

    return-void
.end method
