.class Lcn/nubia/commonui/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/preference/ListPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/preference/ListPreference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference$1;->a:Lcn/nubia/commonui/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference$1;->a:Lcn/nubia/commonui/preference/ListPreference;

    invoke-static {v0, p2}, Lcn/nubia/commonui/preference/ListPreference;->access$002(Lcn/nubia/commonui/preference/ListPreference;I)I

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference$1;->a:Lcn/nubia/commonui/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    return-void
.end method
