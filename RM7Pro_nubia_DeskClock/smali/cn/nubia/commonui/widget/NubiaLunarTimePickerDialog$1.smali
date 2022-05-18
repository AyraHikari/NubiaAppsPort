.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 158
    return-void
.end method
