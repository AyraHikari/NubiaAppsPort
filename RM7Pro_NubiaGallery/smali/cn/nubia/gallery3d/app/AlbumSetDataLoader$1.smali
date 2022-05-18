.class Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetDataLoader;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 103
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/LoadingListener;->onLoadingFinished()V

    :cond_2
    return-void

    .line 100
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/LoadingListener;->onLoadingStarted()V

    :cond_4
    return-void
.end method
