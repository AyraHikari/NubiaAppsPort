.class Lcn/nubia/gallery3d/app/AlbumPage$12;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;I)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1414
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1415
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1417
    :try_start_0
    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->val$resultCode:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4602(Lcn/nubia/gallery3d/app/AlbumPage;Z)Z

    .line 1420
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4700(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    .line 1421
    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4300(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    .line 1422
    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$100(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1424
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f100235

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1425
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    :cond_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1429
    throw v1
.end method
