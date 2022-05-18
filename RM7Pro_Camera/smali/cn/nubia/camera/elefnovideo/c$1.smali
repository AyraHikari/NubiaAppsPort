.class Lcn/nubia/camera/elefnovideo/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/c;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/c;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/c$1;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c$1;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c$1;->a:Lcn/nubia/camera/elefnovideo/c;

    .line 152
    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/c;->b(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/c$1;->a:Lcn/nubia/camera/elefnovideo/c;

    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/c;->c(Lcn/nubia/camera/elefnovideo/c;)Lcn/nubia/camera/elefnovideo/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/elefnovideo/g;->d()V

    :cond_1
    return-void
.end method
