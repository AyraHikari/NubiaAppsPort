.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;
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
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    const/16 v0, 0xc

    if-le p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;Z)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V

    .line 149
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
