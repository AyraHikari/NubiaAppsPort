.class Lcn/nubia/gallery3d/data/CollectAlbumSet$1;
.super Ljava/lang/Object;
.source "CollectAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/CollectAlbumSet;->onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$1;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$1;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->notifyContentChanged()V

    return-void
.end method
