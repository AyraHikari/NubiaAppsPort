.class Lcn/nubia/camera/ax/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ax/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ax/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ax/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ax/f;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/camera/ax/f$1;->a:Lcn/nubia/camera/ax/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/ax/f$1;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/f;->b()V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/ax/f$1;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/f;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(II)Z

    return-void
.end method
