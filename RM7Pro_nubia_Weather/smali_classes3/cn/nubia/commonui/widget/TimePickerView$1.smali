.class Lcn/nubia/commonui/widget/TimePickerView$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/TimePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/TimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerView$1;->this$0:Lcn/nubia/commonui/widget/TimePickerView;

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
    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView$1;->this$0:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/TimePickerView;->access$000(Lcn/nubia/commonui/widget/TimePickerView;)V

    .line 75
    return-void
.end method
