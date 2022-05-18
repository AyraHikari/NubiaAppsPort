.class Lcom/zte/mifavor/widget/GregorianLunarDateView$1;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 122
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isNoYear(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isNoYear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1, p2, p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$300(Lcom/zte/mifavor/widget/GregorianLunarDateView;II)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$400(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIZ)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 128
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getYearValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v1

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x1e

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$700(Lcom/zte/mifavor/widget/GregorianLunarDateView;)[Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$800(Lcom/zte/mifavor/widget/GregorianLunarDateView;Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    .line 132
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v5

    move v1, v2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$900(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIIIZ)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p2

    if-ne p1, p2, :cond_7

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 140
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getYearValue()I

    move-result p1

    if-eqz p1, :cond_6

    .line 141
    new-instance p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    .line 142
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p2

    iget-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p3

    invoke-static {p2, p3}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunarByYear(II)I

    move-result p2

    .line 143
    iget-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeGregorianFields(III)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1002(Lcom/zte/mifavor/widget/GregorianLunarDateView;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto :goto_1

    .line 146
    :cond_5
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 147
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 148
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    iget-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 151
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateWeek(Ljava/util/Calendar;)V

    .line 152
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    return-void

    .line 137
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
