.class Lcn/nubia/gallery3d/app/SlideshowPage$10;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->setVideoParams()V
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

    .line 625
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$10;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 2

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onprogress  == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoSlideShowPage"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    .line 635
    :goto_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$10;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 636
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 637
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$10;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
