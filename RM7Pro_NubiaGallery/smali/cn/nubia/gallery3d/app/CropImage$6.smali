.class Lcn/nubia/gallery3d/app/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$6;->this$0:Lcn/nubia/gallery3d/app/CropImage;

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
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 771
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 774
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$6;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$6;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CropImage;->access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 777
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$6;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
