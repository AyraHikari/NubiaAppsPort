.class Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mDataLoadingState:I

.field private mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsGif:Z

.field private mIsMulitShoot:Z

.field private mIsPanorama:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

.field private mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

.field private mSourceType:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;I)V
    .locals 1

    .line 1177
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1171
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1172
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    .line 1175
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDataLoadingState:I

    .line 1178
    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    return-void
.end method

.method private isDataLoading()Z
    .locals 2

    .line 1336
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDataLoadingState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isScreenNailAnimating()Z
    .locals 2

    .line 1286
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    instance-of v1, v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 1287
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSize()V
    .locals 4

    .line 1302
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1304
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2400(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 1310
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    .line 1311
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v0

    iput v0, v1, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 1312
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_1

    .line 1316
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    invoke-interface {v0, v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V

    .line 1319
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 1320
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v1, v1, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    .line 1321
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 1322
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v0

    iput v0, v2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 1211
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-nez v0, :cond_1

    .line 1214
    iget p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1100(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    :cond_0
    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    .line 1220
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1221
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_2

    goto/16 :goto_1

    .line 1228
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v0

    .line 1231
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1232
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1234
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 1235
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    const/4 v5, 0x3

    .line 1236
    invoke-interface {p1, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    int-to-float v2, v2

    int-to-float v4, v4

    .line 1237
    invoke-interface {p1, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    if-eqz v0, :cond_4

    .line 1248
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1249
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4700(Lcn/nubia/gallery3d/ui/PhotoView;F)F

    move-result v0

    .line 1250
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 1252
    :cond_4
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v0, :cond_5

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 1253
    invoke-interface {p1, v0, v1, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1255
    :cond_5
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v0

    .line 1256
    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2500(III)I

    move-result v1

    .line 1257
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    neg-int v2, v0

    div-int/lit8 v5, v2, 0x2

    neg-int v2, v1

    div-int/lit8 v6, v2, 0x2

    move-object v4, p1

    move v7, v0

    move v8, v1

    invoke-interface/range {v3 .. v8}, Lcn/nubia/gallery3d/ui/ScreenNail;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1258
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1259
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    .line 1261
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1262
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5000(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsGif:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1263
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1, p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$5100(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V

    .line 1266
    :cond_8
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 1268
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1269
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1270
    :cond_9
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsMulitShoot:Z

    if-eqz v1, :cond_a

    .line 1271
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1272
    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2900(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1271
    invoke-interface {v1, p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 1275
    :cond_a
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1276
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v1, :cond_b

    .line 1277
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3400(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 1278
    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1900(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/PhotoView;->access$3500(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1277
    invoke-virtual {v1, p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 1282
    :cond_b
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1, p1, p2, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$4000(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/data/MediaItem;)V

    return-void

    .line 1222
    :cond_c
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz p1, :cond_d

    .line 1223
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/ScreenNail;->noDraw()V

    :cond_d
    return-void
.end method

.method public forceSize()V
    .locals 3

    .line 1297
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1298
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/PositionController;->forceImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcn/nubia/gallery3d/ui/PhotoView$Size;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcn/nubia/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .line 1327
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 1332
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    .line 1185
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 1186
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isGif(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsGif:Z

    .line 1187
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isMultiShoot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsMulitShoot:Z

    .line 1188
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 1189
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1190
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mSourceType:I

    .line 1191
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getDataLoadingState(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDataLoadingState:I

    .line 1192
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    .line 1193
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1194
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocalVideo;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalVideo;

    .line 1196
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalVideo;->getDurationInSec()I

    move-result v0

    .line 1195
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1900(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->recycle()V

    const/4 v0, 0x0

    .line 1200
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mDurationText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_1
    :goto_0
    return-void
.end method

.method public setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    return-void
.end method
