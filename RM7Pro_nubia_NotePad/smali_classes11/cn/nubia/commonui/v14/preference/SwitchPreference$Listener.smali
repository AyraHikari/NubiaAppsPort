.class Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v14/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v14/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/v14/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;->this$0:Lcn/nubia/commonui/v14/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/v14/preference/SwitchPreference;Lcn/nubia/commonui/v14/preference/SwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/v14/preference/SwitchPreference;
    .param p2, "x1"    # Lcn/nubia/commonui/v14/preference/SwitchPreference$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;-><init>(Lcn/nubia/commonui/v14/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;->this$0:Lcn/nubia/commonui/v14/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 65
    :goto_1
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;->this$0:Lcn/nubia/commonui/v14/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
