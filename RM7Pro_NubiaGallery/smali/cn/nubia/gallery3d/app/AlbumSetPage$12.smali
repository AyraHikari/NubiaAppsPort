.class Lcn/nubia/gallery3d/app/AlbumSetPage$12;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->loadSelectionHintImage()V
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
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$1300(Lcn/nubia/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$12;->val$rotation:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
