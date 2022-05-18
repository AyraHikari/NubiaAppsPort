.class Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;
.super Ljava/lang/Object;
.source "MinuteAndSecondPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteAndSecondPickerOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnClickListener;->this$0:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->access$300(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;)V

    .line 140
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    return-void
.end method
