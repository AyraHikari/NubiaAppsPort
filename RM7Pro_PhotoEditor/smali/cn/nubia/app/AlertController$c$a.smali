.class Lcn/nubia/app/AlertController$c$a;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/app/AlertController$c;->b(Lcn/nubia/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/app/AlertController$RecycleListView;

.field final synthetic b:Lcn/nubia/app/AlertController$c;


# direct methods
.method constructor <init>(Lcn/nubia/app/AlertController$c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/app/AlertController$RecycleListView;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController$c$a;->b:Lcn/nubia/app/AlertController$c;

    iput-object p6, p0, Lcn/nubia/app/AlertController$c$a;->a:Lcn/nubia/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/app/AlertController$c$a;->b:Lcn/nubia/app/AlertController$c;

    iget-object p3, p3, Lcn/nubia/app/AlertController$c;->C:[Z

    if-eqz p3, :cond_0

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcn/nubia/app/AlertController$c$a;->a:Lcn/nubia/app/AlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
