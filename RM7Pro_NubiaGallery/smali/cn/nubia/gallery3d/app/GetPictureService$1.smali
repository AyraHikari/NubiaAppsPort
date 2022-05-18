.class Lcn/nubia/gallery3d/app/GetPictureService$1;
.super Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;
.source "GetPictureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/GetPictureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GetPictureService;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GetPictureService;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GetPictureService$1;->this$0:Lcn/nubia/gallery3d/app/GetPictureService;

    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GetPictureService$1;->this$0:Lcn/nubia/gallery3d/app/GetPictureService;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GetPictureService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getPaths()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GetPictureService$1;->this$0:Lcn/nubia/gallery3d/app/GetPictureService;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GetPictureService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setPaths(Ljava/util/List;)V

    return-void
.end method
