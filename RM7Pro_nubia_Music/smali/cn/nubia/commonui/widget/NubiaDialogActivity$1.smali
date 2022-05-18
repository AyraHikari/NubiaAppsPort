.class Lcn/nubia/commonui/widget/NubiaDialogActivity$1;
.super Ljava/lang/Object;
.source "NubiaDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaDialogActivity;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaDialogActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$1;->a:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$1;->a:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->access$000(Lcn/nubia/commonui/widget/NubiaDialogActivity;)Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity$1;->a:Lcn/nubia/commonui/widget/NubiaDialogActivity;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->access$000(Lcn/nubia/commonui/widget/NubiaDialogActivity;)Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;->OnNegativeButtonClick()V

    .line 60
    :cond_0
    return-void
.end method
