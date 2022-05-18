.class Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    .prologue
    .line 100
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {v0, p2}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->access$002(Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;I)I

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    return-void
.end method
