.class Lcom/zte/mifavor/widget/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/zte/mifavor/widget/AlertController;

.field final synthetic val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

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

    .line 1267
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 1268
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1270
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    .line 1271
    invoke-static {p2}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p0

    .line 1270
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
