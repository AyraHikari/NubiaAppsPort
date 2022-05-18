.class Lcn/nubia/gallery3d/app/CloudPage$2;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "CloudPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CloudPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 434
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 431
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2400(Lcn/nubia/gallery3d/app/CloudPage;)V

    goto/16 :goto_0

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->createPermissionDialogForCTA(II)V

    goto/16 :goto_0

    .line 421
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2300(Lcn/nubia/gallery3d/app/CloudPage;)V

    goto/16 :goto_0

    .line 417
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2200(Lcn/nubia/gallery3d/app/CloudPage;)V

    goto/16 :goto_0

    .line 413
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2100(Lcn/nubia/gallery3d/app/CloudPage;II)V

    goto/16 :goto_0

    .line 408
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, p1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$2000(Lcn/nubia/gallery3d/app/CloudPage;Landroid/content/Context;)V

    .line 409
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto/16 :goto_0

    .line 385
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, p1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1402(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager;

    :cond_0
    const-string p1, "CloudPage"

    const-string v0, "cloudpage oncreate receive MSG_GET_CLOUD_MANAGER"

    .line 388
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "mCloudManager == null "

    .line 390
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/CloudPage;->access$1500(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    .line 394
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1500(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/CloudPage;->access$1600(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/improve/xcloud/CloudManager;->setListListener(Lcn/nubia/improve/xcloud/CloudManager$ListListener;)V

    .line 396
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {v2, v3, v1}, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V

    invoke-virtual {v0, v2}, Lcn/nubia/improve/xcloud/CloudManager;->setLoginListener(Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;)V

    .line 400
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$1800(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "movePhotos"

    .line 401
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/improve/xcloud/CloudManager;->movePhotos(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1900(Lcn/nubia/gallery3d/app/CloudPage;)V

    goto :goto_0

    .line 381
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$2;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1300(Lcn/nubia/gallery3d/app/CloudPage;I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
