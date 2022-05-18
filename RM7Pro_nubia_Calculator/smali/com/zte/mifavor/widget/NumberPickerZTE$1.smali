.class Lcom/zte/mifavor/widget/NumberPickerZTE$1;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$000(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 546
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zte/extres/R$id;->increment:I

    if-ne p1, v0, :cond_0

    .line 548
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$1;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    :goto_0
    return-void
.end method
