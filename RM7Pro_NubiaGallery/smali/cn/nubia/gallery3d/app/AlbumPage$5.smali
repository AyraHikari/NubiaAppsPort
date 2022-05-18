.class Lcn/nubia/gallery3d/app/AlbumPage$5;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->initMorePopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7

    const v0, 0x7f1000ae

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 829
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportPrivacySpace(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 830
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->SetAsPrivate(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 759
    :sswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 761
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3100(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->removeFace(Lcn/nubia/gallery3d/data/FaceAlbum;Ljava/util/ArrayList;)V

    .line 763
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/FaceAlbum;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->needRefreshCover()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2200(Lcn/nubia/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3300(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/ThingsAlbum;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->removeThing(Lcn/nubia/gallery3d/data/ThingsAlbum;Ljava/util/ArrayList;)V

    .line 769
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_4

    .line 772
    :sswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 774
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    .line 775
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 776
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "150!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 777
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 781
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AlbumPage"

    const-string v2, "addSubDirectory2Bucket failed"

    .line 784
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 789
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 790
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3400(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-set-path"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "repeat"

    .line 791
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {v0, v2, v1, p1}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    .line 799
    :sswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    .line 800
    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedImagePaths()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_3

    goto/16 :goto_3

    .line 807
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 808
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 809
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 810
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 813
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 814
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 815
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v5}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 818
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v4}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v4

    or-int/2addr v4, v2

    .line 819
    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "selectedpaths"

    .line 822
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cn.nubia.photoeditor"

    .line 823
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 824
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 825
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 826
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 802
    :cond_6
    :goto_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1000(Lcn/nubia/gallery3d/app/AlbumPage;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 803
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "50!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 796
    :sswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3500(Lcn/nubia/gallery3d/app/AlbumPage;)V

    goto :goto_4

    .line 834
    :sswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$5;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3600(Lcn/nubia/gallery3d/app/AlbumPage;)V

    :cond_7
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003d -> :sswitch_5
        0x7f09003e -> :sswitch_4
        0x7f09003f -> :sswitch_3
        0x7f090042 -> :sswitch_2
        0x7f090043 -> :sswitch_1
        0x7f090153 -> :sswitch_0
    .end sparse-switch
.end method
