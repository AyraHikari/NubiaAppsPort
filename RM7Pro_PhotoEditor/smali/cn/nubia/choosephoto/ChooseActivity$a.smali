.class Lcn/nubia/choosephoto/ChooseActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ChooseActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ChooseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$a;->a:Lcn/nubia/choosephoto/ChooseActivity;

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

    if-ltz p3, :cond_0

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$a;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$a;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->o(Lcn/nubia/choosephoto/ChooseActivity;)Lcn/nubia/choosephoto/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/choosephoto/ChooseActivity$a;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p2}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/nubia/choosephoto/ui/d;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$a;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->w(Lcn/nubia/choosephoto/ChooseActivity;)V

    :cond_0
    return-void
.end method
