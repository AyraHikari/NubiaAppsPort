.class Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$1;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;->updateEntry()V

    return-void
.end method
