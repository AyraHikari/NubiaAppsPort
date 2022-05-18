.class Lcn/nubia/collage/ui/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/g;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/g$a;->a:Lcn/nubia/collage/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/ui/g$a;->a:Lcn/nubia/collage/ui/g;

    iget-object v1, v0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget v0, v0, Lcn/nubia/collage/ui/b;->c:I

    if-eq p2, v0, :cond_1

    invoke-virtual {v1, p2}, Lcn/nubia/collage/ui/a;->c(I)V

    iget-object v0, p0, Lcn/nubia/collage/ui/g$a;->a:Lcn/nubia/collage/ui/g;

    iput p2, v0, Lcn/nubia/collage/ui/b;->c:I

    iget-object v0, v0, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/i;->u(I)V

    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    const p2, 0x7f08003e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/collage/ui/g$a;->a:Lcn/nubia/collage/ui/g;

    iget-object p2, p1, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    invoke-virtual {p1}, Lcn/nubia/collage/i;->n()V

    iget-object p1, p0, Lcn/nubia/collage/ui/g$a;->a:Lcn/nubia/collage/ui/g;

    iget-object p2, p1, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    check-cast p2, Lcn/nubia/collage/ui/f;

    iget-object p1, p1, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    invoke-virtual {p1}, Lcn/nubia/collage/i;->e()Lcn/nubia/collage/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/collage/ui/f;->f(Lcn/nubia/collage/c;)V

    :cond_2
    return-void
.end method
