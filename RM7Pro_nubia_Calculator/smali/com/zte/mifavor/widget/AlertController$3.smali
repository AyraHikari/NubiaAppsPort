.class Lcom/zte/mifavor/widget/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$3;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 640
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$3;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$700(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$3;->this$0:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
