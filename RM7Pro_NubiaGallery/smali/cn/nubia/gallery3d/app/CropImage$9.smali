.class Lcn/nubia/gallery3d/app/CropImage$9;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->initializeData()V
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
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$9;->this$0:Lcn/nubia/gallery3d/app/CropImage;

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

    .line 1084
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$9;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CropImage;->access$1302(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;

    .line 1085
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1086
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    .line 1090
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$9;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$9;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CropImage;->access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
