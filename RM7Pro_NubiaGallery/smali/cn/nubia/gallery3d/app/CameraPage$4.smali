.class Lcn/nubia/gallery3d/app/CameraPage$4;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->onResume()V
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

    .line 548
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClicked(I)Z
    .locals 3

    const v0, 0x7f09000f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f090022

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f09002d

    if-eq p1, v0, :cond_0

    return v2

    .line 553
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, p1, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getClickedPaths()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1702(Lcn/nubia/gallery3d/app/CameraPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 554
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1800(Lcn/nubia/gallery3d/app/CameraPage;)V

    return v1

    .line 562
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    if-nez p1, :cond_2

    .line 563
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2100(Lcn/nubia/gallery3d/app/CameraPage;)V

    .line 565
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/CameraPage;->initMorePopWindowStatu()V

    .line 566
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setAnchorView(Landroid/view/View;)V

    .line 567
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->show()V

    return v2

    .line 558
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$4;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$1900(Lcn/nubia/gallery3d/app/CameraPage;)V

    return v1
.end method
