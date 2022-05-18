.class Lcn/nubia/gallery3d/app/SlideshowPage$7;
.super Landroid/os/Handler;
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
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 483
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 484
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 509
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2300(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_3

    .line 510
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2302(Lcn/nubia/gallery3d/app/SlideshowPage;I)I

    .line 514
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2300(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "("

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2300(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2400(Lcn/nubia/gallery3d/app/SlideshowPage;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2400(Lcn/nubia/gallery3d/app/SlideshowPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 486
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 487
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 488
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1302(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 496
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 500
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1900(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    .line 501
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1802(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    .line 502
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2002(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/ImageRender;)Lcn/nubia/videogenerator/codec/ImageRender;

    .line 503
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2102(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/VideoParams;)Lcn/nubia/videogenerator/codec/VideoParams;

    .line 504
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2102(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/VideoParams;)Lcn/nubia/videogenerator/codec/VideoParams;

    .line 505
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2202(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/slidemake/VideoMake;)Lcn/nubia/videogenerator/slidemake/VideoMake;

    .line 506
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$7;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2302(Lcn/nubia/gallery3d/app/SlideshowPage;I)I

    :cond_3
    :goto_1
    return-void
.end method
