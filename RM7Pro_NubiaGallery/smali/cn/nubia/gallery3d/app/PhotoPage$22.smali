.class Lcn/nubia/gallery3d/app/PhotoPage$22;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;


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

    .line 2195
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7

    .line 2198
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2201
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2205
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 2206
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    .line 2207
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x4

    const/high16 v5, 0x7f0f0000

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2286
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2287
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcn/nubia/gallery3d/ui/PhotoView;->switchShareMode(Z)V

    goto/16 :goto_0

    .line 2289
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4500(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 2267
    :sswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4100(Lcn/nubia/gallery3d/app/PhotoPage;)Z

    move-result p1

    .line 2268
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v1

    const v2, 0x7f09002b

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 2270
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4200(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    .line 2272
    :cond_3
    check-cast v0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setMarkFlag()V

    .line 2273
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f080129

    invoke-virtual {p1, v2, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 2277
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4400(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    .line 2279
    :cond_5
    check-cast v0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->removeMarkFlag(Z)V

    .line 2280
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->getMenu()Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    move-result-object p1

    const v0, 0x7f080143

    invoke-virtual {p1, v2, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setItemIconById(II)V

    goto/16 :goto_0

    :sswitch_2
    if-ne v3, v4, :cond_6

    .line 2232
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    .line 2233
    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 2234
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    .line 2237
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "in-multishoot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2238
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2240
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2241
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2242
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v0

    const v1, 0x7f090023

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    .line 2243
    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3800(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    move-result-object v2

    .line 2242
    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto/16 :goto_0

    .line 2245
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2247
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2248
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2249
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3800(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto/16 :goto_0

    .line 2223
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f000a

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2225
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2226
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2227
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3800(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto/16 :goto_0

    .line 2211
    :sswitch_4
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 2214
    :cond_8
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p1

    const-string v0, "cn.nubia.gallery3d"

    const-string v5, "gallery_vidio_edit"

    invoke-virtual {p1, v0, v5}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v4, :cond_9

    .line 2216
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1, v1, v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3600(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;)V

    goto :goto_0

    .line 2218
    :cond_9
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3700(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;I)V

    goto :goto_0

    .line 2294
    :sswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4600(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_0

    :sswitch_6
    if-ne v3, v4, :cond_a

    .line 2256
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4000(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 2258
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2260
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2261
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2262
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3800(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto :goto_0

    .line 2297
    :sswitch_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2299
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2300
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    .line 2301
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$22;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000e -> :sswitch_7
        0x7f090013 -> :sswitch_6
        0x7f090016 -> :sswitch_5
        0x7f090017 -> :sswitch_4
        0x7f090024 -> :sswitch_3
        0x7f090025 -> :sswitch_2
        0x7f090026 -> :sswitch_6
        0x7f09002b -> :sswitch_1
        0x7f09002d -> :sswitch_0
    .end sparse-switch
.end method
