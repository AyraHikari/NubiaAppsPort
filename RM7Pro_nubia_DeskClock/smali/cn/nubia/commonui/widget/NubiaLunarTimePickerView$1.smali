.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 3
    .param p1, "wheelView"    # Lcn/nubia/commonui/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0x7f5

    const/16 v1, 0x7b2

    .line 93
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 94
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMinValue()I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$108(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I

    move-result v0

    if-le v0, v2, :cond_1

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I

    .line 108
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I

    .line 110
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget-boolean v0, v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, p3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I

    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, p3, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->noticeTimeChange()V

    .line 122
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMinValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 97
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$110(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, p3, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V

    goto :goto_1

    .line 117
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0, p3, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V

    goto :goto_1
.end method
