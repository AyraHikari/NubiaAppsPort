.class Lcn/nubia/gallery3d/app/PhotoPage$1;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 264
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .line 273
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result p1

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0, p5}, Lcn/nubia/gallery3d/app/PhotoPage;->access$002(Lcn/nubia/gallery3d/app/PhotoPage;I)I

    .line 276
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0, p4}, Lcn/nubia/gallery3d/app/PhotoPage;->access$102(Lcn/nubia/gallery3d/app/PhotoPage;I)I

    .line 277
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$002(Lcn/nubia/gallery3d/app/PhotoPage;I)I

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$102(Lcn/nubia/gallery3d/app/PhotoPage;I)I

    .line 285
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 286
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    iget-object p4, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/PhotoPage;->access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p4

    if-le p1, p4, :cond_2

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    :goto_1
    move p5, p1

    .line 287
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    iget-object p4, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p4}, Lcn/nubia/gallery3d/app/PhotoPage;->access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p4

    if-ge p1, p4, :cond_3

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$000(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$100(Lcn/nubia/gallery3d/app/PhotoPage;)I

    move-result p1

    :goto_2
    move p4, p1

    .line 290
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/StaticBackground;

    move-result-object p1

    sub-int v0, p4, p2

    sub-int p3, p5, p3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p3}, Lcn/nubia/gallery3d/ui/StaticBackground;->layout(IIII)V

    .line 291
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0, p3}, Lcn/nubia/gallery3d/ui/PhotoView;->layout(IIII)V

    goto :goto_3

    .line 294
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v0, p3}, Lcn/nubia/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 296
    :goto_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$400(Lcn/nubia/gallery3d/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/DetailsHelper;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 297
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/DetailsHelper;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$600(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBarHeight()I

    move-result v1

    invoke-virtual {p1, p2, v1, p4, p5}, Lcn/nubia/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 299
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 300
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    const/16 p4, 0x9

    invoke-virtual {p2, p4, v0, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->mMatrix:[F

    div-int/lit8 v0, v0, 0x2

    int-to-float p2, v0

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const/high16 p4, -0x3c060000    # -500.0f

    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 310
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 311
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 312
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 313
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 268
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
