.class Lcn/nubia/gallery3d/app/CloudPage$6;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CloudPage;->onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;I)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iput p2, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 743
    :try_start_0
    iget v1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->val$resultCode:I

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CloudPage;->access$2802(Lcn/nubia/gallery3d/app/CloudPage;Z)Z

    .line 746
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CloudPage;->access$2900(Lcn/nubia/gallery3d/app/CloudPage;I)V

    .line 747
    iget v1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->val$resultCode:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$6;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$3000(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CloudPage"

    const-string v2, "failed to load album set"

    .line 748
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 752
    throw v1
.end method
