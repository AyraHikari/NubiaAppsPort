.class Lcom/zte/mifavor/widget/DatePickerZTE$1;
.super Ljava/lang/Object;
.source "DatePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/DatePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DatePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$000(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 172
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$100(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$300(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne p1, v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$400(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 192
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$500(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 196
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    .line 202
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 201
    invoke-static {p1, p2, p3, v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$600(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    .line 203
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$700(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 205
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$800(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    return-void

    .line 198
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
