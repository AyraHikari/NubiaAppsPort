.class Lcn/nubia/gallery3d/app/AlbumPage$4;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->onResume()V
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

    .line 678
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClicked(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 683
    :sswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getClickedPaths()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2302(Lcn/nubia/gallery3d/app/AlbumPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 684
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2400(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return v1

    .line 703
    :sswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3000(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2902(Lcn/nubia/gallery3d/app/AlbumPage;Z)Z

    goto :goto_0

    .line 692
    :sswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    if-nez p1, :cond_0

    .line 693
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2700(Lcn/nubia/gallery3d/app/AlbumPage;)V

    .line 695
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->initMorePopWindowStatu()V

    .line 696
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/AlbumPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setAnchorView(Landroid/view/View;)V

    .line 697
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2600(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->show()V

    return v0

    .line 700
    :sswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2800(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return v1

    .line 688
    :sswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$4;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2500(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return v1

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f09000f -> :sswitch_4
        0x7f090016 -> :sswitch_3
        0x7f090022 -> :sswitch_2
        0x7f090025 -> :sswitch_1
        0x7f09002d -> :sswitch_0
    .end sparse-switch
.end method
