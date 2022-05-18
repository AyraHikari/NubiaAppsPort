.class Lcom/zte/mifavor/widget/AlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

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

    .line 1257
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p2}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1258
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    .line 1259
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
