.class Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->resolveAddress([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->access$102(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;

    .line 76
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->access$300(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;-><init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;Lcn/nubia/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
