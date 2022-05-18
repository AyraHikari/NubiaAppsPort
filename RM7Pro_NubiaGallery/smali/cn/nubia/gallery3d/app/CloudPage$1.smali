.class Lcn/nubia/gallery3d/app/CloudPage$1;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "CloudPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CloudPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 154
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 5

    .line 205
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$600(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    move-result-object v1

    iget v1, v1, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    add-int/2addr v0, v1

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CloudPage;->access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcn/nubia/gallery3d/ui/SlotView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 166
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$000(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/EyePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/EyePosition;->resetPosition()V

    .line 167
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$100(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 168
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result p1

    .line 172
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CloudPage;->access$300(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V

    .line 173
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object p3, p3, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 174
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CloudPage;->access$400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p3

    iget p3, p3, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mHeight:I

    :goto_0
    sub-int p3, p5, p3

    goto :goto_1

    .line 175
    :cond_0
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-boolean p3, p3, Lcn/nubia/gallery3d/app/CloudPage;->mIsTab:Z

    if-eqz p3, :cond_1

    .line 176
    iget-object p3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p3}, Lcn/nubia/gallery3d/app/CloudPage;->access$200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, p5

    .line 178
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$500(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$600(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->menuHeight:I

    sub-int/2addr p3, v0

    .line 182
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTabHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    add-int/lit8 p2, p2, 0x5b

    add-int/lit8 v1, p4, -0x5b

    invoke-virtual {v0, p2, p1, v1, p3}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    goto :goto_2

    .line 186
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p4, p3}, Lcn/nubia/gallery3d/ui/SlotView;->layout(IIII)V

    .line 188
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x7

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x2

    .line 194
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 195
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->mMatrix:[F

    .line 196
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CloudPage$1;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/CloudPage;->access$900(Lcn/nubia/gallery3d/app/CloudPage;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CloudPage$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/CloudPage;->access$1000(Lcn/nubia/gallery3d/app/CloudPage;)F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/CloudPage;->access$1100(Lcn/nubia/gallery3d/app/CloudPage;)F

    move-result v3

    .line 195
    invoke-static {v1, v2, v0, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 198
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 199
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 158
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
