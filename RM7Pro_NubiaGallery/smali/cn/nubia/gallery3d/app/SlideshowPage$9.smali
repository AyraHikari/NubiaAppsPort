.class Lcn/nubia/gallery3d/app/SlideshowPage$9;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;


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

    .line 615
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$9;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$9;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 620
    iput v1, v0, Landroid/os/Message;->what:I

    .line 621
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$9;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/SlideshowPage;->mSlideShowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
