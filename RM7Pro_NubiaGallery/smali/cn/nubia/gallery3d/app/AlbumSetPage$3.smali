.class Lcn/nubia/gallery3d/app/AlbumSetPage$3;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 491
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 518
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2300(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 512
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_5

    .line 513
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->createPermissionDialogForCTA(II)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SelectionHintView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 502
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 504
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 505
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1100(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/SelectionHintView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SelectionHintView;->setImage(Landroid/graphics/Bitmap;)V

    .line 506
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2200(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2100(Lcn/nubia/gallery3d/app/AlbumSetPage;II)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$2000(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V

    :cond_5
    :goto_0
    return-void
.end method
