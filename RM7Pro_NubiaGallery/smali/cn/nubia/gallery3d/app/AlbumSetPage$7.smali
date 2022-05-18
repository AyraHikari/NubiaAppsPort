.class Lcn/nubia/gallery3d/app/AlbumSetPage$7;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->updateAppBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$7;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 796
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$7;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 797
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$7;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumSetPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->activityCloseAnim(Landroid/content/Context;)V

    return-void
.end method
