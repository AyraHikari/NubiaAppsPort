.class Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;
.super Ljava/lang/Object;
.source "AlarmRepeatSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->createWeekSelectDialog()Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 190
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 193
    move-object v1, p1

    check-cast v1, Lcn/nubia/commonui/app/AlertDialog;

    .line 194
    .local v1, "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    const v3, 0x7f12016b

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 195
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    .line 196
    .local v0, "adapter":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->getSelectedDayIndex()[Z

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$002(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;[Z)[Z

    .line 197
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    .line 198
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$200(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    .line 200
    return-void
.end method
