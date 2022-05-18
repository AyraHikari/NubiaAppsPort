.class Lcn/nubia/gallery3d/app/PhotoPage$21;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/ui/NewCutView$NewCutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 2168
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCutListen()V
    .locals 5

    .line 2171
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2178
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 2179
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 2180
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/video/player/MovieSnapshot;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2181
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    new-instance v3, Lcn/nubia/video/player/MovieSnapshot;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/video/player/MovieSnapshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3502(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/video/player/MovieSnapshot;)Lcn/nubia/video/player/MovieSnapshot;

    .line 2183
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2185
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3500(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/video/player/MovieSnapshot;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$21;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcn/nubia/video/player/MovieSnapshot;->snapshot(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_3
    return-void
.end method
