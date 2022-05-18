.class Lcn/nubia/gallery3d/app/CameraPage$5;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->initMorePopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7

    const v0, 0x7f090042

    const v1, 0x7f1000ae

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const v0, 0x7f090153

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 625
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    .line 626
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedImagePaths()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 633
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_1

    .line 634
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 635
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "50!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 636
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 639
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 640
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 641
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v5}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v4

    or-int/2addr v4, v3

    .line 645
    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 646
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedpaths"

    .line 648
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cn.nubia.photoeditor"

    .line 649
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 650
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 651
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 652
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 628
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 629
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 622
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2300(Lcn/nubia/gallery3d/app/CameraPage;)V

    goto/16 :goto_3

    .line 660
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2400(Lcn/nubia/gallery3d/app/CameraPage;)V

    goto/16 :goto_3

    .line 655
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 656
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, p1, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/CameraPage;->SetAsPrivate(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 599
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, v2, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0x96

    if-le v0, v4, :cond_6

    .line 602
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v2, v2, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 603
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "150!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 608
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "CameraPage"

    const-string v1, "addSubDirectory2Bucket failed"

    .line 611
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 615
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 616
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$2200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-set-path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "repeat"

    .line 617
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$5;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09003d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
