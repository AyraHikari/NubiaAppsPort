.class Lcn/nubia/gallery3d/app/CameraPage$3;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "CameraPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 489
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 509
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000ae

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 503
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_5

    .line 504
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->createPermissionDialogForCTA(II)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1600(Lcn/nubia/gallery3d/app/CameraPage;II)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1500(Lcn/nubia/gallery3d/app/CameraPage;I)V

    goto :goto_0

    .line 491
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$3;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1400(Lcn/nubia/gallery3d/app/CameraPage;I)V

    :cond_5
    :goto_0
    return-void
.end method
