.class Lcn/nubia/videogenerator/slidemake/VideoMake$2;
.super Ljava/lang/Object;
.source "VideoMake.java"

# interfaces
.implements Lcn/nubia/videogenerator/slidemake/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/slidemake/VideoMake;->loadNextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/videogenerator/slidemake/FutureListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoMake;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$2;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/videogenerator/slidemake/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$2;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-interface {p1}, Lcn/nubia/videogenerator/slidemake/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$302(Lcn/nubia/videogenerator/slidemake/VideoMake;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 121
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$2;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$408(Lcn/nubia/videogenerator/slidemake/VideoMake;)I

    .line 122
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake$2;->this$0:Lcn/nubia/videogenerator/slidemake/VideoMake;

    invoke-static {p1}, Lcn/nubia/videogenerator/slidemake/VideoMake;->access$500(Lcn/nubia/videogenerator/slidemake/VideoMake;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
