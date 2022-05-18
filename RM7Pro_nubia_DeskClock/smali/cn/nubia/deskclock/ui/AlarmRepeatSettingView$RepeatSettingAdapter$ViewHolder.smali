.class Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlarmRepeatSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/RadioButton;

.field mDataWarning:Landroid/widget/TextView;

.field mRepeatOptions:Landroid/widget/TextView;

.field final synthetic this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    .prologue
    .line 544
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
