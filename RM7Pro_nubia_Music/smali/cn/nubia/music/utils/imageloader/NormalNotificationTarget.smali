.class public Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;
.super Lcom/bumptech/glide/request/b/f;
.source "NormalNotificationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/b/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;-><init>(Landroid/widget/RemoteViews;III)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;III)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/request/b/f;-><init>(II)V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput p2, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->viewId:I

    .line 30
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 32
    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->viewId:I

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/a/e",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
