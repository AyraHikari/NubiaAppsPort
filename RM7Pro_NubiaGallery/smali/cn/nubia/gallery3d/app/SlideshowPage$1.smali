.class Lcn/nubia/gallery3d/app/SlideshowPage$1;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 169
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/SlideshowView;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/gallery3d/ui/SlideshowView;->layout(IIII)V

    .line 175
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->mMatrix:[F

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    div-int/lit8 p5, p5, 0x2

    int-to-float p3, p5

    const/high16 p4, 0x43fa0000    # 500.0f

    .line 176
    invoke-static {p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    .line 175
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 182
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$100(Lcn/nubia/gallery3d/app/SlideshowPage;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z

    .line 184
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFringerFullBlackSet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBarNotHideStatueBar()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBar()V

    .line 188
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->hide()V

    goto :goto_1

    .line 190
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$102(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z

    .line 191
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBarHideNav()V

    .line 192
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->show()V

    :cond_2
    :goto_1
    return v0
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 200
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 202
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 204
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 209
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
