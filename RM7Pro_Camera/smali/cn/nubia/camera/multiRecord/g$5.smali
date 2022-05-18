.class Lcn/nubia/camera/multiRecord/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->j(Landroid/view/View;)V
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

    .line 702
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$5;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 705
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$5;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$5;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->B(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$5;->a:Lcn/nubia/camera/multiRecord/g;

    .line 709
    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->C(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_2

    .line 710
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$5;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/h;->d()V

    :cond_2
    return-void
.end method
