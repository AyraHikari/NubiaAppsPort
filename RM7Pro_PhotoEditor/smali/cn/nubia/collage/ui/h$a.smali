.class Lcn/nubia/collage/ui/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/h;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/h$a;->a:Lcn/nubia/collage/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/h$a;->a:Lcn/nubia/collage/ui/h;

    iget-object p1, p1, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcn/nubia/collage/ui/a;->c(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/h$a;->a:Lcn/nubia/collage/ui/h;

    iput p2, p1, Lcn/nubia/collage/ui/b;->c:I

    iget-object p1, p1, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/i;->u(I)V

    :cond_1
    return-void
.end method
