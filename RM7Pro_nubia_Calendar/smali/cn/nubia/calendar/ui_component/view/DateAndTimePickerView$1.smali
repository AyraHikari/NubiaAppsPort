.class Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;
.super Ljava/lang/Object;
.source "DateAndTimePickerView.java"

# interfaces
.implements Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/calendar/ui_component/view/WheelView;II)V
    .locals 3
    .param p1, "wheelView"    # Lcn/nubia/calendar/ui_component/view/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0x7b2

    .line 93
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .line 94
    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMinValue()I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 95
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$108(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    const/16 v1, 0x7f5

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$102(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I

    .line 103
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0, v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$102(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I

    .line 106
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$202(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I

    .line 107
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget-boolean v0, v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0, p3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$302(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I

    .line 109
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$400(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->noticeTimeChange()V

    .line 118
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMinValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .line 97
    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$110(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$500(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0, p3, p2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$600(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;II)V

    goto :goto_1

    .line 114
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0, p3, p2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$700(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;II)V

    goto :goto_1
.end method
