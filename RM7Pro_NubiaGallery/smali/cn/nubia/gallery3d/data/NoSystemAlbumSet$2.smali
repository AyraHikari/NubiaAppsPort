.class Lcn/nubia/gallery3d/data/NoSystemAlbumSet$2;
.super Ljava/lang/Object;
.source "NoSystemAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/NoSystemAlbumSet;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$2;->this$0:Lcn/nubia/gallery3d/data/NoSystemAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$2;->this$0:Lcn/nubia/gallery3d/data/NoSystemAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->notifyContentChanged()V

    return-void
.end method
