.class Lcn/nubia/commonui/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    .prologue
    .line 188
    if-eqz p3, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$000(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v2}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$200(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v3}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$100(Lcn/nubia/commonui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$002(Lcn/nubia/commonui/preference/MultiSelectListPreference;Z)Z

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$000(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v2}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$200(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->a:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-static {v3}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$100(Lcn/nubia/commonui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$002(Lcn/nubia/commonui/preference/MultiSelectListPreference;Z)Z

    goto :goto_0
.end method
