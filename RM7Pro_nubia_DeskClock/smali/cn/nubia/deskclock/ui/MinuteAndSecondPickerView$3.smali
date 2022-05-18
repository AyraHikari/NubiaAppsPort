.class Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$3;
.super Ljava/lang/Object;
.source "MinuteAndSecondPickerView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$3;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

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
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$3;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->access$000(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V

    .line 88
    return-void
.end method
