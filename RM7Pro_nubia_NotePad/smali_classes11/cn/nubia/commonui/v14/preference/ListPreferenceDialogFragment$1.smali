.class Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;->access$002(Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;I)I

    .line 91
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 94
    return-void
.end method
