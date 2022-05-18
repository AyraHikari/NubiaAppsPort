.class Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;
.super Ljava/lang/Object;
.source "SnoozePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/SnoozePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnoozePickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;->this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;Lcn/nubia/deskclock/ui/SnoozePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;-><init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;->this$0:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->access$300(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V

    .line 144
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    return-void
.end method
