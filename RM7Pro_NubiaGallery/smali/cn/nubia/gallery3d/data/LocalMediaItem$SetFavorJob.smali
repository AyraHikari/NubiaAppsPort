.class Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;
.super Ljava/lang/Object;
.source "LocalMediaItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFavorJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private setFavor:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/LocalMediaItem;Z)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-boolean p2, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->setFavor:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    .line 298
    iget-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->setFavor:Z

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget v0, v0, Lcn/nubia/gallery3d/data/LocalMediaItem;->id:I

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget-wide v1, v1, Lcn/nubia/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getMediaType()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/data/FavorHelper;->setFavor(Lcn/nubia/gallery3d/app/GalleryApp;IJI)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    iget v0, v0, Lcn/nubia/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/FavorHelper;->setUnFavor(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
