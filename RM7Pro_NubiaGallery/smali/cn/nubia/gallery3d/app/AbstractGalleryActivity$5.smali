.class Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->initFavorStuff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 602
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 0

    .line 605
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {p1}, Lcn/nubia/gallery3d/data/FavorHelper;->setupFavorData(Lcn/nubia/gallery3d/app/GalleryApp;)V

    .line 606
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor()Z

    move-result p1

    if-nez p1, :cond_0

    .line 607
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$5;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->initData()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
