.class Lcn/nubia/gallery3d/app/CloudPage$7;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CloudPage;->showCloudLoginView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$7;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 797
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$7;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->showAccoutLoginOrRegist()V

    .line 798
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$7;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$3200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reSetForceReloadFlag()V

    return-void
.end method
