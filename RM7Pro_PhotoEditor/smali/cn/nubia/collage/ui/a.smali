.class public abstract Lcn/nubia/collage/ui/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/ui/a$a;,
        Lcn/nubia/collage/ui/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcn/nubia/collage/ui/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/collage/ui/a$b;

.field protected b:Lcn/nubia/collage/ui/a$a;

.field protected c:Landroid/content/Context;

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/ui/a;->a:Lcn/nubia/collage/ui/a$b;

    iput-object v0, p0, Lcn/nubia/collage/ui/a;->b:Lcn/nubia/collage/ui/a$a;

    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/collage/ui/a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/ui/a;->e:I

    iput-object p1, p0, Lcn/nubia/collage/ui/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/ui/a;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/collage/ui/a$a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/a;->b:Lcn/nubia/collage/ui/a$a;

    return-void
.end method

.method public b(Lcn/nubia/collage/ui/a$b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/a;->a:Lcn/nubia/collage/ui/a$b;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/collage/ui/a;->d:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected d(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/a;->b:Lcn/nubia/collage/ui/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/collage/ui/a$a;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcn/nubia/collage/n/f;->G(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method
