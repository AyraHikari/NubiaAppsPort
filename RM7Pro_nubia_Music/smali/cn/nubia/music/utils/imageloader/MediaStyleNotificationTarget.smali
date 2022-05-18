.class public Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;
.super Lcom/bumptech/glide/request/b/f;
.source "MediaStyleNotificationTarget.java"


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
.field private final mBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/f;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->mBuilder:Landroid/app/Notification$Builder;

    .line 20
    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->mBuilder:Landroid/app/Notification$Builder;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 30
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V
    .locals 1
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
    .line 24
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 25
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
