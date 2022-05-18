.class Lcn/nubia/gallery3d/app/AlbumPage$2;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 229
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 5

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 310
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 312
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcn/nubia/gallery3d/ui/SlotView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 238
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object p1

    sub-int v0, p4, p2

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0, p5}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 240
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result p1

    .line 241
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$402(Lcn/nubia/gallery3d/app/AlbumPage;I)I

    .line 244
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V

    .line 246
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/RelativePosition;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lcn/nubia/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 248
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$700(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 249
    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$800(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$700(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object v1

    iget v1, v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mHeight:I

    sub-int v1, p5, v1

    goto :goto_0

    :cond_0
    move v1, p5

    .line 253
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/RecycledHintView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 256
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/RecycledHintView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 257
    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 256
    invoke-virtual {v3, p3, v4, p4, v5}, Lcn/nubia/gallery3d/ui/RecycledHintView;->layout(IIII)V

    .line 258
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 262
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/FaceAlbumView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 263
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 265
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/FaceAlbumView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 266
    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 265
    invoke-virtual {v3, p3, v4, p4, v5}, Lcn/nubia/gallery3d/ui/FaceAlbumView;->layout(IIII)V

    .line 267
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 269
    invoke-static {v5}, Lcn/nubia/gallery3d/app/AlbumPage;->access$300(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 268
    invoke-virtual {v3, p3, v4, p4, v5}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    :cond_2
    add-int/2addr p1, v2

    .line 273
    :cond_3
    iget-object p3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p3, p3, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 274
    iget-object p3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p3

    add-int/lit8 p2, p2, 0x5b

    add-int/lit8 p4, v0, -0x5b

    invoke-virtual {p3, p2, p1, p4, v1}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    goto :goto_1

    .line 276
    :cond_4
    iget-object p3, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p3

    invoke-virtual {p3, p2, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    .line 278
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v0, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->mMatrix:[F

    div-int/lit8 v0, v0, 0x2

    int-to-float p2, v0

    div-int/lit8 p5, p5, 0x2

    int-to-float p3, p5

    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 283
    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1400(Lcn/nubia/gallery3d/app/AlbumPage;)F

    move-result p4

    neg-float p4, p4

    .line 282
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 288
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 289
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 290
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1502(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$2;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$500(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPage$2;->invalidate()V

    .line 303
    :cond_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 233
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
