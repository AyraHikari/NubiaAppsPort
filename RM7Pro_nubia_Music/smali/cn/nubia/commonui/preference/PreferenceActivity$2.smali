.class Lcn/nubia/commonui/preference/PreferenceActivity$2;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$2;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$2;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setResult(I)V

    .line 692
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$2;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->finish()V

    .line 693
    return-void
.end method
