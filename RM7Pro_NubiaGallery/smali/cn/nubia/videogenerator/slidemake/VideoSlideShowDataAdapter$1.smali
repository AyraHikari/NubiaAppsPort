.class Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;
.super Ljava/lang/Object;
.source "VideoSlideShowDataAdapter.java"

# interfaces
.implements Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->nextSlide(Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/videogenerator/slidemake/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;->setMode(I)Z

    .line 97
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;->this$0:Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->access$000(Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;->run(Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
