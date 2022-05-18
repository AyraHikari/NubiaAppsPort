.class public Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "SnoozePickerDialog.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/SnoozePickerView$OnSnoozeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/SnoozePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnoozePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .prologue
    .line 127
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnoozeChanged(Lcn/nubia/deskclock/ui/SnoozePickerView;II)V
    .locals 2
    .param p1, "view"    # Lcn/nubia/deskclock/ui/SnoozePickerView;
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->access$200(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-static {v1, p2, p3}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->access$100(Lcn/nubia/deskclock/ui/SnoozePickerDialog;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
