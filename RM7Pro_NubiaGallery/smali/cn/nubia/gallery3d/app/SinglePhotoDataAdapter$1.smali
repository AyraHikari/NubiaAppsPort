.class Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/util/Future;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/util/Future;)V

    :goto_1
    return-void
.end method
