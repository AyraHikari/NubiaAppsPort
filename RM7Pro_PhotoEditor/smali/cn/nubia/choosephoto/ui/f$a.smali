.class Lcn/nubia/choosephoto/ui/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/f$a;->a:Lcn/nubia/choosephoto/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    iget-object p1, p0, Lcn/nubia/choosephoto/ui/f$a;->a:Lcn/nubia/choosephoto/ui/f;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcn/nubia/choosephoto/ui/f;->g:Z

    return-void
.end method
