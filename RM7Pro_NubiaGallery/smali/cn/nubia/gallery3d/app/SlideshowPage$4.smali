.class Lcn/nubia/gallery3d/app/SlideshowPage$4;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->showSpeedChooseDialog()V
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

    .line 293
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "SlideshowPage"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p2, "LowSpeed....."

    .line 299
    invoke-static {v0, p2}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p2, v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1202(Lcn/nubia/gallery3d/app/SlideshowPage;I)I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const-string p2, "HighSpeed....."

    .line 302
    invoke-static {v0, p2}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1202(Lcn/nubia/gallery3d/app/SlideshowPage;I)I

    .line 306
    :cond_1
    :goto_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p2

    if-nez p2, :cond_2

    .line 307
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v0, p2, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100225

    const/16 v2, 0x64

    invoke-static {p2, v0, v1, v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1400(Lcn/nubia/gallery3d/app/SlideshowPage;Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1302(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 308
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1300(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 309
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$1;)V

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1502(Lcn/nubia/gallery3d/app/SlideshowPage;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 310
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$4;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1500(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 312
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
