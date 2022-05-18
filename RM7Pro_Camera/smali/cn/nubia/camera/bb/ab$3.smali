.class Lcn/nubia/camera/bb/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/ab;->h()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/ab;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/ab;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/bb/ab$3;->a:Lcn/nubia/camera/bb/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/bb/ab$3;->a:Lcn/nubia/camera/bb/ab;

    invoke-static {p1}, Lcn/nubia/camera/bb/ab;->b(Lcn/nubia/camera/bb/ab;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/bb/ab$3;->a:Lcn/nubia/camera/bb/ab;

    .line 107
    invoke-static {p1}, Lcn/nubia/camera/bb/ab;->c(Lcn/nubia/camera/bb/ab;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/bb/ab$3;->a:Lcn/nubia/camera/bb/ab;

    .line 108
    invoke-static {p1}, Lcn/nubia/camera/bb/ab;->c(Lcn/nubia/camera/bb/ab;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_1

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/ab$3;->a:Lcn/nubia/camera/bb/ab;

    invoke-static {p1}, Lcn/nubia/camera/bb/ab;->d(Lcn/nubia/camera/bb/ab;)Lcn/nubia/camera/bb/d;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/bb/d;->c()V

    :cond_1
    return-void
.end method
