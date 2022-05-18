.class Lcn/nubia/gallery3d/app/SlideshowPage$11;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->loadNextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$11;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;)V"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$11;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3402(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$Slide;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    .line 837
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$11;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3500(Lcn/nubia/gallery3d/app/SlideshowPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
