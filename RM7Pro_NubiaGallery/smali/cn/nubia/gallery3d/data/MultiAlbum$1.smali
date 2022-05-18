.class Lcn/nubia/gallery3d/data/MultiAlbum$1;
.super Ljava/lang/Object;
.source "MultiAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/MultiAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/MultiAlbum;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/MultiAlbum;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MultiAlbum$1;->this$0:Lcn/nubia/gallery3d/data/MultiAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompeleted()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MultiAlbum$1;->this$0:Lcn/nubia/gallery3d/data/MultiAlbum;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/MultiAlbum;->access$002(Lcn/nubia/gallery3d/data/MultiAlbum;I)I

    return-void
.end method
