.class Lcn/nubia/video/commonui/app/AlertController$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/AlertController$c;->b(Lcn/nubia/video/commonui/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/AlertController$RecycleListView;

.field final synthetic b:Lcn/nubia/video/commonui/app/AlertController;

.field final synthetic c:Lcn/nubia/video/commonui/app/AlertController$c;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/AlertController$c;Lcn/nubia/video/commonui/app/AlertController$RecycleListView;Lcn/nubia/video/commonui/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->c:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->a:Lcn/nubia/video/commonui/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->b:Lcn/nubia/video/commonui/app/AlertController;

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

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->c:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object p1, p1, Lcn/nubia/video/commonui/app/AlertController$c;->C:[Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->a:Lcn/nubia/video/commonui/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->c:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object p1, p1, Lcn/nubia/video/commonui/app/AlertController$c;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->b:Lcn/nubia/video/commonui/app/AlertController;

    .line 4
    invoke-static {p2}, Lcn/nubia/video/commonui/app/AlertController;->o(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/video/commonui/app/AlertController$c$d;->a:Lcn/nubia/video/commonui/app/AlertController$RecycleListView;

    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    .line 5
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
