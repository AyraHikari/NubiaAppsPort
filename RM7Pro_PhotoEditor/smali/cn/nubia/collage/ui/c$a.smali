.class Lcn/nubia/collage/ui/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/c;->e(Lcn/nubia/collage/ui/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/c$a;->a:Lcn/nubia/collage/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/collage/ui/c$a;->a:Lcn/nubia/collage/ui/c;

    invoke-static {p1}, Lcn/nubia/collage/ui/c;->a(Lcn/nubia/collage/ui/c;)Lcn/nubia/collage/ui/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/c$a;->a:Lcn/nubia/collage/ui/c;

    invoke-static {p1}, Lcn/nubia/collage/ui/c;->a(Lcn/nubia/collage/ui/c;)Lcn/nubia/collage/ui/a$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/ui/c$a;->a:Lcn/nubia/collage/ui/c;

    iget-object v1, v0, Lcn/nubia/collage/ui/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcn/nubia/collage/ui/a$b;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
