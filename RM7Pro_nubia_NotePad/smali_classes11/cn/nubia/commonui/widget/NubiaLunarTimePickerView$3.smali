.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$3;
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
    .line 158
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$3;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

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
    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$3;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V

    .line 163
    return-void
.end method
