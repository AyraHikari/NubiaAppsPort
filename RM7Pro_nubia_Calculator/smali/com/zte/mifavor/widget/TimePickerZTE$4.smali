.class Lcom/zte/mifavor/widget/TimePickerZTE$4;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TimePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 233
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 234
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 235
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    return-void
.end method
