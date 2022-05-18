.class Lcn/nubia/gallery3d/data/LocalAllAlbum$1;
.super Ljava/lang/Object;
.source "LocalAllAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/LocalAllAlbum;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/LocalAllAlbum;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum$1;->this$0:Lcn/nubia/gallery3d/data/LocalAllAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompeleted()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAllAlbum$1;->this$0:Lcn/nubia/gallery3d/data/LocalAllAlbum;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->access$002(Lcn/nubia/gallery3d/data/LocalAllAlbum;I)I

    return-void
.end method
