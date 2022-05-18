.class Lcn/nubia/camera/multiRecord/g$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 412
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;Z)Z

    .line 416
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result p1

    if-nez p1, :cond_1

    .line 417
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 418
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v1}, [Lcn/nubia/camera/multiRecord/a;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/nubia/camera/multiRecord/a;

    iput-object v1, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 419
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 420
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 421
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aput-object p1, v1, v0

    .line 422
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/m;->f(Z)V

    .line 423
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$15;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->m(Lcn/nubia/camera/multiRecord/g;)V

    :cond_1
    :goto_0
    return-void
.end method
