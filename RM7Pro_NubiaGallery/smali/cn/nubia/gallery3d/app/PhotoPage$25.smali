.class Lcn/nubia/gallery3d/app/PhotoPage$25;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->initShowMultPhoto(Lcn/nubia/gallery3d/data/Path;)V
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

    .line 2760
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeifLoadStart()V
    .locals 1

    .line 2850
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->resetHeicSeekBarView()V

    return-void
.end method

.method public onHeifLoadStatus(Z)V
    .locals 0

    return-void
.end method

.method public onLoadingFinished()V
    .locals 4

    .line 2815
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2816
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2818
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5200(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 2820
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 2822
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5300(Lcn/nubia/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2825
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/data/FilterDeleteSet;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PhotoPage"

    const-string v1, "onLoadingFinished finishState!!!"

    .line 2826
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    .line 2830
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2831
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->setCallDrawPic(Z)V

    .line 2832
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    .line 2834
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-boolean v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->cameraView:Z

    if-eqz v0, :cond_5

    .line 2835
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GLFreezeHandler;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2836
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    new-instance v2, Lcn/nubia/gallery3d/app/GLFreezeHandler;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/gallery3d/app/GLFreezeHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5402(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/GLFreezeHandler;)Lcn/nubia/gallery3d/app/GLFreezeHandler;

    .line 2838
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GLFreezeHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/gallery3d/app/GLFreezeHandler;->sendEmptyMessageDelayed(IJ)V

    .line 2839
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->hideProgressBar()V

    :cond_5
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method

.method public onPhotoChanged(ILcn/nubia/gallery3d/data/Path;)V
    .locals 4

    .line 2764
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5102(Lcn/nubia/gallery3d/app/PhotoPage;I)I

    .line 2765
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 2766
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 2768
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    .line 2769
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->click_path:Lcn/nubia/gallery3d/data/Path;

    .line 2770
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->rotation:I

    goto :goto_0

    .line 2772
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iput-object v0, v1, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    .line 2773
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->click_path:Lcn/nubia/gallery3d/data/Path;

    :goto_0
    if-eqz p1, :cond_1

    .line 2776
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".heic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2777
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setHeicMovePath(Ljava/lang/String;)V

    .line 2778
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setHeicMoveRotation(I)V

    .line 2779
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/PhotoPage;->currentPhotoFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicImage(Ljava/lang/String;I)V

    .line 2780
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->configuration:Landroid/content/res/Configuration;

    .line 2781
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z

    .line 2782
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->isIs_heic_check()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2783
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setIs_heic_check(Z)V

    goto :goto_1

    .line 2786
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iput-boolean p2, v1, Lcn/nubia/gallery3d/app/PhotoPage;->isHeic:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "PhotoPage"

    const-string v2, "Heic Error !!!"

    .line 2789
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2793
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p2

    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMimeType(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "image/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2794
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2796
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "wait"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2797
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->ShowProgressBar()V

    .line 2798
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->time_out:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 2800
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_5

    .line 2801
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->time_out:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2802
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->time_out:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2805
    :cond_5
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->HideProgressBar()V

    :goto_2
    if-eqz p1, :cond_6

    .line 2808
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5200(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/MediaItem;)V

    .line 2810
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$25;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1000(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method
