.class public Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "MinuteAndSecondPickerDialog.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$OnMinuteAndSecondChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MinuteAndSecondPickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMinuteAndSecondChanged(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;III)V
    .locals 3
    .param p1, "view"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    .line 120
    add-int v0, p2, p3

    add-int/2addr v0, p4

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$100(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$100(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$200(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$100(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$100(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$200(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
