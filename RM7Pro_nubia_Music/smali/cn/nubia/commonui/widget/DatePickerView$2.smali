.class Lcn/nubia/commonui/widget/DatePickerView$2;
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
.field final synthetic a:Lcn/nubia/commonui/widget/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    iget-boolean v0, v0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-static {v0, p3}, Lcn/nubia/commonui/widget/DatePickerView;->access$102(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustDayDisplayerValues()V

    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->access$102(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustMaxDay()V

    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->a:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    goto :goto_0
.end method
