.class Lcn/nubia/gallery3d/app/AlbumSetPage$1;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 185
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 5

    .line 244
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    move-result-object v1

    iget v1, v1, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    add-int/2addr v0, v1

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcn/nubia/gallery3d/ui/SlotView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int p1, p4, p2

    sub-int p3, p5, p3

    .line 196
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$000(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/EyePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/EyePosition;->resetPosition()V

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1, p3}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    .line 199
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2, v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$302(Lcn/nubia/gallery3d/app/AlbumSetPage;I)I

    .line 202
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$400(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V

    .line 204
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$500(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    .line 205
    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$600(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object p5, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p5}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$500(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p5

    invoke-virtual {p5}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p5

    iget p5, p5, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mHeight:I

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-boolean v2, v2, Lcn/nubia/gallery3d/app/AlbumSetPage;->mIsTab:Z

    if-eqz v2, :cond_1

    .line 208
    iget-object p5, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p5}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p5

    invoke-virtual {p5}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result p5

    :goto_0
    sub-int p5, p3, p5

    goto :goto_1

    .line 209
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$700(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/HideFaceHintView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$900(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v2, p3, v2

    .line 213
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$800(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/HideFaceHintView;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p4, p5}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->layout(IIII)V

    move p5, v2

    goto :goto_1

    :cond_2
    move p5, p3

    .line 215
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object p5, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p5}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$900(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f07021c

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 218
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SelectionHintView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    .line 219
    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v3

    add-int/2addr v3, p5

    .line 218
    invoke-virtual {v1, p2, v2, p4, v3}, Lcn/nubia/gallery3d/ui/SelectionHintView;->layout(IIII)V

    add-int/2addr v0, p5

    move p5, p3

    .line 223
    :cond_3
    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$900(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/content/Context;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    invoke-static {p4}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$900(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 224
    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p4

    add-int/lit8 p2, p2, 0x5b

    add-int/lit8 v1, p1, -0x5b

    invoke-virtual {p4, p2, v0, v1, p5}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    goto :goto_2

    .line 226
    :cond_4
    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p4

    invoke-virtual {p4, p2, v0, p1, p5}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    .line 228
    :goto_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object p4

    const/4 p5, 0x4

    invoke-virtual {p4, p5, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object p4

    const/4 p5, 0x2

    invoke-virtual {p4, p5, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x2

    .line 234
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 235
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1400(Lcn/nubia/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1500(Lcn/nubia/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1600(Lcn/nubia/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 237
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 238
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 189
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
