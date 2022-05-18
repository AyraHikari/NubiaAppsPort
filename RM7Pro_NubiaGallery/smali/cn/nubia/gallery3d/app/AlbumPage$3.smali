.class Lcn/nubia/gallery3d/app/AlbumPage$3;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 629
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2200(Lcn/nubia/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 621
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    .line 622
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2102(Lcn/nubia/gallery3d/app/AlbumPage;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->createPermissionDialogForCTA(II)V

    goto :goto_0

    .line 611
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000ae

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 607
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1800(Lcn/nubia/gallery3d/app/AlbumPage;II)V

    goto :goto_0

    .line 603
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1700(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    goto :goto_0

    .line 599
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$3;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1600(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
