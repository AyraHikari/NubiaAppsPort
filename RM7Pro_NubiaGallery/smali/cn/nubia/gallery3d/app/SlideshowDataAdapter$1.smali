.class Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 239
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1400(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    move-result-object p1

    return-object p1
.end method
