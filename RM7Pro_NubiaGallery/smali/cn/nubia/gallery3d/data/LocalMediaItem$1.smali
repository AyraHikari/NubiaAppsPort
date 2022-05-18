.class Lcn/nubia/gallery3d/data/LocalMediaItem$1;
.super Ljava/lang/Object;
.source "LocalMediaItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/LocalMediaItem;->setMarkFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/LocalMediaItem;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$1;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$1;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->access$002(Lcn/nubia/gallery3d/data/LocalMediaItem;Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;)Lcn/nubia/gallery3d/data/LocalMediaItem$SetFavorJob;

    .line 222
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem$1;->this$0:Lcn/nubia/gallery3d/data/LocalMediaItem;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/gallery3d/data/LocalMediaItem;->mIsMarked:Z

    return-void
.end method
