.class Lcn/nubia/gallery3d/app/GalleryAppBar$7;
.super Ljava/lang/Object;
.source "GalleryAppBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GalleryAppBar;->showSortAndCaterogyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$7;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    const-string p3, "type"

    const-string v0, "gallery_rewind_by_time"

    const-string v1, "cn.nubia.gallery3d"

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 321
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$7;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-static {p2, v2}, Lcn/nubia/gallery3d/data/DataManager;->setSort(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    .line 322
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p2

    const-string v2, "DSC"

    invoke-virtual {p2, v1, v0, p3, v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 325
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$7;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-static {p2, v3}, Lcn/nubia/gallery3d/data/DataManager;->setSort(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    .line 326
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p2

    const-string v2, "ASC"

    invoke-virtual {p2, v1, v0, p3, v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 329
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$7;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-static {p2, v2}, Lcn/nubia/gallery3d/data/DataManager;->setThingsAlbumSetVisibility(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$7;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-static {p2, v3}, Lcn/nubia/gallery3d/data/DataManager;->setThingsAlbumSetVisibility(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    .line 333
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
