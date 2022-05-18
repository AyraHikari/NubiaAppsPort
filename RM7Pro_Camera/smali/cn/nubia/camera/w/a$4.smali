.class Lcn/nubia/camera/w/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->l(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/w/a$a;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/w/a$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcn/nubia/camera/w/a$4;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->w(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/w/a$a;->e()V

    :cond_0
    return-void
.end method
