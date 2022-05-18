.class Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;
.super Lcn/nubia/gallery3d/glrenderer/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/glrenderer/TiledTexture$1;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v0, p0

    .line 134
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 135
    iput-object v2, v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 138
    iget v2, v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v2, v2, 0x1

    .line 139
    iget v3, v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v3, v3, 0x1

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 142
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v6

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$100()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-lez v2, :cond_0

    .line 146
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v10

    add-int/lit8 v2, v2, -0x1

    int-to-float v13, v2

    const/4 v12, 0x0

    const/high16 v14, 0x43800000    # 256.0f

    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v15

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    if-lez v3, :cond_1

    .line 147
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v16

    const/16 v17, 0x0

    add-int/lit8 v3, v3, -0x1

    int-to-float v1, v3

    const/high16 v19, 0x43800000    # 256.0f

    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v21

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/16 v1, 0xfe

    if-ge v4, v1, :cond_2

    .line 148
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v6

    int-to-float v9, v4

    const/4 v8, 0x0

    const/high16 v10, 0x43800000    # 256.0f

    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v11

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    if-ge v5, v1, :cond_3

    .line 149
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v12

    const/4 v13, 0x0

    int-to-float v1, v5

    const/high16 v15, 0x43800000    # 256.0f

    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v17

    move v14, v1

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    :cond_3
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$400()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public setSize(II)V
    .locals 0

    .line 122
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    .line 123
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    add-int/lit8 p1, p1, 0x2

    .line 124
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->mWidth:I

    add-int/lit8 p2, p2, 0x2

    .line 125
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->mHeight:I

    const/16 p1, 0x100

    .line 126
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->mTextureWidth:I

    .line 127
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Tile;->mTextureHeight:I

    return-void
.end method
