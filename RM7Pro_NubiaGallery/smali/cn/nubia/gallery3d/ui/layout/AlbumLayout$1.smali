.class Lcn/nubia/gallery3d/ui/layout/AlbumLayout$1;
.super Ljava/lang/Object;
.source "AlbumLayout.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/layout/AlbumLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/AlbumClustering;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/layout/AlbumLayout;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/layout/AlbumLayout;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;->initLayoutParameters()V

    return-void
.end method
