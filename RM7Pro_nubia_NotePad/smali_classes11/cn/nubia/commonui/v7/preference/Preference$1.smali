.class Lcn/nubia/commonui/v7/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 169
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference$1;->this$0:Lcn/nubia/commonui/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference$1;->this$0:Lcn/nubia/commonui/v7/preference/Preference;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->performClick(Landroid/view/View;)V

    .line 173
    return-void
.end method
