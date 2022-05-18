.class Lcn/nubia/camera/q/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/i;->l(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 1711
    iput-object p1, p0, Lcn/nubia/camera/q/i$5;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1714
    iget-object p1, p0, Lcn/nubia/camera/q/i$5;->a:Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/q/i$5;->a:Lcn/nubia/camera/q/i;

    .line 1715
    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/q/i$5;->a:Lcn/nubia/camera/q/i;

    .line 1716
    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1719
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/i$5;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->c(Lcn/nubia/camera/q/i;)V

    :cond_1
    :goto_0
    return-void
.end method
