.class Lcn/nubia/camera/ah/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 558
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->k(Lcn/nubia/camera/ah/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 561
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;Z)Z

    .line 562
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/a$b;)V

    .line 563
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ah/e;->h()V

    .line 564
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ah/e;->a()V

    .line 565
    iget-object p1, p0, Lcn/nubia/camera/ah/a$12;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->m(Lcn/nubia/camera/ah/a;)V

    return-void
.end method
