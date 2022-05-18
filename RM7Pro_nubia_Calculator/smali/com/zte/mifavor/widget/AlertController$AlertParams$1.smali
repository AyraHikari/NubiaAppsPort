.class Lcom/zte/mifavor/widget/AlertController$AlertParams$1;
.super Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;
.source "AlertController.java"


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

.field final synthetic val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/zte/mifavor/widget/AlertController$RecycleListView;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p6, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1194
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1195
    iget-object p3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p3, p3, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    .line 1196
    iget-object p3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p3, p3, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1198
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
