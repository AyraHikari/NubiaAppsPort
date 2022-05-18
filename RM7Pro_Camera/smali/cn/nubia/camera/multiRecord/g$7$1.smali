.class Lcn/nubia/camera/multiRecord/g$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g$7;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1020
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/g;->s(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 1021
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/g;->r(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 1022
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/g;->u(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 1023
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7$1;->a:Lcn/nubia/camera/multiRecord/g$7;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
