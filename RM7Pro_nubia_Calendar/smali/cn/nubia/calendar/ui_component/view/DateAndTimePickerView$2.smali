.class Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;
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
    .line 136
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/calendar/ui_component/view/WheelView;II)V
    .locals 2
    .param p1, "wheelView"    # Lcn/nubia/calendar/ui_component/view/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$800(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    const/16 v0, 0xc

    if-le p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$902(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;Z)Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$1000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;->this$0:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->access$1100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 145
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
