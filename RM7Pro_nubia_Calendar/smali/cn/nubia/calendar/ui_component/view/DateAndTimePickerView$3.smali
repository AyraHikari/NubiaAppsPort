.class Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$3;
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
    .line 152
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$3;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/calendar/ui_component/view/WheelView;II)V
    .locals 1
    .param p1, "wheelView"    # Lcn/nubia/calendar/ui_component/view/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$3;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$1100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 157
    return-void
.end method
