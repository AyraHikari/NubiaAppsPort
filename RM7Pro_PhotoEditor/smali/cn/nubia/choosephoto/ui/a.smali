.class public Lcn/nubia/choosephoto/ui/a;
.super Lcn/nubia/choosephoto/ui/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/choosephoto/ui/b<",
        "Lcn/nubia/choosephoto/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/choosephoto/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/choosephoto/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/nubia/choosephoto/ui/a$b;

    const v1, 0x7f0b0003

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/choosephoto/ui/a$b;-><init>(Lcn/nubia/choosephoto/ui/a;Ljava/util/List;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b0006

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0801a3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    iget-object p3, p0, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    new-instance p3, Lcn/nubia/choosephoto/ui/a$a;

    invoke-direct {p3, p0}, Lcn/nubia/choosephoto/ui/a$a;-><init>(Lcn/nubia/choosephoto/ui/a;)V

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method
