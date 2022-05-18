.class Lcn/nubia/commonui/widget/DatePickerView$3;
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
    .line 168
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerView$3;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 1
    .param p1, "wheelView"    # Lcn/nubia/commonui/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$3;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-static {v0, p3}, Lcn/nubia/commonui/widget/DatePickerView;->access$202(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 174
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$3;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 175
    return-void
.end method
