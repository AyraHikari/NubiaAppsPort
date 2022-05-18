.class public Lcn/nubia/choosephoto/ui/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcn/nubia/choosephoto/ui/g;->a:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/g;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcn/nubia/choosephoto/ui/g;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcn/nubia/choosephoto/ui/g;

    invoke-direct {p1, p0, p2, p3, p4}, Lcn/nubia/choosephoto/ui/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcn/nubia/choosephoto/ui/g;

    iput p4, p1, Lcn/nubia/choosephoto/ui/g;->b:I

    :goto_0
    return-object p1
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/g;->c:Landroid/view/View;

    return-object v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/g;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/choosephoto/ui/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public d(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;
    .locals 2

    invoke-static {}, Lcn/nubia/choosephoto/b/a;->q()Lcn/nubia/choosephoto/b/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcn/nubia/choosephoto/b/a;->t(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return-object p0
.end method

.method public e(II)Lcn/nubia/choosephoto/ui/g;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public f(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;
    .locals 2

    invoke-static {}, Lcn/nubia/choosephoto/b/a;->q()Lcn/nubia/choosephoto/b/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcn/nubia/choosephoto/b/a;->t(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return-object p0
.end method

.method public g(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
