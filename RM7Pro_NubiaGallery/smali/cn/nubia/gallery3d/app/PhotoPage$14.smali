.class Lcn/nubia/gallery3d/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->onCreateActionBar(Landroid/view/Menu;)Z
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

    .line 1094
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1096
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1097
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2000(Lcn/nubia/gallery3d/app/PhotoPage;)V

    .line 1099
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2100(Lcn/nubia/gallery3d/app/PhotoPage;)V

    .line 1100
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setAnchorView(Landroid/view/View;)V

    .line 1101
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$14;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1900(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->show()V

    return-void
.end method
