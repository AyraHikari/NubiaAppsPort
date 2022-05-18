.class Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;
.super Ljava/lang/Object;
.source "TimePickerDialogZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TimePickerDialogZTE;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 143
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->validateInput()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->clearFocus()V

    .line 146
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    .line 147
    invoke-static {v2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    invoke-interface {p1, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;->onTimeSet(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerDialogZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->dismiss()V

    :cond_1
    return-void
.end method
