.class Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;
.super Ljava/lang/Object;
.source "SlideShowEffectPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectPage;->loadNextBitmap()V
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
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

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

    .line 144
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$302(Lcn/nubia/improve/slideshow/SlideShowEffectPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 145
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$400(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
