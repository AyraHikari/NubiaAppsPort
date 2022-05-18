.class Lcn/nubia/gallery3d/app/GalleryAppBar$6;
.super Ljava/lang/Object;
.source "GalleryAppBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GalleryAppBar;->showSortDialog()V
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

    .line 284
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$6;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 289
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$6;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/data/DataManager;->setSort(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 291
    iget-object p2, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$6;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$400(Lcn/nubia/gallery3d/app/GalleryAppBar;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p2

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/data/DataManager;->setSort(Lcn/nubia/gallery3d/app/GalleryContext;Z)V

    .line 293
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
