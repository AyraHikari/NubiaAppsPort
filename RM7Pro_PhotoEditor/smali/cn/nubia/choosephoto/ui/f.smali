.class public abstract Lcn/nubia/choosephoto/ui/f;
.super Lcn/nubia/choosephoto/ui/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/choosephoto/ui/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected d:Lcn/nubia/choosephoto/a;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/StringBuilder;

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/nubia/choosephoto/ui/b;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/f;->f:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public d(Lcn/nubia/choosephoto/a;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/f;->d:Lcn/nubia/choosephoto/a;

    invoke-virtual {p1}, Lcn/nubia/choosephoto/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/choosephoto/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/f;->c(Ljava/util/List;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b0004

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f08016f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/GridView;

    iput-object p3, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    iget-object p3, p0, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcn/nubia/choosephoto/ui/b;->b:Landroid/widget/AbsListView;

    new-instance p3, Lcn/nubia/choosephoto/ui/f$a;

    invoke-direct {p3, p0}, Lcn/nubia/choosephoto/ui/f$a;-><init>(Lcn/nubia/choosephoto/ui/f;)V

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object p1
.end method
