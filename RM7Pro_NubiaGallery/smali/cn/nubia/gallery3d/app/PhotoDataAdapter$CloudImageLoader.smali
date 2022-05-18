.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudImageLoader"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPath:Lcn/nubia/gallery3d/data/Path;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)V
    .locals 0

    .line 1572
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1570
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 1571
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 1573
    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mPath:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method


# virtual methods
.method public loadCompleted(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1579
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 1580
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1581
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public updateCloudImage()V
    .locals 3

    .line 1586
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$3600(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Bitmap;)V

    return-void
.end method
