.class Lcn/nubia/commonui/widget/DatePickerView$1;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/DatePickerView;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 2
    .param p1, "wheelView"    # Lcn/nubia/commonui/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    iget-boolean v0, v0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-static {v0, p3}, Lcn/nubia/commonui/widget/DatePickerView;->access$002(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustMonthDisplayerValues()V

    .line 122
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustDayDisplayerValues()V

    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-static {v0, p3}, Lcn/nubia/commonui/widget/DatePickerView;->access$002(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 126
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustMaxDay()V

    .line 127
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$1;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    goto :goto_0
.end method
