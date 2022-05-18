.class Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumDataLoader;ILcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$1;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;->updateEntry()V

    return-void
.end method
