.class Lcn/nubia/choosephoto/ui/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ui/a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/a$a;->a:Lcn/nubia/choosephoto/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcn/nubia/choosephoto/ui/a$a;->a:Lcn/nubia/choosephoto/ui/a;

    iget-object p2, p1, Lcn/nubia/choosephoto/ui/b;->a:Lcn/nubia/choosephoto/ui/b$a;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcn/nubia/choosephoto/ui/b$a;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
