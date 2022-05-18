.class Lcn/nubia/music/activity/SettingActivity$c;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/music/activity/SettingActivity$c;->a:Lcn/nubia/music/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/SettingActivity;Lcn/nubia/music/activity/SettingActivity$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/SettingActivity$c;-><init>(Lcn/nubia/music/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnItemClickListener postion is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnItemClickListener Map postion is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/music/activity/SettingActivity;->access$100()[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 71
    const v0, 0x7f1000d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 72
    invoke-static {}, Lcn/nubia/music/activity/SettingActivity;->access$100()[I

    move-result-object v1

    aget v1, v1, p3

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 74
    :pswitch_0
    const-string v1, "time_filter"

    invoke-static {v2, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 76
    const-string v0, "time_filter"

    invoke-static {v2, v0, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 79
    const-string v0, "time_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v1, "size_filter"

    invoke-static {v2, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 84
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 85
    const-string v0, "size_filter"

    invoke-static {v2, v0, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 88
    const-string v0, "size_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v1, "type_filter"

    invoke-static {v2, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 93
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 94
    const-string v0, "type_filter"

    invoke-static {v2, v0, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 97
    const-string v0, "type_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
