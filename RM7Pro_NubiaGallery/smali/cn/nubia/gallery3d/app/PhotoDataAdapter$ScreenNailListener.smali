.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Lcn/nubia/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcn/nubia/gallery3d/data/Path;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .line 1269
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcn/nubia/gallery3d/util/Future;

    .line 1270
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcn/nubia/gallery3d/util/Future;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V

    return-void
.end method
