.class Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private mDataLoadingState:I

.field private mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsGif:Z

.field private mIsHeic:Z

.field private mIsMulitShoot:Z

.field private mIsPanorama:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

.field private mSourceType:I

.field private mWasCameraCenter:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 1

    .line 858
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 867
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 868
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    .line 873
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDataLoadingState:I

    return-void
.end method

.method private drawTileView(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 1040
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageScale()F

    move-result v6

    .line 1041
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    .line 1042
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    .line 1043
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4200(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    :cond_0
    move v5, v0

    .line 1046
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 1047
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    const/4 v1, 0x3

    .line 1050
    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 1051
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController;->getFilmRatio()F

    .line 1054
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1056
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, v5, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1057
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1090
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 1091
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4700(Lcn/nubia/gallery3d/ui/PhotoView;F)F

    move-result v1

    .line 1092
    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, v0

    move v3, v7

    .line 1097
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1099
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1101
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->renderChild(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/GLView;)V

    .line 1105
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1106
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4800(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1107
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4900(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v7, v1

    float-to-int v2, v7

    int-to-float v2, v2

    .line 1109
    invoke-interface {p1, v0, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1110
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v8, p2

    add-float/2addr v8, v1

    float-to-int p2, v8

    .line 1111
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5000(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsGif:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5100(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V

    .line 1119
    :cond_5
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private isDataLoading()Z
    .locals 2

    .line 1157
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDataLoadingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v0

    .line 1126
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float p3, p3

    div-float/2addr p3, v3

    sub-float/2addr p3, p1

    div-float/2addr p3, p5

    add-float/2addr v2, p3

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p3, v2

    int-to-float v2, v1

    div-float/2addr v2, v3

    int-to-float p4, p4

    div-float/2addr p4, v3

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    add-float/2addr v2, p4

    add-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p3

    sub-int/2addr v1, p1

    .line 1133
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    if-eqz p2, :cond_3

    const/16 p4, 0x5a

    if-eq p2, p4, :cond_2

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_0

    move p1, p3

    move p3, v1

    goto :goto_0

    .line 1151
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move p3, v0

    move p1, v1

    goto :goto_0

    :cond_2
    move p3, p1

    move p1, v0

    .line 1153
    :cond_3
    :goto_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object p2

    iget p4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-virtual {p2, p3, p1, p5, p4}, Lcn/nubia/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 936
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 938
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2400(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    .line 944
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v0

    iget v0, v0, Lcn/nubia/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 945
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v1

    iget v1, v1, Lcn/nubia/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 946
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 947
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v0

    iput v0, v2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 952
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 953
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    .line 957
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsMulitShoot:Z

    if-eqz v2, :cond_2

    .line 959
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 960
    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2900(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v5

    invoke-interface {v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 959
    invoke-interface {v2, p1, v3, v4}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 964
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 965
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 966
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    .line 967
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    .line 968
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    invoke-static {}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3200()I

    move-result v2

    sub-int/2addr v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3200()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v3, p1, v4, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 970
    :cond_3
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3200()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 971
    invoke-static {}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3200()I

    move-result v5

    add-int/2addr v4, v5

    .line 970
    invoke-virtual {v2, p1, v3, v4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 973
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v2, :cond_6

    .line 974
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3400(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 975
    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1900(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3500(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 974
    invoke-virtual {v2, p1, v3, v4}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_1

    .line 977
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 978
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsMulitShoot:Z

    if-eqz v2, :cond_5

    .line 979
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v6, 0x0

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3700(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3800(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;ILcn/nubia/gallery3d/glrenderer/Texture;Lcn/nubia/gallery3d/glrenderer/Texture;)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x1e

    .line 980
    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSourceType:I

    if-ne v2, v3, :cond_6

    .line 981
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v7, 0x0

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3800(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;ILcn/nubia/gallery3d/glrenderer/Texture;Lcn/nubia/gallery3d/glrenderer/Texture;)V

    .line 985
    :cond_6
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2, p1, p2, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4000(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/data/MediaItem;)V

    .line 994
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    if-eqz p1, :cond_7

    return-void

    .line 997
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->isCenter()Z

    move-result p1

    .line 998
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 1000
    :goto_2
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    if-eqz v2, :cond_9

    if-eqz p2, :cond_9

    if-nez p1, :cond_9

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    .line 1003
    :cond_9
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    if-nez p1, :cond_a

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1007
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->endScale()V

    .line 1009
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4100(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 1012
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1014
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    .line 1017
    :cond_b
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    return-void
.end method

.method public forceSize()V
    .locals 3

    .line 931
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 932
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/ui/PositionController;->forceImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcn/nubia/gallery3d/ui/PhotoView$Size;
    .locals 1

    .line 926
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .line 1027
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    return v0
.end method

.method public reload()V
    .locals 5

    .line 878
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 880
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 881
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 882
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 883
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isGif(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsGif:Z

    .line 884
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isMultiShoot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsMulitShoot:Z

    .line 885
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isHEIC(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsHeic:Z

    .line 886
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 887
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 888
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSourceType:I

    .line 889
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getDataLoadingState(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDataLoadingState:I

    .line 890
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    .line 891
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 892
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocalVideo;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalVideo;

    .line 894
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalVideo;->getDurationInSec()I

    move-result v0

    .line 893
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 895
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1900(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    goto :goto_0

    .line 896
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->recycle()V

    .line 898
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 901
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mIsMulitShoot:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/IMultiShoot;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/IMultiShoot;

    invoke-interface {v0}, Lcn/nubia/gallery3d/data/IMultiShoot;->getCount()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 907
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2000(Lcn/nubia/gallery3d/ui/PhotoView;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 908
    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2100(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v2

    .line 907
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    goto :goto_2

    :cond_3
    const/16 v0, 0x1e

    .line 909
    iget v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSourceType:I

    if-ne v0, v4, :cond_4

    .line 910
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2200(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 911
    invoke-static {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2100(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v2

    .line 910
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    goto :goto_2

    .line 912
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_5

    .line 913
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->recycle()V

    .line 914
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_5
    :goto_2
    const/16 v0, 0x1b

    .line 917
    iget v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->mSourceType:I

    if-ne v0, v2, :cond_6

    .line 918
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/TileImageView;->setRenderTilesSynchronously(Z)V

    goto :goto_3

    .line 920
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->setRenderTilesSynchronously(Z)V

    :goto_3
    return-void
.end method

.method public setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    return-void
.end method
