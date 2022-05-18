.class Lcn/nubia/gallery3d/app/PhotoPage$2;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 440
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1300(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 436
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1200(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 430
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->createPermissionDialogForCTA(II)V

    goto :goto_0

    .line 425
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f1001d7

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 417
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1100(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 421
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 413
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1000(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 406
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/OrientationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 402
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/OrientationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 398
    :pswitch_9
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$800(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->HideProgressBar()V

    .line 445
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->UpdateProcessExif(Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$2;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_1
    :goto_0
    :pswitch_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
