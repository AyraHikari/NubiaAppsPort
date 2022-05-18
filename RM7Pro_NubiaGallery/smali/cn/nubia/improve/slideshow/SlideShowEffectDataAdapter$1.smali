.class Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideShowEffectDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 97
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->access$200(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
