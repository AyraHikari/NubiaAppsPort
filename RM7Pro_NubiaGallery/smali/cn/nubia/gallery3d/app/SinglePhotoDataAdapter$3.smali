.class Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    .line 108
    invoke-static {v1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
