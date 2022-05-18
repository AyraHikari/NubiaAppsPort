.class Lcn/nubia/camera/clone/l$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/l;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Lcn/nubia/camera/clone/l$7;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcn/nubia/camera/clone/l$7;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->Q(Lcn/nubia/camera/clone/l;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcn/nubia/camera/clone/l$7;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->Q(Lcn/nubia/camera/clone/l;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/l$7;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->R(Lcn/nubia/camera/clone/l;)V

    return-void
.end method
