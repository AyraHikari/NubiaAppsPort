.class Lcn/nubia/gallery3d/data/CameraAlbum$1;
.super Ljava/lang/Object;
.source "CameraAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/CameraAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/CameraAlbum;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/CameraAlbum;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraAlbum$1;->this$0:Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompeleted()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraAlbum$1;->this$0:Lcn/nubia/gallery3d/data/CameraAlbum;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/CameraAlbum;->access$002(Lcn/nubia/gallery3d/data/CameraAlbum;I)I

    return-void
.end method
