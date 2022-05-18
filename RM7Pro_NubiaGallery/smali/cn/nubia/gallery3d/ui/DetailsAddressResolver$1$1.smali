.class Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;->onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;

.field final synthetic val$future:Lcn/nubia/gallery3d/util/Future;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;Lcn/nubia/gallery3d/util/Future;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcn/nubia/gallery3d/util/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->access$200(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V

    return-void
.end method
