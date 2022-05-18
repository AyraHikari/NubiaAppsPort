.class Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 107
    if-eqz p3, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$000(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$200(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 109
    invoke-static {v3}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$002(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$000(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$200(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 112
    invoke-static {v3}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->access$002(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    goto :goto_0
.end method
