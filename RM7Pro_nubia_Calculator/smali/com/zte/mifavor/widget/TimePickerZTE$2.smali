.class Lcom/zte/mifavor/widget/TimePickerZTE$2;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


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

    .line 151
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 154
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourMFV()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 158
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 161
    :cond_2
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    return-void
.end method
