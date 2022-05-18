.class public abstract Lcn/nubia/choosephoto/ui/c;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/c;->a:Ljava/util/List;

    iput p2, p0, Lcn/nubia/choosephoto/ui/c;->b:I

    return-void
.end method

.method private b(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;)Lcn/nubia/choosephoto/ui/g;
    .locals 1

    iget v0, p0, Lcn/nubia/choosephoto/ui/c;->b:I

    invoke-static {p1, p3, p4, v0, p2}, Lcn/nubia/choosephoto/ui/g;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcn/nubia/choosephoto/ui/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract a(Lcn/nubia/choosephoto/ui/g;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/choosephoto/ui/g;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/nubia/choosephoto/ui/c;->b(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;)Lcn/nubia/choosephoto/ui/g;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ui/c;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/choosephoto/ui/c;->a(Lcn/nubia/choosephoto/ui/g;Ljava/lang/Object;I)V

    invoke-virtual {p2}, Lcn/nubia/choosephoto/ui/g;->b()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
