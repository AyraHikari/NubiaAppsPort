.class Lcn/nubia/gallery3d/data/UriImage$2;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/UriImage;->saveUriImage(Ljava/lang/String;Landroid/os/Handler;)V
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
.field final synthetic this$0:Lcn/nubia/gallery3d/data/UriImage;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/UriImage;Landroid/os/Handler;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$2;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    iput-object p2, p0, Lcn/nubia/gallery3d/data/UriImage$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$2;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 431
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
