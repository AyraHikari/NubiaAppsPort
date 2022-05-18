.class Lcn/nubia/gallery3d/app/PhotoPage$12;
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

    .line 1013
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$12;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1016
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$12;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->JumpToSystemPrivacySetting(Landroid/content/Context;)V

    return-void
.end method
