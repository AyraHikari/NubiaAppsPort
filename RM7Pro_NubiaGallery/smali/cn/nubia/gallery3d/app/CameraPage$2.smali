.class Lcn/nubia/gallery3d/app/CameraPage$2;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "CameraPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CameraPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 182
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcn/nubia/gallery3d/ui/SlotView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 197
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result p1

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$402(Lcn/nubia/gallery3d/app/CameraPage;I)I

    .line 201
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$500(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$600(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/RelativePosition;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcn/nubia/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 204
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CameraPage;->access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object p3, p3, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    .line 205
    invoke-static {p3}, Lcn/nubia/gallery3d/app/CameraPage;->access$800(Lcn/nubia/gallery3d/app/CameraPage;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 206
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CameraPage;->access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p3

    iget p3, p3, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mHeight:I

    goto :goto_0

    .line 207
    :cond_1
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-boolean p3, p3, Lcn/nubia/gallery3d/app/CameraPage;->mIsTab:Z

    if-eqz p3, :cond_2

    .line 208
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CameraPage;->access$300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result p3

    :goto_0
    sub-int p3, p5, p3

    goto :goto_1

    :cond_2
    move p3, p5

    .line 210
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    add-int/lit8 p2, p2, 0x5b

    add-int/lit8 v1, p4, -0x5b

    invoke-virtual {v0, p2, p1, v1, p3}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p4, p3}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    .line 215
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1000(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$1000(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1000(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$1000(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 219
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result p1

    .line 220
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    iget v0, v0, Lcn/nubia/gallery3d/ui/ScrollBarView;->SCROLLBARWIDTH:I

    sub-int v0, p4, v0

    invoke-virtual {p2, v0, p1, p4, p3}, Lcn/nubia/gallery3d/ui/ScrollBarView;->layout(IIII)V

    .line 223
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->mMatrix:[F

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    div-int/lit8 p5, p5, 0x2

    int-to-float p3, p5

    iget-object p4, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    .line 224
    invoke-static {p4}, Lcn/nubia/gallery3d/app/CameraPage;->access$1200(Lcn/nubia/gallery3d/app/CameraPage;)F

    move-result p4

    neg-float p4, p4

    .line 223
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 229
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 230
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 231
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1300(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$500(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1302(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    .line 237
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$2;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$500(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CameraPage$2;->invalidate()V

    .line 244
    :cond_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 186
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
