.class Lcn/nubia/gallery3d/app/CloudPage$5;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CloudPage;->updateAppBars()V
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

    .line 619
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$5;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 622
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$5;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$5;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 623
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 625
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$5;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CloudPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f010018

    const v1, 0x7f010019

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
