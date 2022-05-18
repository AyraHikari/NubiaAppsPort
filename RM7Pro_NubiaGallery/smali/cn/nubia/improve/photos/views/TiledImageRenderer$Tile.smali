.class Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
.super Lcn/nubia/gallery3d/glrenderer/UploadedTexture;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;III)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 p1, 0x1

    .line 667
    iput p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 670
    iput p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 671
    iput p3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 672
    iput p4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .locals 5

    .line 684
    :try_start_0
    invoke-static {}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$200()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    .line 688
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$400(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    move-result-object v1

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v4, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TiledImageRenderer"

    const-string v2, "fail to decode tile"

    .line 690
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    :goto_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getParentTile()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 4

    .line 733
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    iget v1, v1, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 736
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v0

    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v0, v2

    .line 737
    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    .line 738
    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int/2addr v0, v3

    .line 739
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v2, v0, v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$500(Lcn/nubia/improve/photos/views/TiledImageRenderer;III)Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    .line 722
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 717
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 677
    invoke-static {}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$200()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 697
    iget v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 701
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageWidth:I

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v0, v2

    .line 702
    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    iget v2, v2, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mImageHeight:I

    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v2, v3

    .line 703
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->setSize(II)V

    .line 705
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 706
    iput-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 707
    iput v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileState:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 744
    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    .line 745
    invoke-static {v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    iget-object v2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$300(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$600(Lcn/nubia/improve/photos/views/TiledImageRenderer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    iget v1, v1, Lcn/nubia/improve/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "tile(%s, %s, %s / %s)"

    .line 744
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    .line 726
    iput p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 727
    iput p2, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 728
    iput p3, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 729
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->invalidateContent()V

    return-void
.end method
