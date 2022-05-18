.class Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/CheckBoxPreference;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/v7/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;->this$0:Lcn/nubia/commonui/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/v7/preference/CheckBoxPreference;Lcn/nubia/commonui/v7/preference/CheckBoxPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/v7/preference/CheckBoxPreference;
    .param p2, "x1"    # Lcn/nubia/commonui/v7/preference/CheckBoxPreference$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;-><init>(Lcn/nubia/commonui/v7/preference/CheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;->this$0:Lcn/nubia/commonui/v7/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 55
    :goto_1
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;->this$0:Lcn/nubia/commonui/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
