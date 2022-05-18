.class Lcn/nubia/gallery3d/app/PhotoPage$16;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->initMorePopWindow()V
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

    .line 1225
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 8

    .line 1228
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1232
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1235
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1277
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2600(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto/16 :goto_1

    :sswitch_1
    if-eqz v0, :cond_6

    .line 1304
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".mp4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1305
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVideoDurationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "set_dynamic_wallpaper_option_click"

    const-string v5, "duration"

    invoke-virtual {p1, v2, v4, v5, v3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->IsNeedCutVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1307
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3000(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto/16 :goto_1

    .line 1309
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setFilePath(Ljava/lang/String;)V

    .line 1310
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setLiveWallpaper(Landroid/content/Context;Landroid/app/Activity;I)V

    goto/16 :goto_1

    :sswitch_2
    if-eqz v3, :cond_6

    .line 1290
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1291
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/app/PhotoPage;->SetAsPrivate(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1280
    :sswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1281
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setAudioTrack()V

    goto/16 :goto_1

    .line 1270
    :sswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const v0, 0x7f09002a

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2500(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    goto/16 :goto_1

    .line 1274
    :sswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const v0, 0x7f090029

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2500(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    goto/16 :goto_1

    .line 1242
    :sswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 1244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showshowpage33333"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SlideshowPage"

    invoke-static {v5, v4}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x96

    if-le v4, v5, :cond_4

    .line 1246
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v4, v4, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v6, v6, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 1247
    invoke-interface {v6}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "150!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1246
    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1251
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1252
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PhotoPage"

    const-string v4, "addSubDirectory2Bucket failed"

    .line 1254
    invoke-static {v1, v4}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1258
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1259
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/data/FilterDeleteSet;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "media-set-path"

    .line 1259
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "media-item-path"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo-index"

    .line 1262
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "repeat"

    .line 1263
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1264
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {v1, v2, v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1297
    :sswitch_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$400(Lcn/nubia/gallery3d/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1298
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2800(Lcn/nubia/gallery3d/app/PhotoPage;)V

    goto :goto_1

    .line 1300
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2900(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    goto :goto_1

    .line 1285
    :sswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1286
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$16;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setDecoder()V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007c -> :sswitch_8
        0x7f09011e -> :sswitch_7
        0x7f090120 -> :sswitch_6
        0x7f090121 -> :sswitch_5
        0x7f090122 -> :sswitch_4
        0x7f09014d -> :sswitch_3
        0x7f090153 -> :sswitch_2
        0x7f090154 -> :sswitch_1
        0x7f090173 -> :sswitch_0
    .end sparse-switch
.end method
